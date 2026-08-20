inline.NumInlined: 6673
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE9next_implKb0_ECs7p2uQeJxui2_9deltalake:bb.a
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE9next_implKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameNtNtBZ_5value11HeaderValueEE9next_implKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [72 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1152 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRexEE9next_implKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtBL_6string6StringINtNtB31_4util11SharedValueINtNtBL_3vec3VecbEEEEEEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.c = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i: ; preds = %.lr.ph3
  %i.e = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val
  br i1 %i.f, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.8.val
  br i1 %i.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i, %bb.b
  %i.l = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.l, i64 noundef 128) #33
  resume { ptr, i32 } %i.g

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.m = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.m, i64 noundef 128) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtBL_6string6StringINtNtB31_4util11SharedValueINtNtBL_3vec3VecbEEEEEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtBL_6string6StringINtNtB31_4util11SharedValueINtNtBL_3vec3VecbEEEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #33
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #33
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #33
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake:bb.a
          cleanup
  br label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta8wrappers11HybridCacheECs7p2uQeJxui2_9deltalake.exit.i, %bb.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #33
  ret void

bb.v:                                             ; preds = %bb.u, %bb.q, %.body8.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %.pn6.i, %bb.q ], [ %.pn6.i, %.body8.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB1l_3cfg13DefaultConfigEEECs7p2uQeJxui2_9deltalake(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.020.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.020.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.020.i, 1            ; 4 uses
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !2970, !align !1674, !noundef !4 ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i = load i64, ptr %i.d, align 8, !alias.scope !2970 ; 6 uses
  %i.e = icmp eq ptr %.val8.i, null
  %i.f = icmp eq i64 %.val9.i, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.0.i.i.i.i.i.i19.i = phi i64 [ %i.h, %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %.lr.ph21.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %.val8.i, i64 %.sroa.0.0.i.i.i.i.i.i19.i ; 3 uses
  %i.h = add nuw i64 %.sroa.0.0.i.i.i.i.i.i19.i, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2979, !noalias !2970, !noundef !4 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2983, !noalias !2970, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !2983, !noalias !2970, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !2984
  %i.q = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = bitcast <16 x i1> %i.q to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.06.1.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.6.1.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i = phi i16 [ %i.s, %bb.c ], [ %i.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  %.not12.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.t = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !2987
  %i.v = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -512 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.v to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.y = add i16 %.lcssa.i.i.i.i.i, -1
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = and i16 %i.y, %.lcssa.i.i.i.i.i
  %i.ac = sub nsw i64 0, %i.aa
  %i.ad = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i, i64 %i.ac ; 2 uses
  %i.ae = add i64 %.sroa.108.014.i.i.i.i, -1      ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !2990 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 -8
  %.val5.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !2990, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.ah = load ptr, ptr %.val5.i.i.i.i, align 8, !invariant.load !4, !noalias !2990 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.ah(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2990

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !2017, !invariant.load !4, !noalias !2990 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i11.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i11.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !2223, !invariant.load !4, !noalias !2990
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #33, !noalias !2990
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !2017, !invariant.load !4, !noalias !2990 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body12.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i10.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i10.i: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !2223, !invariant.load !4, !noalias !2990
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #33, !noalias !2990
  br label %.body12.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i11.i, %bb.f
  %i.at = icmp eq i64 %i.ae, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.b
  %i.au = shl i64 %i.k, 5                         ; 2 uses
  %i.av = add i64 %i.au, 32                       ; 2 uses
  %i.aw = add i64 %i.k, 17
  %i.ax = add i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av
  %i.az = icmp ult i64 %i.ax, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ay)
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bb = load ptr, ptr %i.i, align 8, !alias.scope !2979, !noalias !2970, !nonnull !4, !noundef !4
  %i.bc = sub nuw nsw i64 -32, %i.au
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !2991
  br label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i

_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i
  %i.be = icmp eq i64 %i.h, %.val9.i
  br i1 %i.be, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, label %.lr.ph.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i: ; preds = %.lr.ph58
  %i.bf = add i64 %.sroa.0.1.i.i.i.i.i.i.i57, 1   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %.val9.i
  br i1 %i.bg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %.lr.ph58

.body12.i:                                        ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i10.i, %bb.g
  %i.bh = icmp eq i64 %i.h, %.val9.i
  br i1 %i.bh, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %.lr.ph58

.lr.ph58:                                         ; preds = %.body12.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i57 = phi i64 [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i ], [ %i.h, %.body12.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [96 x i8], ptr %.val8.i, i64 %.sroa.0.1.i.i.i.i.i.i.i57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i unwind label %bb.i, !noalias !2970

bb.i:                                             ; preds = %.lr.ph58
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !2992
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i, %.body12.i
  %i.bl = mul nuw nsw i64 %.val9.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bl, i64 noundef 8) #33, !noalias !2970
  %i.bm = icmp eq i64 %i.c, %.8.val
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i
  %i.bn = mul nuw nsw i64 %.val9.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bn, i64 noundef 8) #33, !noalias !2970
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %.lr.ph21.i
  %i.bo = icmp eq i64 %i.c, %.8.val
  br i1 %i.bo, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph21.i

.lr.ph:                                           ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.1.i11 = phi i64 [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit ], [ %i.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.1.i11 ; 2 uses
  %i.bq = add i64 %.sroa.0.1.i11, 1               ; 2 uses
  %.val.i = load ptr, ptr %i.bp, align 8, !alias.scope !2970, !align !1674, !noundef !4 ; 5 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %.val7.i = load i64, ptr %i.br, align 8, !alias.scope !2970 ; 7 uses
  %i.bs = icmp eq ptr %.val.i, null
  %cond = icmp eq i64 %.val7.i, 0
  %or.cond = select i1 %i.bs, i1 true, i1 %cond
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph60

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %.lr.ph60
  %i.bt = icmp eq i64 %i.bv, %.val7.i
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i59 = phi i64 [ %i.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i.i.i.i59
  %i.bv = add i64 %.sroa.0.0.i.i.i.i.i.i59, 1     ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i unwind label %bb.j, !noalias !2970

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i: ; preds = %.lr.ph63
  %i.bx = add i64 %.sroa.0.1.i.i.i.i.i.i61, 1     ; 2 uses
  %i.by = icmp eq i64 %i.bx, %.val7.i
  br i1 %i.by, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %.lr.ph63

bb.j:                                             ; preds = %.lr.ph60
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ca = icmp eq i64 %i.bv, %.val7.i
  br i1 %i.ca, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i61 = phi i64 [ %i.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i ], [ %i.bv, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i.i.i.i61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.cc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i unwind label %bb.k, !noalias !2970

bb.k:                                             ; preds = %.lr.ph63
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !2995
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i, %bb.j
  %i.ce = mul nuw nsw i64 %.val7.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ce, i64 noundef 8) #33, !noalias !2970
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !2970
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %0 = icmp eq i64 %.val7.i, 0
  br i1 %0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.cf = mul nuw nsw i64 %.val7.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cf, i64 noundef 8) #33, !noalias !2970
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i
  %i.cg = icmp eq i64 %i.bq, %.8.val
  br i1 %i.cg, label %._crit_edge, label %.lr.ph

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i
  %i.ch = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.ch, i64 noundef 8) #33
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4
  ret void

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i
  %i.ci = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.ci, i64 noundef 8) #33
  resume { ptr, i32 } %i.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2006, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #37
          to label %.body2 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body2 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

.body2:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit6 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body2, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body2, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !2998 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !3001, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val1.i, 3                      ; 2 uses
  %i.e = add i64 %i.d, 8
  %i.f = add i64 %i.d, 23                         ; 2 uses
  %i.g = icmp uge i64 %i.f, %i.e
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.f, -16                        ; 3 uses
  %i.i = add i64 %.val1.i, 17
  %i.j = add i64 %i.i, %i.h                       ; 4 uses
  %i.k = icmp uge i64 %i.j, %i.h
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.n = sub nsw i64 0, %i.h
  %i.o = getelementptr inbounds i8, ptr %.val.i, i64 %i.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !3004
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs7p2uQeJxui2_9deltalake.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB45_5ErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake:bb.a
.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #37
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2M_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2M_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2M_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #37
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2J_3vec3VecbEEIB4Q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB45_TNtNtB2J_6string6StringB5b_EB5D_EENCNCNvNtNtNtNtB5H_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EINtCs3JXekYNd0JR_7dashmap7DashMapB7x_B5b_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.a, align 16, !alias.scope !3609 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !3609, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !3609 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.d, !noalias !3609

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !2017, !invariant.load !4, !noalias !3609 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !2223, !invariant.load !4, !noalias !3609
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33, !noalias !3609
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2017, !invariant.load !4, !noalias !3609 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !2223, !invariant.load !4, !noalias !3609
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33, !noalias !3609
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2l_3vec3VecbEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %0) #37
          to label %.body unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2l_3vec3VecbEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

bb.e:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2 = load ptr, ptr %i.q, align 16, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3 = load i64, ptr %i.r, align 8, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val2, i64 %.val3) #37
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.s, align 16, !nonnull !4, !noundef !4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1 = load i64, ptr %i.t, align 8, !noundef !4 ; 6 uses
  %cond = icmp eq i64 %.val1, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph
  %i.u = icmp eq i64 %i.w, %.val1
  br i1 %i.u, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.0.0.i.i.i6 = phi i64 [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.0.i.i.i6
  %i.w = add i64 %.sroa.0.0.i.i.i6, 1             ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i: ; preds = %.lr.ph8
  %i.y = add i64 %.sroa.0.1.i.i.i7, 1             ; 2 uses
  %i.z = icmp eq i64 %i.y, %.val1
  br i1 %i.z, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph8

bb.g:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.w, %.val1
  br i1 %i.ab, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i
  %.sroa.0.1.i.i.i7 = phi i64 [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.1.i.i.i7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph8
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i, %bb.g
  %i.af = shl nuw nsw i64 %.val1, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.af, i64 noundef 128) #33
  br label %common.resume

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.ag = shl nuw nsw i64 %.val1, 7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ag, i64 noundef 128) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  ret void

