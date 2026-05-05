inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderEECs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph3
  %lsr.iv.next9 = add i64 %lsr.iv8, -1            ; 2 uses
  %scevgep14 = getelementptr i8, ptr %lsr.iv13, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next9
  br i1 %i.d, label %.body.i.i.i.loopexit, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv12.lcssa = phi ptr [ %lsr.iv11, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %bb.c
  %lsr.iv13 = phi ptr [ %lsr.iv12.lcssa, %.lr.ph3.preheader ], [ %scevgep14, %bb.c ] ; 2 uses
  %lsr.iv8 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next9, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 128 dereferenceable(128) %lsr.iv13) #38
          to label %bb.c unwind label %bb.e, !noalias !1448
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph3
  %lsr.iv.next9 = add i64 %lsr.iv8, -1            ; 2 uses
  %scevgep14 = getelementptr i8, ptr %lsr.iv13, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next9
  br i1 %i.d, label %.body.i.i.i.loopexit, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv12.lcssa = phi ptr [ %lsr.iv11, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %bb.c
  %lsr.iv13 = phi ptr [ %lsr.iv12.lcssa, %.lr.ph3.preheader ], [ %scevgep14, %bb.c ] ; 2 uses
  %lsr.iv8 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next9, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 128 dereferenceable(128) %lsr.iv13) #38
          to label %bb.c unwind label %bb.e, !noalias !1454
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderECs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph4
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.e = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.e, label %.body.i.i.loopexit, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %bb.c
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph4.preheader ], [ %scevgep15, %bb.c ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.val1, %.lr.ph4.preheader ], [ %lsr.iv.next10, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 128 dereferenceable(128) %lsr.iv14) #38
          to label %bb.c unwind label %bb.e
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderECs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph4
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.e = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.e, label %.body.i.i.loopexit, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %bb.c
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph4.preheader ], [ %scevgep15, %bb.c ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.val1, %.lr.ph4.preheader ], [ %lsr.iv.next10, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 128 dereferenceable(128) %lsr.iv14) #38
          to label %bb.c unwind label %bb.e
end_hunk_7
begin_hunk_8_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph4
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 56
  %i.j = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.j, label %common.resume.loopexit, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %bb.c
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph4.preheader ], [ %scevgep15, %bb.c ] ; 2 uses
  %lsr.iv9 = phi i64 [ %i.c, %.lr.ph4.preheader ], [ %lsr.iv.next10, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %lsr.iv14) #38
          to label %bb.c unwind label %bb.e
end_hunk_9
begin_hunk_10_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchj8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchECs7p2uQeJxui2_9deltalake.exit7.i: ; preds = %.lr.ph4
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 56
  %i.j = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next11
  br i1 %i.j, label %common.resume.loopexit, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv14.lcssa = phi ptr [ %lsr.iv13, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_10
begin_hunk_11_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchj8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchECs7p2uQeJxui2_9deltalake.exit7.i
  %lsr.iv15 = phi ptr [ %lsr.iv14.lcssa, %.lr.ph4.preheader ], [ %scevgep16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchECs7p2uQeJxui2_9deltalake.exit7.i ] ; 2 uses
  %lsr.iv10 = phi i64 [ %i.c, %.lr.ph4.preheader ], [ %lsr.iv.next11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchECs7p2uQeJxui2_9deltalake.exit7.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core5field5FieldNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field10ValueMatchEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %lsr.iv15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field13CallsiteMatchECs7p2uQeJxui2_9deltalake.exit7.i unwind label %bb.c
end_hunk_11
begin_hunk_12_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchj8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchECs7p2uQeJxui2_9deltalake.exit7.i: ; preds = %.lr.ph4
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 64
  %i.j = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next11
  br i1 %i.j, label %common.resume.loopexit, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv14.lcssa = phi ptr [ %lsr.iv13, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_12
begin_hunk_13_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchj8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchECs7p2uQeJxui2_9deltalake.exit7.i
  %lsr.iv15 = phi ptr [ %lsr.iv14.lcssa, %.lr.ph4.preheader ], [ %scevgep16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchECs7p2uQeJxui2_9deltalake.exit7.i ] ; 2 uses
  %lsr.iv10 = phi i64 [ %i.c, %.lr.ph4.preheader ], [ %lsr.iv.next11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchECs7p2uQeJxui2_9deltalake.exit7.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core5field5FieldTNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field10ValueMatchINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEEEENtNtNtB2O_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %lsr.iv15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchECs7p2uQeJxui2_9deltalake.exit7.i unwind label %bb.c
end_hunk_13
begin_hunk_14_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %.lr.ph4
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 80
  %i.j = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.j, label %common.resume.loopexit, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_14
begin_hunk_15_@_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %bb.c
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph4.preheader ], [ %scevgep15, %bb.c ] ; 2 uses
  %lsr.iv9 = phi i64 [ %i.c, %.lr.ph4.preheader ], [ %lsr.iv.next10, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %lsr.iv14) #38
          to label %bb.c unwind label %bb.e
end_hunk_15
