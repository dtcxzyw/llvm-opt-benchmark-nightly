Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.05?download=true
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
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
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
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
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
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
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
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
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
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !11
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
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !11
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
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !11
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
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake:bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid5regex5CacheECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(352) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta8wrappers11HybridCacheECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.r

.body8.i:                                         ; preds = %bb.r, %bb.o, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body.i ], [ %i.y, %bb.r ], [ %i.r, %bb.o ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 704 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !12, !alias.scope !3027, !noundef !11
  %i.x = icmp eq i64 %i.w, 2
  br i1 %i.x, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.body8.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.v)
          to label %bb.v unwind label %bb.t

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid5regex5CacheECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta8wrappers11HybridCacheECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid5regex5CacheECs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta8wrappers12OnePassCacheECs7p2uQeJxui2_9deltalake.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 704 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !alias.scope !3028, !noundef !11
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta8wrappers11HybridCacheECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa5CacheECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs7p2uQeJxui2_9deltalake.exit unwind label %bb.u

bb.t:                                             ; preds = %bb.q, %.body.i, %bb.g, %bb.d, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxSINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit5, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.020.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.020.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.020.i, 1            ; 4 uses
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !3045, !align !15, !noundef !11 ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i = load i64, ptr %i.d, align 8, !alias.scope !3045 ; 6 uses
  %i.e = icmp eq ptr %.val8.i, null
  %i.f = icmp eq i64 %.val9.i, 0
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.0.i.i.i.i.i.i19.i = phi i64 [ %i.h, %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %.lr.ph21.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %.val8.i, i64 %.sroa.0.0.i.i.i.i.i.i19.i ; 3 uses
  %i.h = add nuw i64 %.sroa.0.0.i.i.i.i.i.i19.i, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3048, !noalias !3045, !noundef !11 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3050, !noalias !3045, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2u_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !3050, !noalias !3045, !nonnull !11, !noundef !11 ; 3 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !3051
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
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !3052
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
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !3053 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 -8
  %.val5.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !3053, !nonnull !11, !align !15, !noundef !11 ; 5 uses
  %i.ah = load ptr, ptr %.val5.i.i.i.i, align 8, !invariant.load !11, !noalias !3053 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.ah(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !3053

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SyncNtB2e_4SendEL_EEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !31, !invariant.load !11, !noalias !3053 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i11.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i11.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !35, !invariant.load !11, !noalias !3053
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.am) #33, !noalias !3053
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBJ_3AnyNtNtB4_6marker4SyncNtB1K_4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !31, !invariant.load !11, !noalias !3053 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body12.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i10.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i10.i: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !35, !invariant.load !11, !noalias !3053
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #33, !noalias !3053
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
  %i.bb = load ptr, ptr %i.i, align 8, !alias.scope !3048, !noalias !3045, !nonnull !11, !noundef !11
  %i.bc = sub nuw nsw i64 -32, %i.au
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !3054
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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i unwind label %bb.i, !noalias !3045

bb.i:                                             ; preds = %.lr.ph58
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !3055
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i.i, %.body12.i
  %i.bl = mul nuw nsw i64 %.val9.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bl, i64 noundef 8) #33, !noalias !3045
  %i.bm = icmp eq i64 %i.c, %.8.val
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i
  %i.bn = mul nuw nsw i64 %.val9.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bn, i64 noundef 8) #33, !noalias !3045
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %.lr.ph21.i
  %i.bo = icmp eq i64 %i.c, %.8.val
  br i1 %i.bo, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph21.i