bb.i:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBN_6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4v_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EINtNtNtBP_6future5ready5ReadyIB46_uB57_EENCB5K_s0_0EEB5Q_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %i.o = load i64, ptr %0, align 8, !range !3612, !alias.scope !3613, !noundef !4
  %i.p = icmp ugt i64 %i.o, -9223372036854775791
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  %i.q = load i64, ptr %0, align 8, !range !3612, !alias.scope !3616, !noundef !4
  %i.r = icmp ugt i64 %i.q, -9223372036854775791
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream7collect7CollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3P_5ErrorENtNtB4_6marker4SendEL_EEINtNtB26_3vec3VecB3r_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !1674, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !2223, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2017, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !2223, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1B_5ErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #37
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1j_5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1B_5ErrorEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1q_5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1B_5ErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1q_5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify:bb.a

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.v)
          to label %bb.g unwind label %bb.b       ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  call void @llvm.experimental.noalias.scope.decl(metadata !10882)
  call void @llvm.experimental.noalias.scope.decl(metadata !10885)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !10888, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !10888
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  fence acquire
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !1921, !noalias !10889, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !1696

_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !range !3, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !1696

bb.b:                                             ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.k = tail call noundef i64 @_RINvMs6_NtCsdNqyU9N9qTX_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i.i)
  br label %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit

