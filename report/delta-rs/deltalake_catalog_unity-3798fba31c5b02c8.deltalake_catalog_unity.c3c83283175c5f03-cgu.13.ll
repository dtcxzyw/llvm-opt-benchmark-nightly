inline.NumInlined: 742
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB3q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB25_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE0uE0EB78_:bb.a

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB3j_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtB4e_10ValueEntryB3M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0EB5i_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !17
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB3j_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE0uE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !17
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB25_6future11invalidator9PredicateB3e_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0EB4D_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !17
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB38_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket23defer_destroy_tombstoneINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB37_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtB42_10ValueEntryB3A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0EB56_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket23defer_destroy_tombstoneINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB37_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket23defer_destroy_tombstoneTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB38_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB25_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0EB6Q_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3news_4callNCINvMNtB9_5guardNtB1i_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket23defer_destroy_tombstoneNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB27_6future11invalidator9PredicateB34_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uE0EB4t_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !align !114, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2g_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtB5_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2m_4read9SliceReadEEB7_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtB2v_13TokenResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @35, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB5_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2s_4read9SliceReadEEB7_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2v_16MsiTokenResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @35, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtB5_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB7_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtB2t_21AzureCliTokenResponseNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @41, i64 noundef 3)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyINtNvXs3g_NtB28_5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMappppENtB28_11Deserialize11deserialize10MapVisitorNtNtCs6Po7BT7Nknu_5alloc6string6StringB5b_NtNtNtB3D_4hash6random11RandomStateEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB4O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls11BoolVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsse_1__NtB3f_16DataSourceFormatNtB28_11Deserialize11deserialize9___VisitorEB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelssf_1__NtB3f_9TableTypeNtB28_11Deserialize11deserialize9___VisitorEB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXs16_NtB28_5implsmNtB28_11Deserialize11deserialize16PrimitiveVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i32 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXs19_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBe_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1A_7Visitor9visit_mapNtB3_17___DeserializeWithB1y_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3V_4read9SliceReadEEBg_(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential17expires_in_stringQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1i_4read9SliceReadEEB4_(ptr noalias noundef align 8 dereferenceable(64) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBe_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1A_7Visitor9visit_seqNtB3_17___DeserializeWithB1y_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3V_4read9SliceReadEEBg_(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential17expires_in_stringQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1i_4read9SliceReadEEB4_(ptr noalias noundef align 8 dereferenceable(64) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBe_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1E_7Visitor9visit_mapNtB3_17___DeserializeWithB1C_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3Z_4read7StrReadEEBg_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential18az_cli_date_format11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1y_4read7StrReadEEB6_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  %i.b = load i32, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !114, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.511.0.copyload = load i32, ptr %.sroa.511.0..sroa_idx, align 4
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.511.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.612.0.copyload.sink = phi ptr [ %i.e, %bb.b ], [ %.sroa.612.0.copyload, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.612.0.copyload.sink, ptr %i.f, align 8
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBe_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1E_7Visitor9visit_seqNtB3_17___DeserializeWithB1C_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3Z_4read7StrReadEEBg_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential18az_cli_date_format11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1y_4read7StrReadEEB6_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  %i.b = load i32, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !114, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.511.0.copyload = load i32, ptr %.sroa.511.0..sroa_idx, align 4
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.511.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.612.0.copyload.sink = phi ptr [ %i.e, %bb.b ], [ %.sroa.612.0.copyload, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.612.0.copyload.sink, ptr %i.f, align 8
  store i32 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtBb_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [152 x i8], align 8               ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %.sroa.0.0.i = tail call noundef range(i64 0, 6899) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.i, i64 6898) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 152)
  %i.j = load i64, ptr %i.a, align 8, !range !122, !noundef !17
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !258, !noundef !17 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !6

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17
  %i.q = icmp samesign ule i64 %.sroa.0.0.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  invoke void @_RINvXsH_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB3I_(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEB2W_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ac, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.p

_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEB2W_.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !702, !noundef !17 ; 2 uses
  switch i64 %i.u, label %bb.i [
    i64 -9223372036854775807, label %bb.f
    i64 -9223372036854775808, label %bb.m
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEB2W_.exit
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !17, !align !114, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.o

bb.i:                                             ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEB2W_.exit
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx, i64 144, i1 false)
  %i.z = load i64, ptr %i.s, align 8, !alias.scope !1001, !noalias !1004, !noundef !17 ; 3 uses
  %i.aa = load i64, ptr %i.d, align 8, !range !132, !alias.scope !1001, !noalias !1004, !noundef !17
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.k, !noalias !1004

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEBK_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b) #26
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEB2W_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.r, align 8, !alias.scope !1001, !noalias !1004, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  %i.ag = add i64 %i.z, 1
  store i64 %i.ag, ptr %i.s, align 8, !alias.scope !1001, !noalias !1004
  br label %bb.d

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoEEB1h_.exit, %bb.m
end_hunk_0