.lr.ph:                                           ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.1.i11 = phi i64 [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit ], [ %i.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.1.i11 ; 2 uses
  %i.bq = add i64 %.sroa.0.1.i11, 1               ; 2 uses
  %.val.i = load ptr, ptr %i.bp, align 8, !alias.scope !3045, !align !15, !noundef !11 ; 5 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %.val7.i = load i64, ptr %i.br, align 8, !alias.scope !3045 ; 7 uses
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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i unwind label %bb.j, !noalias !3045

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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i unwind label %bb.k, !noalias !3045

bb.k:                                             ; preds = %.lr.ph63
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !3056
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i.i, %bb.j
  %i.ce = mul nuw nsw i64 %.val7.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ce, i64 noundef 8) #33, !noalias !3045
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !3045
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %0 = icmp eq i64 %.val7.i, 0
  br i1 %0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdNqyU9N9qTX_12sharded_slab4page6SharedNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.cf = mul nuw nsw i64 %.val7.i, 96
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cf, i64 noundef 8) #33, !noalias !3045
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
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !11
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !3063 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !3064, !noundef !11 ; 3 uses
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !3065
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
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !align !15, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !11
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3670)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.a, align 16, !alias.scope !3670 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !3670, !nonnull !11, !align !15, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !11, !noalias !3670 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.d, !noalias !3670

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !31, !invariant.load !11, !noalias !3670 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !11, !noalias !3670
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33, !noalias !3670
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !31, !invariant.load !11, !noalias !3670 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !11, !noalias !3670
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33, !noalias !3670
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
  %.val2 = load ptr, ptr %i.q, align 16, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3 = load i64, ptr %i.r, align 8, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val2, i64 %.val3) #37
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream8and_then7AndThenINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2c_3vec3VecbEEIB4j_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB3y_TNtNtB2c_6string6StringB4E_EB56_EENCNCNvNtNtNtNtB5a_16delta_datafusion14table_provider4next4scan23replay_deletion_vectors00EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB11_3vec3VecbEEIB38_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.s, align 16, !nonnull !11, !noundef !11 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1 = load i64, ptr %i.t, align 8, !noundef !11 ; 6 uses
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
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !align !15, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #33
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %i.o = load i64, ptr %0, align 8, !range !48, !alias.scope !3675, !noundef !11
  %i.p = icmp ugt i64 %i.o, -9223372036854775791
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3J_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EEB54_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  %i.q = load i64, ptr %0, align 8, !range !48, !alias.scope !3676, !noundef !11
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
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !align !15, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !31, !invariant.load !11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !35, !invariant.load !11
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsdNqyU9N9qTX_12sharded_slab4sync5inner5alloc5TrackINtNtBP_5shard5ShardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBP_3cfg13DefaultConfigEEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !15, !noundef !11
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !94, !noundef !11 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #40
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !11
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !11
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !align !15, !noundef !11 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !95, !noundef !11 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ak, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.al = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { i64, i32 } %i.al, 0
  %i.an = extractvalue { i64, i32 } %i.al, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.am, i32 noundef %i.an)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !96

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #40
  %i.ao = load ptr, ptr %i.a, align 8, !noundef !11
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !14

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10834)
  %i.ap = load ptr, ptr %i.b, align 8, !alias.scope !10835, !nonnull !11, !noundef !11
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !10835
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !10841 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !10841 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !10841 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !10841 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !11
  %i.t = load i8, ptr %i.r, align 1, !noundef !11
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !alias.scope !10839, !noalias !10840
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !alias.scope !10840, !noalias !10839
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !10839, !noalias !10840
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !10840, !noalias !10839
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !11
  switch i8 %i.d, label %default.unreachable53 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.o
  ]

default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !15, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.h, align 8, !align !36, !noundef !11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.j = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.j, align 8, !align !15, !noundef !11 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10852)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10853
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !10, !noalias !10853, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !28, !noalias !10853, !noundef !11 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !10853
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #42
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !10853, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10853
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !10854
  br label %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !10852, !noalias !10855
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10852, !noalias !10855
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !10852, !noalias !10855
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !10852, !noalias !10855
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBc_5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i ]
  %.val12 = load i64, ptr %i.g, align 8, !range !10, !noundef !11
  %i.y = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !align !15, !noundef !11
  %i.ad = invoke { ptr, ptr } @_RNvXs3_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtB9_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i16, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.o

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.ak, %bb.n ], [ %i.ax, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ae, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #37
          to label %.body20 unwind label %bb.ae

end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs7p2uQeJxui2_9deltalake:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc24.8 unwind label %.loopexit

.noexc24.8:                                       ; preds = %bb.bx
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.by

bb.by:                                            ; preds = %.noexc24.8
  store atomic i8 1, ptr %i.es monotonic, align 1, !noalias !11028
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8: ; preds = %bb.by, %.noexc24.8, %bb.bw, %bb.bv
  %i.ey = atomicrmw xchg ptr %.val.i16.8, i32 0 release, align 4, !noalias !11028
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8, !prof !14

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.8)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.8, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fa = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.fb = icmp ult i64 %i.g, %i.fa
  br i1 %i.fb, label %bb.bz, label %bb.f

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.8
  %i.fc = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.g
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fd)
          to label %bb.ca unwind label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fe = load i64, ptr %i.a, align 8, !range !10, !noundef !11
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.cb, label %bb.h

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11029)
  %.val.i16.9 = load ptr, ptr %i.i, align 8, !alias.scope !11029 ; 4 uses
  %.val3.i17.9 = load i8, ptr %i.j, align 8, !range !19, !alias.scope !11029, !noundef !11 ; 2 uses
  %.not.i.i18.9 = icmp eq i8 %.val3.i17.9, 2
  br i1 %.not.i.i18.9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.9) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i16.9, i64 4
  %i.fh = trunc nuw i8 %.val3.i17.9 to i1
  br i1 %i.fh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fi = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11029
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.ce, !prof !18

bb.ce:                                            ; preds = %bb.cd
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc24.9 unwind label %.loopexit

.noexc24.9:                                       ; preds = %bb.ce
  br i1 %i.fl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cf