_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ -1, %_RNvYNCNKNvNtCsdNqyU9N9qTX_12sharded_slab3tid12REGISTRATION00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.o, align 8, !noundef !4
  %i.p = and i64 %1, 274877906943                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 32
  %i.r = lshr i64 %i.q, 6
  %i.s = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 false)
  %i.t = sub nuw nsw i64 64, %i.s                 ; 2 uses
  %.not.i = icmp ult i64 %i.t, %.val1
  br i1 %.not.i, label %bb.e, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.t ; 4 uses
  %i.w = lshr i64 %1, 51                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !4
  %i.aa = sub i64 %i.p, %i.z                      ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !noalias !10896, !align !1674, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !10896, !noundef !4
  %i.ae = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.aa ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8, !noalias !10896 ; 2 uses
  %i.ai = lshr i64 %i.ah, 51
  %i.aj = icmp eq i64 %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph23.i.i.i.i, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i:                                 ; preds = %bb.g
  %.cmp.i.i.i.i = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i = select i1 %.cmp.i.i.i.i, i64 1, i64 -8190
  %i.ak = add nsw i64 %.v.i.i.i.i, %i.w
  %i.al = shl nuw i64 %i.ak, 51
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %.lr.ph23.i.i.i.i
  %.sroa.02.020.i.i.i.i = phi i1 [ false, %.lr.ph23.i.i.i.i ], [ %.sroa.02.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ]
  %.sroa.06.019.i.i.i.i = phi i64 [ %i.ah, %.lr.ph23.i.i.i.i ], [ %.sroa.06.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.018.i.i.i.i = phi i64 [ 0, %.lr.ph23.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %i.am = and i64 %.sroa.06.019.i.i.i.i, 2251799813685247
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = cmpxchg ptr %i.ag, i64 %.sroa.06.019.i.i.i.i, i64 %i.an acq_rel acquire, align 8, !noalias !10896 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.i, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = and i64 %.sroa.01.0.i.i.i.i.i, 2251799813685244
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.af), !noalias !10896
  tail call void @_RINvXs_NtNtCsdNqyU9N9qTX_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.x, i64 noundef %i.aa, ptr noundef nonnull align 8 %i.af), !noalias !10896
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = trunc i64 %.sroa.0.018.i.i.i.i to i32
  %i.as = and i32 %i.ar, 31                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.as, 31
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.k
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = freeze i32 %i.at                        ; 3 uses
  %i.av = add i32 %i.au, -1
  %xtraiter = and i32 %i.au, 7                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, 7
  br i1 %i.aw, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i32 %i.au, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %lcmp.mod41 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !10902

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.k
  %i.ax = icmp ugt i64 %.sroa.0.018.i.i.i.i, 7
  br i1 %i.ax, label %bb.m, label %bb.l

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  tail call void @llvm.x86.sse2.pause(), !noalias !10899
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.018.i.i.i.i, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !10899
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.h
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.sroa.0.018.i.i.i.i, %bb.m ], [ %i.ay, %bb.l ]
  %.sroa.06.1.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %bb.h ], [ %.sroa.06.019.i.i.i.i, %bb.m ], [ %.sroa.06.019.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.02.1.i.i.i.i = phi i1 [ %.sroa.02.020.i.i.i.i, %bb.h ], [ true, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.az = lshr i64 %.sroa.06.1.i.i.i.i, 51
  %i.ba = icmp eq i64 %i.w, %i.az
  %or.cond.not.i.i.i.i = or i1 %.sroa.02.1.i.i.i.i, %i.ba
  br i1 %or.cond.not.i.i.i.i, label %bb.h, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %_RNvMs_NtCsdNqyU9N9qTX_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10904)
  %i.bb = and i64 %1, 274877906943                ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 32
  %i.bd = lshr i64 %i.bc, 6
  %i.be = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = sub nuw nsw i64 64, %i.be               ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !10904, !noundef !4
  %.not.i3 = icmp ult i64 %i.bf, %i.bh
  br i1 %.not.i3, label %bb.o, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !10904, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %i.bl = lshr i64 %1, 51                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10907)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !10910, !noundef !4 ; 2 uses
  %i.bo = icmp ult i64 %i.bf, %i.bn
  br i1 %i.bo, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %i.bf, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !10910
  unreachable

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.o
  %i.bp = load ptr, ptr %0, align 8, !alias.scope !10910, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bf ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !noalias !10904, !noundef !4
  %i.bt = sub i64 %i.bb, %i.bs                    ; 3 uses
  %i.bu = load ptr, ptr %i.bk, align 8, !noalias !10911, !align !1674, !noundef !4 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !10911, !noundef !4
  %i.bx = icmp ult i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.r, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %i.bu, i64 %i.bt ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !10911 ; 2 uses
  %i.cb = lshr i64 %i.ca, 51
  %i.cc = icmp eq i64 %i.bl, %i.cb
  br i1 %i.cc, label %.lr.ph23.i.i.i.i6, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

