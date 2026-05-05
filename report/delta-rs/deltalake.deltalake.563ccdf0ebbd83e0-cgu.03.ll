inline.NumInlined: 8450
inline.NumDeleted: 2899
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.d, label %.body.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.8.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i unwind label %bb.c
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtBO_9DeltaScan16deletion_vectors0ECs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i: ; preds = %.lr.ph12
  %lsr.iv.next20 = add i64 %lsr.iv19, -1          ; 2 uses
  %scevgep25 = getelementptr i8, ptr %lsr.iv24, i64 128
  %i.ag = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next20
  br i1 %i.ag, label %.body.i.i.i.i.loopexit, label %.lr.ph12

bb.m:                                             ; preds = %.lr.ph
  %lsr.iv23.lcssa = phi ptr [ %lsr.iv22, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtBO_9DeltaScan16deletion_vectors0ECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i
  %lsr.iv24 = phi ptr [ %lsr.iv23.lcssa, %.lr.ph12.preheader ], [ %scevgep25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i ] ; 2 uses
  %lsr.iv19 = phi i64 [ %.val1.i.i, %.lr.ph12.preheader ], [ %lsr.iv.next20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv24)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i unwind label %bb.n
end_hunk_3
begin_hunk_4_@_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa52 = phi i64 [ %i.m, %bb.b ]
  %.lcssa = phi i8 [ %i.o, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %bb.i
  %lsr.iv55 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i7.preheader ], [ %lsr.iv.next56, %bb.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %lsr.iv55
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 -1
  %i.ab = load i8, ptr %scevgep57, align 1, !noalias !7324, !noundef !11
end_hunk_5
begin_hunk_6_@_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa52 = phi i64 [ %i.m, %bb.b ]
  %.lcssa = phi i8 [ %i.o, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_6
begin_hunk_7_@_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %bb.i
  %lsr.iv55 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i7.preheader ], [ %lsr.iv.next56, %bb.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %lsr.iv55
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 -1
  %i.ab = load i8, ptr %scevgep57, align 1, !noalias !7358, !noundef !11
end_hunk_7
begin_hunk_8_@_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa52 = phi i64 [ %i.o, %bb.b ]
  %.lcssa = phi i8 [ %i.q, %bb.b ]                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_8
begin_hunk_9_@_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %bb.i
  %lsr.iv55 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i7.preheader ], [ %lsr.iv.next56, %bb.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %lsr.iv55
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 -1
  %i.ad = load i8, ptr %scevgep57, align 1, !noalias !7392, !noundef !11
end_hunk_9
begin_hunk_10_@_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa52 = phi i64 [ %i.o, %bb.b ]
  %.lcssa = phi i8 [ %i.q, %bb.b ]                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_10
begin_hunk_11_@_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.preheader, %bb.i
  %lsr.iv55 = phi i64 [ %lsr.iv.lcssa, %.lr.ph.i7.preheader ], [ %lsr.iv.next56, %bb.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %lsr.iv55
  %scevgep57 = getelementptr i8, ptr %scevgep, i64 -1
  %i.ad = load i8, ptr %scevgep57, align 1, !noalias !7426, !noundef !11
end_hunk_11
begin_hunk_12_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %lsr.iv.lcssa47 = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa44 = phi i64 [ %i.l, %bb.b ]
  %i.s = add i64 %.lcssa44, 1                     ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !13785
end_hunk_12
begin_hunk_13_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader, %bb.g
  %lsr.iv46 = phi i64 [ %lsr.iv.lcssa47, %.lr.ph.i12.preheader ], [ %lsr.iv.next47, %bb.g ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %lsr.iv46
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 -1
  %i.v = load i8, ptr %scevgep48, align 1, !noalias !13791, !noundef !11
end_hunk_13
begin_hunk_14_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %lsr.iv.lcssa47 = phi i64 [ %lsr.iv, %bb.b ]
  %.lcssa44 = phi i64 [ %i.l, %bb.b ]
  %i.s = add i64 %.lcssa44, 1                     ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !14102
end_hunk_14
begin_hunk_15_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader, %bb.g
  %lsr.iv46 = phi i64 [ %lsr.iv.lcssa47, %.lr.ph.i12.preheader ], [ %lsr.iv.next47, %bb.g ] ; 3 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %lsr.iv46
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 -1
  %i.v = load i8, ptr %scevgep48, align 1, !noalias !14108, !noundef !11
end_hunk_15