bb.cf:                                            ; preds = %.noexc24.9
  store atomic i8 1, ptr %i.fg monotonic, align 1, !noalias !11029
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9: ; preds = %bb.cf, %.noexc24.9, %bb.cd, %bb.cc
  %i.fm = atomicrmw xchg ptr %.val.i16.9, i32 0 release, align 4, !noalias !11029
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEECs7p2uQeJxui2_9deltalake.exit.sink.split.i20.9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECs7p2uQeJxui2_9deltalake.exit26.9, !prof !14

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
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.g = load i64, ptr %i.b, align 8, !range !10, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !28, !noundef !11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = load i64, ptr %i.e, align 8, !noundef !11
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
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !11037, !noalias !11038, !noundef !11 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !31, !alias.scope !11037, !noalias !11038, !noundef !11
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBT_3cfg13DefaultConfigEE8grow_oneB1G_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.f, !noalias !11038

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.y)
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11038
  unreachable

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !11037, !noalias !11038, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !11037, !noalias !11038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ad = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11039
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.val.i = load ptr, ptr %0, align 8, !noalias !11039, !align !15, !noundef !11 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val1.i = load i64, ptr %i.ag, align 8, !noalias !11039 ; 7 uses
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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.h, !noalias !11039

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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i unwind label %bb.i, !noalias !11039

bb.i:                                             ; preds = %.lr.ph26
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11040
  unreachable

.body.thread19:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i, %bb.h
  %i.at = mul nuw nsw i64 %.val1.i, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.at, i64 noundef 8) #33, !noalias !11039
  store ptr %i.ae, ptr %0, align 8, !noalias !11039
  store i64 %i.af, ptr %i.ag, align 8, !noalias !11039
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %1 = icmp eq i64 %.val1.i, 0
  br i1 %1, label %bb.j, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.au = mul nuw nsw i64 %.val1.i, 96
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.au, i64 noundef 8) #33, !noalias !11039
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCsdNqyU9N9qTX_12sharded_slab4page4slot4SlotNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerNtNtBO_3cfg13DefaultConfigEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.noexc
  store ptr %i.ae, ptr %0, align 8, !noalias !11039
  store i64 %i.af, ptr %i.ag, align 8, !noalias !11039
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
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.j, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !11051, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 138
  %i.o = load i8, ptr %i.n, align 2, !range !13, !noalias !11051, !noundef !11
  %cond.i = icmp eq i8 %i.o, 2
  br i1 %cond.i, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs7p2uQeJxui2_9deltalake.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !noalias !11052 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !range !10, !noalias !11052, !noundef !11
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.a, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

bb.a:                                             ; preds = %._crit_edge.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !11052
  %i.v = icmp ult i64 %3, %i.u
  br i1 %i.v, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.x = load i32, ptr %i.w, align 4, !noalias !11052, !noundef !11
  %i.y = and i32 %i.x, 1
  %.not8.i.i = icmp eq i32 %i.y, 0
  br i1 %.not8.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !noalias !11052, !noundef !11
  %i.ab = and i32 %i.aa, 2
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !10, !noalias !11052, !noundef !11
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !11052
  %i.ai = icmp ugt i64 %3, %i.ah
  br i1 %i.ai, label %.thread, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i: ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.d, %bb.c, %bb.b, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @211)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 2 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !11053 ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread, label %bb.e, !prof !18

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val9, i64 noundef %i.aj, i64 noundef %i.al)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.p

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread: ; preds = %.noexc
  store atomic i64 1, ptr %i.ak release, align 8, !noalias !11053
  %i.an = inttoptr i64 %i.aj to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val9, ptr %i.ao, align 8, !noalias !11051
  store i64 1, ptr %i.b, align 8, !noalias !11051
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !11051
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.aq, align 8, !noalias !11051
  %i.ar = load ptr, ptr %i.k, align 8, !noalias !11051, !nonnull !11, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !noalias !11051, !nonnull !11, !align !15, !noundef !11 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !35, !invariant.load !11, !noalias !11051
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = and i64 %i.aw, -16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.f

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !range !10, !noalias !11051
  %i.ba = trunc nuw i64 %.pre to i1
  %i.bb = load ptr, ptr %i.k, align 8, !noalias !11051, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !11051, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !35, !invariant.load !11, !noalias !11051
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = and i64 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bk = phi ptr [ %i.az, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bj, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bl = phi ptr [ %i.at, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bd, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !11051, !nonnull !11, !align !15, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !11051, !nonnull !11, !noundef !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = phi ptr [ %i.bk, %bb.f ], [ %i.bj, %bb.g ]
  %i.bs = phi ptr [ %i.bl, %bb.f ], [ %i.bd, %bb.g ]
  %i.bt = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.01.0.i = phi ptr [ %i.bo, %bb.f ], [ %i.bq, %bb.g ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !11, !noalias !11051, !nonnull !11
  %i.bw = invoke { i32, i32 } %i.bv(ptr noundef nonnull %i.br, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 %i.g, i64 noundef range(i64 0, 1152921504606846976) %i.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !11051 ; 5 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11051 ; 4 uses
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !11051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11051
  %i.bx = ptrtoint ptr %.sroa.2.0.copyload.i to i64 ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.a, align 8, !noalias !11054
  %i.by = icmp eq ptr %.sroa.2.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.by, label %.noexc10.i, label %.noexc11.i, !prof !14

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