.lr.ph23.i.i.i.i6:                                ; preds = %bb.r
  %.cmp.i.i.i.i7 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i8 = select i1 %.cmp.i.i.i.i7, i64 1, i64 -8190
  %i.cd = add nsw i64 %.v.i.i.i.i8, %i.bl
  %i.ce = shl nuw i64 %i.cd, 51
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %.lr.ph23.i.i.i.i6
  %.sroa.02.020.i.i.i.i9 = phi i1 [ false, %.lr.ph23.i.i.i.i6 ], [ %.sroa.02.1.i.i.i.i17, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ]
  %.sroa.06.019.i.i.i.i10 = phi i64 [ %i.ca, %.lr.ph23.i.i.i.i6 ], [ %.sroa.06.1.i.i.i.i16, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %.sroa.0.018.i.i.i.i11 = phi i64 [ 0, %.lr.ph23.i.i.i.i6 ], [ %.sroa.0.1.i.i.i.i15, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14 ] ; 4 uses
  %i.cf = and i64 %.sroa.06.019.i.i.i.i10, 2251799813685247
  %i.cg = or disjoint i64 %i.cf, %i.ce
  %i.ch = cmpxchg ptr %i.bz, i64 %.sroa.06.019.i.i.i.i10, i64 %i.cg acq_rel acquire, align 8, !noalias !10911 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i12 = extractvalue { i64, i1 } %i.ch, 1
  %.sroa.01.0.i.i.i.i.i13 = extractvalue { i64, i1 } %i.ch, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i12, label %bb.t, label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

bb.t:                                             ; preds = %bb.s
  %i.ci = and i64 %.sroa.01.0.i.i.i.i.i13, 2251799813685244
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvXs6_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsdNqyU9N9qTX_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.by), !noalias !10911
  %i.ck = load i64, ptr %i.bq, align 8, !noalias !10911, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store i64 %i.ck, ptr %i.cl, align 8, !noalias !10911
  store i64 %i.bt, ptr %i.bq, align 8, !noalias !10911
  br label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = trunc i64 %.sroa.0.018.i.i.i.i11 to i32
  %i.cn = and i32 %i.cm, 31                       ; 2 uses
  %.not.i.i.i.i19 = icmp eq i32 %i.cn, 31
  br i1 %.not.i.i.i.i19, label %._crit_edge.i.i.i.i24, label %.lr.ph.preheader.i.i.i.i20

.lr.ph.preheader.i.i.i.i20:                       ; preds = %bb.v
  %i.co = shl nuw nsw i32 1, %i.cn
  %i.cp = freeze i32 %i.co                        ; 3 uses
  %i.cq = add i32 %i.cp, -1
  %xtraiter42 = and i32 %i.cp, 7                  ; 3 uses
  %i.cr = icmp ult i32 %i.cq, 7
  br i1 %i.cr, label %.lr.ph.i.i.i.i21.epil.preheader, label %.lr.ph.preheader.i.i.i.i20.new

.lr.ph.preheader.i.i.i.i20.new:                   ; preds = %.lr.ph.preheader.i.i.i.i20
  %unroll_iter46 = and i32 %i.cp, -8
  br label %.lr.ph.i.i.i.i21

._crit_edge.i.i.i.i24.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i21
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil.preheader

.lr.ph.i.i.i.i21.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i20
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i21.epil

.lr.ph.i.i.i.i21.epil:                            ; preds = %.lr.ph.i.i.i.i21.epil, %.lr.ph.i.i.i.i21.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i21.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i21.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i24, label %.lr.ph.i.i.i.i21.epil, !llvm.loop !10917

._crit_edge.i.i.i.i24:                            ; preds = %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, %.lr.ph.i.i.i.i21.epil, %bb.v
  %i.cs = icmp ugt i64 %.sroa.0.018.i.i.i.i11, 7
  br i1 %i.cs, label %bb.x, label %bb.w

.lr.ph.i.i.i.i21:                                 ; preds = %.lr.ph.i.i.i.i21, %.lr.ph.preheader.i.i.i.i20.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i20.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i21 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  tail call void @llvm.x86.sse2.pause(), !noalias !10914
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i24.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i21

bb.w:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.ct = add nuw nsw i64 %.sroa.0.018.i.i.i.i11, 1
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

bb.x:                                             ; preds = %._crit_edge.i.i.i.i24
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !10914
  br label %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14

_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14: ; preds = %bb.x, %bb.w, %bb.s
  %.sroa.0.1.i.i.i.i15 = phi i64 [ 0, %bb.s ], [ %.sroa.0.018.i.i.i.i11, %bb.x ], [ %i.ct, %bb.w ]
  %.sroa.06.1.i.i.i.i16 = phi i64 [ %.sroa.01.0.i.i.i.i.i13, %bb.s ], [ %.sroa.06.019.i.i.i.i10, %bb.x ], [ %.sroa.06.019.i.i.i.i10, %bb.w ] ; 2 uses
  %.sroa.02.1.i.i.i.i17 = phi i1 [ %.sroa.02.020.i.i.i.i9, %bb.s ], [ true, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.cu = lshr i64 %.sroa.06.1.i.i.i.i16, 51
  %i.cv = icmp eq i64 %i.bl, %i.cu
  %or.cond.not.i.i.i.i18 = or i1 %.sroa.02.1.i.i.i.i17, %i.cv
  br i1 %or.cond.not.i.i.i.i18, label %bb.s, label %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit

_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %_RNvNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i14, %bb.u, %bb.r, %bb.q, %_RNvMs0_NtCsdNqyU9N9qTX_12sharded_slab5shardINtB5_5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCs7p2uQeJxui2_9deltalake.exit.i, %bb.n, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !10918)
  %i.c = load i64, ptr %i.b, align 8, !range !3, !alias.scope !10918, !noalias !10921, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10923
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10918, !noalias !10921, !nonnull !4, !align !1674, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !1997, !alias.scope !10918, !noalias !10921, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !noalias !10923
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !10923
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #42
          to label %bb.d unwind label %bb.c, !noalias !10918

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.e, !noalias !10918

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10918
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !10918, !noalias !10921, !nonnull !4, !align !1674, !noundef !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !1997, !alias.scope !10918, !noalias !10921, !noundef !4 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10924)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10924, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !10924, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.x, %.noexc5 ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !10924, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.z = cmpxchg ptr %i.y, i64 0, i64 2 acq_rel acquire, align 8, !noalias !10924
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.z, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.f, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q) #40
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !10924, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !10924, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, i32 1 release, align 4, !noalias !10924
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %.noexc5

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ad)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ah = icmp eq ptr %i.x, %i.v
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.m, i8 %i.o) #37
          to label %common.resume unwind label %bb.o

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.ai = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %i.am, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = zext i1 %i.ao to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ap, %bb.i ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.aq seq_cst, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !1696

bb.l:                                             ; preds = %bb.k
  %i.av = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ar monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !10927)
  %i.d = load i64, ptr %i.c, align 8, !range !3, !alias.scope !10927, !noalias !10930, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs7p2uQeJxui2_9deltalake:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc24.8 unwind label %.loopexit

.noexc24.8:                                       ; preds = %bb.bx
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.by

bb.by:                                            ; preds = %.noexc24.8
  store atomic i8 1, ptr %i.es monotonic, align 1, !noalias !11021
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8: ; preds = %bb.by, %.noexc24.8, %bb.bw, %bb.bv
  %i.ey = atomicrmw xchg ptr %.val.i16.8, i32 0 release, align 4, !noalias !11021
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8, !prof !1649

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.8)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fa = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.fb = icmp ult i64 %i.g, %i.fa
  br i1 %i.fb, label %bb.bz, label %bb.f

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8
  %i.fc = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.g
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fd)
          to label %bb.ca unwind label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fe = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.cb, label %bb.h

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11023)
  %.val.i16.9 = load ptr, ptr %i.i, align 8, !alias.scope !11023 ; 4 uses
  %.val3.i17.9 = load i8, ptr %i.j, align 8, !range !1921, !alias.scope !11023, !noundef !4 ; 2 uses
  %.not.i.i18.9 = icmp eq i8 %.val3.i17.9, 2
  br i1 %.not.i.i18.9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.9) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i16.9, i64 4
  %i.fh = trunc nuw i8 %.val3.i17.9 to i1
  br i1 %i.fh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fi = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11023
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.ce, !prof !1696

bb.ce:                                            ; preds = %bb.cd
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc24.9 unwind label %.loopexit

.noexc24.9:                                       ; preds = %bb.ce
  br i1 %i.fl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cf

bb.cf:                                            ; preds = %.noexc24.9
  store atomic i8 1, ptr %i.fg monotonic, align 1, !noalias !11023
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9: ; preds = %bb.cf, %.noexc24.9, %bb.cd, %bb.cc
  %i.fm = atomicrmw xchg ptr %.val.i16.9, i32 0 release, align 4, !noalias !11023
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9, !prof !1649

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.9: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.9)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.9, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake(ptr nonnull %1)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit

bb.cg:                                            ; preds = %.body, %bb.ch
  %.pn29 = phi { ptr, i32 } [ %i.v, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %.pn29

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.9, %bb.ce, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8, %bb.bx, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.7, %bb.bq, %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.6, %bb.bj, %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.5, %bb.bc, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.4, %bb.av, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.3, %bb.ao, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.2, %bb.ah, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.1, %bb.aa, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20, %bb.e, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %bb.c, %bb.f, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake(ptr nonnull %1) #37
          to label %bb.cg unwind label %bb.p
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsdNqyU9N9qTX_12sharded_slab4pageINtB5_6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE8allocateCs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [39 x i8], align 1          ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.g = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !2006, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = load i64, ptr %i.e, align 8, !noundef !4
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3J_3ops5range5RangejENvMs2_BW_BT_3newEE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1, i64 noundef %i.q)
          to label %bb.d unwind label %.body.thread22

.body.thread22:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.513.0..sroa_idx, i8 0, i64 25, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 274877906944, ptr %i.t, align 8
  store ptr @_RNvNvXs5_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCsbvkFyIu7lgC_4core7default7Default7default13NULL_METADATA, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, i64 39, i1 false)
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !11025, !noalias !11028, !noundef !4 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !2017, !alias.scope !11025, !noalias !11028, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBT_3cfg13DefaultConfigEE8grow_oneB1G_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.f, !noalias !11028

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.y)
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11028
  unreachable

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !11025, !noalias !11028, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !11025, !noalias !11028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ad = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11030
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.val.i = load ptr, ptr %0, align 8, !noalias !11030, !align !1674, !noundef !4 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val1.i = load i64, ptr %i.ag, align 8, !noalias !11030 ; 7 uses
  %i.ah = icmp eq ptr %.val.i, null
  %cond = icmp eq i64 %.val1.i, 0
  %or.cond = select i1 %i.ah, i1 true, i1 %cond
  br i1 %or.cond, label %bb.j, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.lr.ph
  %i.ai = icmp eq i64 %i.ak, %.val1.i
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i24 = phi i64 [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i.i24
  %i.ak = add i64 %.sroa.0.0.i.i.i.i24, 1         ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.h, !noalias !11030

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i: ; preds = %.lr.ph26
  %i.am = add i64 %.sroa.0.1.i.i.i.i25, 1         ; 2 uses
  %i.an = icmp eq i64 %i.am, %.val1.i
  br i1 %i.an, label %.body.thread19, label %.lr.ph26

bb.h:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq i64 %i.ak, %.val1.i
  br i1 %i.ap, label %.body.thread19, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i25 = phi i64 [ %i.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i.i25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i unwind label %bb.i, !noalias !11030

bb.i:                                             ; preds = %.lr.ph26
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11033
  unreachable

.body.thread19:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i, %bb.h
  %i.at = mul nuw nsw i64 %.val1.i, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.at, i64 noundef 8) #33, !noalias !11030
  store ptr %i.ae, ptr %0, align 8, !noalias !11030
  store i64 %i.af, ptr %i.ag, align 8, !noalias !11030
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %1 = icmp eq i64 %.val1.i, 0
  br i1 %1, label %bb.j, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.au = mul nuw nsw i64 %.val1.i, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.au, i64 noundef 8) #33, !noalias !11030
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.noexc
  store ptr %i.ae, ptr %0, align 8, !noalias !11030
  store i64 %i.af, ptr %i.ag, align 8, !noalias !11030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %.body.thread19, %.body.thread
  %eh.lpad-body17 = phi { ptr, i32 } [ %eh.lpad-body18, %.body.thread ], [ %i.ao, %.body.thread19 ]
  resume { ptr, i32 } %eh.lpad-body17

.body.thread:                                     ; preds = %bb.f, %.body.thread22
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.r, %.body.thread22 ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtB1k_3cfg13DefaultConfigEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %bb.k unwind label %bb.l

bb.l:                                             ; preds = %.body.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs7p2uQeJxui2_9deltalake.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx18, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %3, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.j, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !11036, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 138
  %i.o = load i8, ptr %i.n, align 2, !range !602, !noalias !11036, !noundef !4
  %cond.i = icmp eq i8 %i.o, 2
  br i1 %cond.i, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs7p2uQeJxui2_9deltalake.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !noalias !11040 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !range !3, !noalias !11040, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.a, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

bb.a:                                             ; preds = %._crit_edge.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !11040
  %i.v = icmp ult i64 %3, %i.u
  br i1 %i.v, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.x = load i32, ptr %i.w, align 4, !noalias !11040, !noundef !4
  %i.y = and i32 %i.x, 1
  %.not8.i.i = icmp eq i32 %i.y, 0
  br i1 %.not8.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !noalias !11040, !noundef !4
  %i.ab = and i32 %i.aa, 2
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !3, !noalias !11040, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !11040
  %i.ai = icmp ugt i64 %3, %i.ah
  br i1 %i.ai, label %.thread, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i: ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.d, %bb.c, %bb.b, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @211)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 2 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !11044 ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread, label %bb.e, !prof !1696

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val9, i64 noundef %i.aj, i64 noundef %i.al)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.p

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread: ; preds = %.noexc
  store atomic i64 1, ptr %i.ak release, align 8, !noalias !11044
  %i.an = inttoptr i64 %i.aj to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val9, ptr %i.ao, align 8, !noalias !11036
  store i64 1, ptr %i.b, align 8, !noalias !11036
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !11036
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.aq, align 8, !noalias !11036
  %i.ar = load ptr, ptr %i.k, align 8, !noalias !11036, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !noalias !11036, !nonnull !4, !align !1674, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !2223, !invariant.load !4, !noalias !11036
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = and i64 %i.aw, -16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.f

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !range !3, !noalias !11036
  %i.ba = trunc nuw i64 %.pre to i1
  %i.bb = load ptr, ptr %i.k, align 8, !noalias !11036, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !11036, !nonnull !4, !align !1674, !noundef !4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !2223, !invariant.load !4, !noalias !11036
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = and i64 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bk = phi ptr [ %i.az, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bj, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bl = phi ptr [ %i.at, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bd, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !11036, !nonnull !4, !align !1674, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !11036, !nonnull !4, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = phi ptr [ %i.bk, %bb.f ], [ %i.bj, %bb.g ]
  %i.bs = phi ptr [ %i.bl, %bb.f ], [ %i.bd, %bb.g ]
  %i.bt = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.01.0.i = phi ptr [ %i.bo, %bb.f ], [ %i.bq, %bb.g ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !11036, !nonnull !4
  %i.bw = invoke { i32, i32 } %i.bv(ptr noundef nonnull %i.br, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 %i.g, i64 noundef range(i64 0, 1152921504606846976) %i.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !11036 ; 5 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11036 ; 4 uses
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !11036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11036
  %i.bx = ptrtoint ptr %.sroa.2.0.copyload.i to i64 ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.a, align 8, !noalias !11047
  %i.by = icmp eq ptr %.sroa.2.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.by, label %.noexc10.i, label %.noexc11.i, !prof !1649

bb.k:                                             ; preds = %bb.i
  %i.bz = trunc nuw i8 %.sroa.46.0.copyload.i to i1
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i) #40
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.2.0.copyload.i)
end_hunk_4
begin_hunk_5_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14insert_no_growCs7p2uQeJxui2_9deltalake:bb.a
._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !11057
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1679

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 64, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !4
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11060 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !11060, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11063)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.033.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02832.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.033.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.033.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !11063, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !11063, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !11063 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.033.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.033.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !11063, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02832.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02832.i, %.sroa.0.02832.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11065

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !11063
  %i.aw = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.033.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6) ; 2 uses
  %i.az = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter92 = and i32 %i.az, 5                  ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %i.az, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11066

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11063 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !11063, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.033.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.033.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11063
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bj, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6) ; 2 uses
  %i.bk = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter98 = and i32 %i.bk, 5                  ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %i.bk, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11067

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !10802, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !11063
  %i.bo = add i64 %.sroa.02.033.i, 1              ; 2 uses
  store i64 %i.bo, ptr %i.j, align 8, !alias.scope !11063
  %.sroa.018.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.018.0.copyload35, ptr %i.bp, align 8, !noalias !11068
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx36, i64 16, i1 false)
  store atomic i64 %i.bo, ptr %i.ah release, align 8, !noalias !11071
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #40
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11073
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !1921, !noalias !11076, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !1696

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !1649

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11073
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11073
  store ptr %i.g, ptr %i.c, align 8, !noalias !11073
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !11073

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11083)
  call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  call void @llvm.experimental.noalias.scope.decl(metadata !11089)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !11092, !noalias !11073, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !11093
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.body.thread unwind label %bb.v, !noalias !11073

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11073
  call void @llvm.experimental.noalias.scope.decl(metadata !11094)
  call void @llvm.experimental.noalias.scope.decl(metadata !11097)
  call void @llvm.experimental.noalias.scope.decl(metadata !11100)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !11103, !noalias !11073, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !11104
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11073
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11073
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11073
  store ptr %i.bx, ptr %i.d, align 8, !noalias !11073
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !11073
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11073
  store ptr %i.g, ptr %i.b, align 8, !noalias !11073
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !11073

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11073
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !11073
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !11105
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11073
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !11114
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %.body.thread unwind label %bb.v, !noalias !11073

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc10
  invoke fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs0_0Cs7p2uQeJxui2_9deltalake(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread30.loopexit.split-lp

bb.ac:                                            ; preds = %bb.n
  %i.cq = extractvalue { i64, i32 } %i.bs, 0      ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %i.br
  br i1 %i.cr, label %.split, label %bb.ad

.split:                                           ; preds = %bb.ac
  %i.cs = extractvalue { i64, i32 } %i.bs, 1      ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 1000000000
  call void @llvm.assume(i1 %i.ct)
  %.not44 = icmp samesign ult i32 %i.cs, %i.bn
  br i1 %.not44, label %bb.o, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not43 = icmp slt i64 %i.cq, %i.br
  br i1 %.not43, label %bb.o, label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11073
  %i.cu = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11121 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.af

bb.aj:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body29

.body.thread:                                     ; preds = %.body.thread30.loopexit, %.body.thread30.loopexit.split-lp, %bb.ab, %bb.aa, %bb.s, %bb.r
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.cn, %bb.ab ], [ %i.bz, %bb.r ], [ %i.cn, %bb.aa ], [ %i.bz, %bb.s ], [ %lpad.loopexit, %.body.thread30.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread30.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %2) #37
          to label %bb.aj unwind label %bb.ak

bb.ak:                                            ; preds = %.body.thread
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE13with_capacityCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ], !prof !11123

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @216, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.b = lshr i64 -1, %i.a
  %i.c = add i64 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i64 [ %i.c, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.sroa.04.0, 1
  %i.e = tail call { ptr, i64 } @_RINvXsb_NtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECs7p2uQeJxui2_9deltalake(i64 noundef 0, i64 noundef %1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i64 0, ptr %0, align 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.g, ptr %i.j, align 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %1, ptr %i.k, align 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %.sroa.04.0, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.n, align 128
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %.sroa.37.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.o, align 64
  %.sroa.06.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx26, align 4
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16
  %.sroa.37.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 1, ptr %.sroa.37.0..sroa_idx8, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !4
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !noundef !4 ; 2 uses
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  %.pre = load i64, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128
  %i.k = xor i64 %i.i, -1
  %i.l = and i64 %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i ] ; 12 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i ] ; 5 uses
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %.sroa.0.0.i, %i.r               ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !noundef !4
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.0.0.i, %i.u
  %i.w = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.x = load i64, ptr %i.o, align 32, !noundef !4
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ad, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1
  %i.af = load i64, ptr %i.p, align 128, !noundef !4
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.ai, 7                    ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11124

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.l ], [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.07.i, %bb.o ], [ %.sroa.0.07.i, %bb.p ], [ %.sroa.0.07.i, %bb.q ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.l ], [ %.sroa.05.0.i, %bb.m ], [ %.sroa.05.0.i, %bb.n ], [ %.sroa.05.0.i, %bb.o ], [ %.sroa.05.0.i, %bb.p ], [ %.sroa.05.0.i, %bb.q ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = add i64 %i.al, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.j ], [ %i.aa, %bb.f ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  %i.ao = load i64, ptr %i.an, align 8, !range !2292, !alias.scope !11125, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  switch i64 %i.ao, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !11134, !nonnull !4, !noundef !4
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !11134
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  %i.at = load ptr, ptr %i.ap, align 8, !alias.scope !11141, !nonnull !4, !noundef !4
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !11141
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.p:                                             ; preds = %bb.k
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.q:                                             ; preds = %bb.k
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11142)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !11142 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !11142, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !11142, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !11142, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !11142 ; 3 uses
  %i.ag = add i64 %i.u, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ai = icmp eq i64 %i.af, %i.u
  br i1 %i.ai, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = add nuw i64 %i.x, 1
  %i.ak = load i64, ptr %i.r, align 128, !noalias !11142, !noundef !4
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.am = icmp ult i32 %.sroa.0.028.i, 7
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11142
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.an = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i ; 2 uses
  %xtraiter = and i32 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod62 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11145

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ap = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aq = load atomic i64, ptr %i.q monotonic, align 128, !noalias !11142 ; 2 uses
  %i.ar = load i64, ptr %i.m, align 16, !noalias !11142, !noundef !4 ; 2 uses
  %i.as = xor i64 %i.ar, -1
  %i.at = and i64 %i.aq, %i.as
  %i.au = icmp eq i64 %i.at, %i.u
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %i.av = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter63 = and i32 %i.av, 5                  ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter67 = and i32 %i.av, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod65.not = icmp eq i32 %xtraiter63, 0
  br i1 %lcmp.mod65.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod66 = icmp ne i32 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter64 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter64.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter64.next = add i32 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i32 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11146

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter68 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter68.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter68.next.7 = add i32 %niter68, 8           ; 2 uses
  %niter68.ncmp.7 = icmp eq i32 %niter68.next.7, %unroll_iter67
  br i1 %niter68.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.ar, %i.aq
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.af, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11142
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bc, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %i.bd = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter69 = and i32 %i.bd, 5                  ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter73 = and i32 %i.bd, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11147

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !10802, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !11142
  %i.bh = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.bi = add i64 %i.bh, %i.u                     ; 2 uses
  store i64 %i.bi, ptr %i.l, align 8, !alias.scope !11142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !11148
  store atomic i64 %i.bi, ptr %i.ae release, align 8, !noalias !11148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !11148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit unwind label %bb.o, !noalias !11148

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %common.resume unwind label %bb.p, !noalias !11148

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11148
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11148
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, 4
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11151
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !1921, !noalias !11154, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !1696

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !11151 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !1649

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11151
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !11151 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11151
  store ptr %i.i, ptr %i.c, align 8, !noalias !11151
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !11151

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11161)
  call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  call void @llvm.experimental.noalias.scope.decl(metadata !11167)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !11170, !noalias !11151, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !11171
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %common.resume unwind label %bb.x, !noalias !11151

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11151
  call void @llvm.experimental.noalias.scope.decl(metadata !11172)
  call void @llvm.experimental.noalias.scope.decl(metadata !11175)
  call void @llvm.experimental.noalias.scope.decl(metadata !11178)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !11181, !noalias !11151, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !11182
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38, !noalias !11151
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11151
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11151
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11151
  store ptr %i.bw, ptr %i.d, align 8, !noalias !11151
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !11151
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11151
  store ptr %i.i, ptr %i.b, align 8, !noalias !11151
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !11151

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11151
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !11151
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !11183
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #38, !noalias !11151
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11151
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !11192
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %common.resume unwind label %bb.x, !noalias !11151

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs0_0Cs7p2uQeJxui2_9deltalake(ptr nonnull %i.f), !noalias !11151
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11151
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake:bb.a
  %storemerge = phi i64 [ 4, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ 4, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE13with_capacityCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ], !prof !11123

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @216, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.b = lshr i64 -1, %i.a
  %i.c = add i64 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i64 [ %i.c, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.sroa.04.0, 1
  %i.e = tail call { ptr, i64 } @_RINvXsb_NtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5array4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2K_8adapters3map3MapINtNtNtB2M_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECs7p2uQeJxui2_9deltalake(i64 noundef 0, i64 noundef %1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i64 0, ptr %0, align 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.g, ptr %i.j, align 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %1, ptr %i.k, align 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %.sroa.04.0, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.n, align 128
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %.sroa.37.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.o, align 64
  %.sroa.06.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx26, align 4
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16
  %.sroa.37.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 1, ptr %.sroa.37.0..sroa_idx8, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !4
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !noundef !4 ; 2 uses
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  %.pre = load i64, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128
  %i.k = xor i64 %i.i, -1
  %i.l = and i64 %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.j ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.j ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.j ] ; 5 uses
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %.sroa.0.0.i, %i.r               ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !noundef !4
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.0.0.i, %i.u
  %i.w = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.x = load i64, ptr %i.o, align 32, !noundef !4
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [368 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 352
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = add i64 %.sroa.0.0.i, 1
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ae, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = add nuw i64 %i.s, 1
  %i.ag = load i64, ptr %i.p, align 128, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11199

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 16              ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 6 uses
  %.sroa.64 = alloca [344 x i8], align 8          ; 5 uses
  %i.c = load atomic i64, ptr %1 monotonic, align 128, !noalias !11200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.0.028.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %.sroa.02.0.i = phi i64 [ %i.c, %bb.a ], [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 7 uses
  %i.j = load i64, ptr %i.d, align 16, !noalias !11200, !noundef !4
  %i.k = add i64 %i.j, -1
  %i.l = and i64 %i.k, %.sroa.02.0.i              ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.n = sub i64 0, %i.m
  %i.o = and i64 %.sroa.02.0.i, %i.n
  %i.p = load ptr, ptr %i.f, align 8, !noalias !11200, !nonnull !4, !noundef !4
  %i.q = load i64, ptr %i.g, align 32, !noalias !11200, !noundef !4
  %i.r = icmp ult i64 %i.l, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [368 x i8], ptr %i.p, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !11200 ; 3 uses
  %i.v = add i64 %.sroa.02.0.i, 1
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.u, %.sroa.02.0.i
  br i1 %i.x, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = add nuw i64 %i.l, 1
  %i.z = load i64, ptr %i.i, align 128, !noalias !11200, !noundef !4
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ult i32 %.sroa.0.028.i, 7
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11200
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ac = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i ; 2 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ac, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11203

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ae = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.af = load atomic i64, ptr %i.h monotonic, align 128, !noalias !11200 ; 2 uses
  %i.ag = load i64, ptr %i.d, align 16, !noalias !11200, !noundef !4 ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = and i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, %.sroa.02.0.i
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %i.ak = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter39 = and i32 %i.ak, 5                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.al, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter43 = and i32 %i.ak, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod41.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod42 = icmp ne i32 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter40 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter40.next, %.lr.ph.i12.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter40.next = add i32 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i32 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11204

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.am = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter44 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter44.next.7, %.lr.ph.i12.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter44.next.7 = add i32 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i32 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.an = and i64 %i.ag, %i.af
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.ae, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.av, %._crit_edge.loopexit.i20.i ], [ %i.am, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.ap = load atomic i64, ptr %1 monotonic, align 128, !noalias !11200
  br label %bb.b

bb.k:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.ar = add i64 %i.aq, %i.o
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ar, %bb.k ], [ %i.u, %bb.d ]
  %i.as = cmpxchg weak ptr %1, i64 %.sroa.02.0.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11200
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %i.at = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter45 = and i32 %i.at, 5                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.au, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter49 = and i32 %i.at, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i17.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11205

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.av = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i17.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aw, align 8
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.r

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.ay = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.az = add i64 %i.ay, %.sroa.02.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.a, ptr noundef nonnull align 16 dereferenceable(352) %i.s, i64 352, i1 false), !noalias !11206
  store atomic i64 %i.az, ptr %i.ax release, align 8, !noalias !11206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.b, ptr noundef nonnull align 16 dereferenceable(352) %i.a, i64 352, i1 false), !noalias !11206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ba)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit unwind label %bb.o, !noalias !11206

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.b) #37
          to label %bb.q unwind label %bb.p, !noalias !11206

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11206
  unreachable

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.bb

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.sroa.02.0.copyload3 = load i64, ptr %i.b, align 16 ; 2 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64.0..sroa_idx5, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11206
  %i.bd = icmp eq i64 %.sroa.02.0.copyload3, -9223372036854775808
  br i1 %i.bd, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.u, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit
  ret void

bb.s:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, i64 344, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.02.0.copyload3.sink = phi i64 [ %.sroa.02.0.copyload3, %bb.t ], [ -9223372036854775808, %bb.s ]
  store i64 %.sroa.02.0.copyload3.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 225) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !11209
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !1678

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !11209
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !1679

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !1696

bb.h:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !4
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

end_hunk_7
