Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/file_body?download=true
inline.NumInlined: 6424
inline.NumDeleted: 2193
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast4http10serializerILb0ENS1_15basic_file_bodyINS0_10file_stdioEEENS1_12basic_fieldsISaIcEEEE8do_visitILm6ENS1_14file_body_test13string_parserEEEvRNS_6system10error_codeERT0_:bb.a
  %i.v = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.w = and i64 %.pre.i, 1
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS1_6detail10chunk_sizeENS_4asio12const_bufferENS1_10chunk_crlfESD_SE_SD_SD_SE_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.pre.i, 1
  br i1 %i.x, label %bb.e, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS1_6detail10chunk_sizeENS_4asio12const_bufferENS1_10chunk_crlfESD_SE_SD_SD_SE_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 8, !tbaa !254
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  br label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS1_6detail10chunk_sizeENS_4asio12const_bufferENS1_10chunk_crlfESD_SE_SD_SD_SE_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS1_6detail10chunk_sizeENS_4asio12const_bufferENS1_10chunk_crlfESD_SE_SD_SD_SE_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit: ; preds = %.thread.i, %bb.c, %bb.d, %bb.e
  %i.ab = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.c ], [ %i.s, %.thread.i ]
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.thread.i ]
  store i8 %.0.i.i.i, ptr %i.b, align 1, !tbaa !197
  %i.ac = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.15, ptr noundef nonnull @.str.20, i32 noundef 60) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http10serializerILb0ENS1_15basic_file_bodyINS0_10file_stdioEEENS1_12basic_fieldsISaIcEEEE8do_visitILm7ENS1_14file_body_test13string_parserEEEvRNS_6system10error_codeERT0_(ptr noundef nonnull align 8 dereferenceable(4495) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(288) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.boost::beast::detail::buffers_ref.173", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !211
  %i.g = load i64, ptr %i.d, align 8, !tbaa !50
  store ptr %i.e, ptr %i.c, align 8, !tbaa !307
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  invoke void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_S7_S7_SE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(73) %i.c, i64 noundef %i.g)
          to label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm7EJRmRS1D_EEEvDpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm7EJRmRS1D_EEEvDpOT0_.exit: ; preds = %bb.a
  store i8 7, ptr %i.f, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.c, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = icmp ne i32 %i.m, 11
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !197
  %i.p = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.15, ptr noundef nonnull @.str.20, i32 noundef 56) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = load i32, ptr %i.l, align 8, !tbaa !148
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm7EJRmRS1D_EEEvDpOT0_.exit
  %i.s = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  br label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

bb.c:                                             ; preds = %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm7EJRmRS1D_EEEvDpOT0_.exit
  %i.t = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 %i.t, ptr %i.u, align 8, !tbaa !264
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !63 ; 2 uses
  %i.v = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.w = and i64 %.pre.i, 1
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.pre.i, 1
  br i1 %i.x, label %bb.e, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 8, !tbaa !254
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  br label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_SB_SB_SH_EEEEEEEEEEEvRNS_6system10error_codeERKT_.exit: ; preds = %.thread.i, %bb.c, %bb.d, %bb.e
  %i.ab = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.c ], [ %i.s, %.thread.i ]
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.thread.i ]
  store i8 %.0.i.i.i, ptr %i.b, align 1, !tbaa !197
  %i.ac = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.15, ptr noundef nonnull @.str.20, i32 noundef 60) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http10serializerILb0ENS1_15basic_file_bodyINS0_10file_stdioEEENS1_12basic_fieldsISaIcEEEE8do_visitILm8ENS1_14file_body_test13string_parserEEEvRNS_6system10error_codeERT0_(ptr noundef nonnull align 8 dereferenceable(4495) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(288) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.boost::beast::detail::buffers_ref.175", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !211
  %i.g = load i64, ptr %i.d, align 8, !tbaa !50
  store ptr %i.e, ptr %i.c, align 8, !tbaa !329
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  invoke void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_NS0_4http10chunk_crlfEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(73) %i.c, i64 noundef %i.g)
          to label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm8EJRmRS1I_EEEvDpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm8EJRmRS1I_EEEvDpOT0_.exit: ; preds = %bb.a
  store i8 8, ptr %i.f, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.c, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = icmp ne i32 %i.m, 11
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr %i.a, align 1, !tbaa !197
  %i.p = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.15, ptr noundef nonnull @.str.20, i32 noundef 56) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = load i32, ptr %i.l, align 8, !tbaa !148
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm8EJRmRS1I_EEEvDpOT0_.exit
  %i.s = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  br label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

bb.c:                                             ; preds = %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS1_11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEENS3_IRKNS4_INS6_IJSH_S8_EEEEEEENS3_IRKNS4_IS8_EEEENS3_IRKNS4_INS6_IJSH_NS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJSH_SW_S8_SF_S8_SF_S8_S8_SF_EEEEEEENS3_IRKNS4_INS6_IJS8_S8_SF_EEEEEEEEE7emplaceILm8EJRmRS1I_EEEvDpOT0_.exit
  %i.t = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 %i.t, ptr %i.u, align 8, !tbaa !264
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !63 ; 2 uses
  %i.v = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !89 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.w = and i64 %.pre.i, 1
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.pre.i, 1
  br i1 %i.x, label %bb.e, label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 8, !tbaa !254
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  br label %_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_.exit

_ZN5boost5beast4http14file_body_test13string_parserclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_NS1_10chunk_crlfEEEEEEEEEEEEvRNS_6system10error_codeERKT_.exit: ; preds = %.thread.i, %bb.c, %bb.d, %bb.e
  %i.ab = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.c ], [ %i.s, %.thread.i ]
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.thread.i ]
  store i8 %.0.i.i.i, ptr %i.b, align 1, !tbaa !197
  %i.ac = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.15, ptr noundef nonnull @.str.20, i32 noundef 60) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEESB_EEEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %5 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 48 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 19 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.b = load ptr, ptr %1, align 8, !tbaa !408, !noalias !2021 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  store ptr %i.b, ptr %6, align 8, !tbaa !410, !alias.scope !2024
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !402, !noalias !2024
  store i64 %i.e, ptr %i.c, align 8, !tbaa !411, !alias.scope !2024
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 13 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !398, !noalias !2024, !nonnull !83, !align !86 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !389, !noalias !2025 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !391, !noalias !2025 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !391, !alias.scope !2025
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !375, !noalias !2025 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = load i8, ptr %i.p, align 8, !tbaa !378, !noalias !2025 ; 2 uses
  switch i8 %i.q, label %bb.d [
    i8 0, label %.thread.i
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread.i:                                        ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.r, align 8, !tbaa !375, !alias.scope !2025
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.t, align 8, !tbaa !378, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !293, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.v, align 8, !tbaa !375, !alias.scope !2025
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !293, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !293, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.z, align 8, !tbaa !375, !alias.scope !2025
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !293, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

bb.g:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !293, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !375, !alias.scope !2025
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !293, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

bb.h:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !380, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !375, !alias.scope !2025
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !280, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

bb.i:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !293, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.al, align 8, !tbaa !375, !alias.scope !2025
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !293, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

bb.j:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !53, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !375, !alias.scope !2025
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 %i.ao, ptr %i.ar, align 8, !tbaa !53, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52:          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.as = phi ptr [ %i.aq, %bb.j ], [ %i.am, %bb.i ], [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %i.q, ptr %i.at, align 8, !tbaa !378, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i51

bb.k:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !293, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !391, !alias.scope !2025
  store ptr %i.au, ptr %i.av, align 8, !tbaa !293, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i51

bb.l:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.j, align 8, !tbaa !53, !noalias !2025
  store ptr %i.i, ptr %i.f, align 8, !tbaa !389, !alias.scope !2025
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !391, !alias.scope !2025
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !53, !alias.scope !2025
  br label %.sink.split.i.i.i.i.i.i.i51

.sink.split.i.i.i.i.i.i.i51:                      ; preds = %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52, %.thread.i
  %i.ba = phi ptr [ %i.az, %bb.l ], [ %i.aw, %bb.k ], [ %i.as, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i52 ], [ %i.s, %.thread.i ]
  store i8 %i.l, ptr %i.ba, align 8, !tbaa !391, !alias.scope !2025
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit: ; preds = %.sink.split.i.i.i.i.i.i.i51, %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratorC2ERKSG_.exit.thread16.i
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !399, !alias.scope !2025
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !389, !noalias !2026 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !391, !noalias !2026 ; 5 uses
  switch i8 %i.bg, label %bb.m [
    i8 0, label %bb.x
    i8 1, label %bb.n
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  unreachable

bb.n:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !375, !noalias !2026 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !378, !noalias !2026 ; 2 uses
  switch i8 %i.bk, label %bb.o [
    i8 0, label %bb.x
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !293, !noalias !2026
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !293, !noalias !2026
  br label %bb.x

bb.r:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !293, !noalias !2026
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !380, !noalias !2026
  br label %bb.x

bb.t:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !293, !noalias !2026
  br label %bb.x

bb.u:                                             ; preds = %bb.n
  %i.bq = load i8, ptr %i.bi, align 8, !tbaa !53, !noalias !2026
  %.sroa.17.32.insert.ext = zext i8 %i.bq to i64
  %i.br = inttoptr i64 %.sroa.17.32.insert.ext to ptr
  br label %bb.x

bb.v:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !293, !noalias !2026
  br label %bb.x

bb.w:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.bt = load i8, ptr %i.be, align 8, !tbaa !53, !noalias !2026
  %.sroa.10.24.insert.ext = zext i8 %i.bt to i64
  %i.bu = inttoptr i64 %.sroa.10.24.insert.ext to ptr
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.v, %bb.n
  %.sroa.10.1 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ %i.bh, %bb.n ], [ %i.bu, %bb.w ], [ %i.bs, %bb.v ], [ %i.bh, %bb.u ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ] ; 4 uses
  %.sroa.17.2 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ undef, %bb.n ], [ undef, %bb.w ], [ undef, %bb.v ], [ %i.br, %bb.u ], [ %i.bp, %bb.t ], [ %i.bo, %bb.s ], [ %i.bn, %bb.r ], [ %i.bm, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %.sroa.2570.1 = phi i8 [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ %i.bk, %bb.n ], [ undef, %bb.w ], [ undef, %bb.v ], [ 6, %bb.u ], [ 5, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 2, %bb.q ], [ 1, %bb.p ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !399, !noalias !2026 ; 2 uses
  %i.bx = icmp eq ptr %i.g, %i.bw
  %i.by = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.bz = icmp eq ptr %i.by, %i.bd
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.y, label %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread_crit_edge

._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread_crit_edge: ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !391
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !391 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.cc, %i.bg
  br i1 %.not.i.i.i.i, label %bb.z, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread

bb.z:                                             ; preds = %bb.y
  switch i8 %i.bg, label %bb.aa [
    i8 0, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77
    i8 1, label %bb.ab
    i8 2, label %.split
    i8 3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !375
  %i.ce = icmp eq ptr %i.cd, %.sroa.10.1
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cg = load i8, ptr %i.cf, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cg, %.sroa.2570.1
  %or.cond97 = select i1 %i.ce, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond97, label %bb.ac, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ci = add nsw i8 %.sroa.2570.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ci, -5
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8
  %i.cj = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, %.sroa.17.2
  %or.cond81 = select i1 %switch.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.cj
  br i1 %or.cond81, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread

.split:                                           ; preds = %bb.z
  %i.ck = load ptr, ptr %i.ca, align 8, !tbaa !293
  %i.cl = icmp eq ptr %i.ck, %.sroa.10.1
  br i1 %i.cl, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.cm, align 8, !tbaa !389
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i8 0, ptr %i.cp, align 8, !tbaa !391
  br label %bb.am

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77: ; preds = %bb.ac, %bb.z, %bb.z, %.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.bn

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread: ; preds = %bb.ac, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.cq, align 8, !tbaa !389
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i8 0, ptr %i.ct, align 8, !tbaa !391
  br label %bb.ae

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread: ; preds = %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread_crit_edge, %bb.y
  %i.cu = phi i8 [ %.pre, %._ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread_crit_edge ], [ %i.cc, %bb.y ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.by, ptr %i.cv, align 8, !tbaa !389
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  store i8 0, ptr %i.cy, align 8, !tbaa !391
  switch i8 %i.cu, label %bb.ad [
    i8 0, label %.preheader.i
    i8 1, label %bb.ae
    i8 2, label %bb.am
    i8 3, label %bb.an
  ]

bb.ad:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread
  unreachable

bb.ae:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread
  %i.cz = phi ptr [ %i.ct, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread ], [ %i.cy, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 2 uses
  %i.da = phi ptr [ %i.cs, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread ], [ %i.cx, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 3 uses
  %i.db = phi ptr [ %i.cr, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread ], [ %i.cw, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 3 uses
  %i.dc = phi ptr [ %i.cq, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread ], [ %i.cv, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 2 uses
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !375
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !375
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i8 0, ptr %i.dg, align 8, !tbaa !378
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !378 ; 2 uses
  switch i8 %i.di, label %bb.af [
    i8 0, label %.sink.split.i.i.i.i.i.i.i
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !293
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !293
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !293
  store ptr %i.dk, ptr %i.de, align 8, !tbaa !293
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !293
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !293
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !380
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ae
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !293
  store ptr %i.dn, ptr %i.de, align 8, !tbaa !293
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ae
  %i.do = load i8, ptr %i.df, align 8, !tbaa !53
  store i8 %i.do, ptr %i.de, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  store i8 %i.di, ptr %i.dg, align 8, !tbaa !378
  br label %.sink.split.i.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread
  %i.dp = phi ptr [ %i.cp, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95 ], [ %i.cy, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ]
  %i.dq = phi ptr [ %i.co, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95 ], [ %i.cx, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 2 uses
  %i.dr = phi ptr [ %i.cn, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95 ], [ %i.cw, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 2 uses
  %i.ds = phi ptr [ %i.cm, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread.thread95 ], [ %i.cv, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ]
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !293
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !293
  br label %.sink.split.i.i.i.i.i.i.i

bb.an:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread
  %i.du = load i8, ptr %i.cx, align 8, !tbaa !53
  store i8 %i.du, ptr %i.cw, align 8, !tbaa !53
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.an, %bb.am, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %i.dv = phi ptr [ %i.cy, %bb.an ], [ %i.dp, %bb.am ], [ %i.cz, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cz, %bb.ae ] ; 2 uses
  %i.dw = phi ptr [ %i.cx, %bb.an ], [ %i.dq, %bb.am ], [ %i.da, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.da, %bb.ae ]
  %i.dx = phi ptr [ %i.cw, %bb.an ], [ %i.dr, %bb.am ], [ %i.db, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.db, %bb.ae ]
  %i.dy = phi ptr [ %i.cv, %bb.an ], [ %i.ds, %bb.am ], [ %i.dc, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dc, %bb.ae ]
  %i.dz = phi i8 [ 3, %bb.an ], [ 2, %bb.am ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ae ] ; 2 uses
  store i8 %i.dz, ptr %i.dv, align 8, !tbaa !391
  br label %.preheader.i

.preheader.i:                                     ; preds = %.sink.split.i.i.i.i.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread
  %i.ea = phi ptr [ %i.dv, %.sink.split.i.i.i.i.i.i.i ], [ %i.cy, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ]
  %i.eb = phi ptr [ %i.dw, %.sink.split.i.i.i.i.i.i.i ], [ %i.cx, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 2 uses
  %i.ec = phi ptr [ %i.dx, %.sink.split.i.i.i.i.i.i.i ], [ %i.cw, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 3 uses
  %i.ed = phi ptr [ %i.dy, %.sink.split.i.i.i.i.i.i.i ], [ %i.cv, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ]
  %9 = phi i8 [ %i.dz, %.sink.split.i.i.i.i.i.i.i ], [ %i.cu, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.ee, align 8, !tbaa !399
  %i.ef = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %7) ; 0 uses
  %.sroa.057.0.copyload = load ptr, ptr %7, align 8
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !389
  %i.eh = load i8, ptr %i.ea, align 8, !tbaa !391 ; 2 uses
  switch i8 %i.eh, label %bb.ao [
    i8 0, label %bb.az
    i8 1, label %bb.ap
    i8 2, label %bb.ax
    i8 3, label %bb.ay
  ]

bb.ao:                                            ; preds = %.preheader.i
  unreachable

bb.ap:                                            ; preds = %.preheader.i
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !375 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !378 ; 2 uses
  switch i8 %i.el, label %bb.aq [
    i8 0, label %bb.az
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.au
    i8 5, label %bb.av
    i8 6, label %bb.aw
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !293
  br label %bb.az

bb.as:                                            ; preds = %bb.ap
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !293
  br label %bb.az

bb.at:                                            ; preds = %bb.ap
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !293
  br label %bb.az

bb.au:                                            ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !380
  br label %bb.az

bb.av:                                            ; preds = %bb.ap
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !293
  br label %bb.az

bb.aw:                                            ; preds = %bb.ap
  %i.er = load i8, ptr %i.ej, align 8, !tbaa !53
  %.sroa.12.32.insert.ext = zext i8 %i.er to i64
  %i.es = inttoptr i64 %.sroa.12.32.insert.ext to ptr
  br label %bb.az

bb.ax:                                            ; preds = %.preheader.i
  %i.et = load ptr, ptr %i.ec, align 8, !tbaa !293
  br label %bb.az

bb.ay:                                            ; preds = %.preheader.i
  %i.eu = load i8, ptr %i.ec, align 1, !tbaa !53
  %.sroa.7.24.insert.ext = zext i8 %i.eu to i64
  %i.ev = inttoptr i64 %.sroa.7.24.insert.ext to ptr
  br label %bb.az

bb.az:                                            ; preds = %bb.ap, %bb.ax, %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %.preheader.i
  %.sroa.19.1 = phi i8 [ undef, %.preheader.i ], [ 1, %bb.ar ], [ 2, %bb.as ], [ 3, %bb.at ], [ 4, %bb.au ], [ 5, %bb.av ], [ 6, %bb.aw ], [ undef, %bb.ay ], [ undef, %bb.ax ], [ %i.el, %bb.ap ]
  %.sroa.12.2 = phi ptr [ undef, %.preheader.i ], [ %i.em, %bb.ar ], [ %i.en, %bb.as ], [ %i.eo, %bb.at ], [ %i.ep, %bb.au ], [ %i.eq, %bb.av ], [ %i.es, %bb.aw ], [ undef, %bb.ay ], [ undef, %bb.ax ], [ undef, %bb.ap ]
  %.sroa.7.1 = phi ptr [ undef, %.preheader.i ], [ %i.ei, %bb.ar ], [ %i.ei, %bb.as ], [ %i.ei, %bb.at ], [ %i.ei, %bb.au ], [ %i.ei, %bb.av ], [ %i.ei, %bb.aw ], [ %i.ev, %bb.ay ], [ %i.et, %bb.ax ], [ %i.ei, %bb.ap ] ; 2 uses
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !399
  %i.ex = icmp eq ptr %.sroa.057.0.copyload, %i.b
  %i.ey = icmp eq ptr %i.ew, %i.bw
  %or.cond82 = select i1 %i.ex, i1 %i.ey, i1 false
  %i.ez = icmp eq ptr %i.eg, %i.bd
  %or.cond83 = select i1 %or.cond82, i1 %i.ez, i1 false
  %.not.i.i.i.i40 = icmp eq i8 %i.eh, %i.bg
  %or.cond84 = and i1 %.not.i.i.i.i40, %or.cond83
  br i1 %or.cond84, label %bb.ba, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread

bb.ba:                                            ; preds = %bb.az
  switch i8 %i.bg, label %bb.bb [
    i8 0, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79
    i8 1, label %bb.bc
    i8 2, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45
    i8 3, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79
  ]

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.fa = icmp eq ptr %.sroa.7.1, %.sroa.10.1
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq i8 %.sroa.19.1, %.sroa.2570.1
  %or.cond85 = and i1 %.not.i.i.i.i.i.i.i.i.i41, %i.fa
  br i1 %or.cond85, label %bb.bd, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread

bb.bd:                                            ; preds = %bb.bc
  %i.fb = add nsw i8 %.sroa.2570.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i42 = icmp ult i8 %i.fb, -5
  %i.fc = icmp eq ptr %.sroa.12.2, %.sroa.17.2
  %or.cond86 = select i1 %switch.i.i.i.i.i.i.i.i.i.i42, i1 true, i1 %i.fc
  br i1 %or.cond86, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45: ; preds = %bb.ba
  %i.fd = icmp eq ptr %.sroa.7.1, %.sroa.10.1
  br i1 %i.fd, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79: ; preds = %bb.bd, %bb.ba, %bb.ba, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !389
  %i.ff = icmp eq ptr %i.by, %i.fe
  br i1 %i.ff, label %bb.be, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.be:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79
  %i.fg = load i8, ptr %i.k, align 8, !tbaa !391
  %.not.i.i.i = icmp eq i8 %9, %i.fg
  br i1 %.not.i.i.i, label %bb.bf, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  switch i8 %9, label %bb.bg [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
    i8 1, label %bb.bh
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  ]

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr %i.eb, align 8, !tbaa !375
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !375
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %bb.bi, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !378 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !378
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fn, %i.fp
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.fq = add i8 %i.fn, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fq, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bj
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !87
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !87
  %i.fs = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.fr
  br i1 %i.fs, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.bf
  %i.ft = load ptr, ptr %i.eb, align 8, !tbaa !293
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !293
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bj, %bb.bf, %bb.bf
  %i.fw = zext nneg i8 %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.f, ptr %4, align 8, !tbaa !401
  %i.fx = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fy = extractvalue { ptr, i64 } %i.fx, 0
  %i.fz = extractvalue { ptr, i64 } %i.fx, 1      ; 2 uses
  %i.ga = load ptr, ptr %i.bb, align 8, !tbaa !399
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !371
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.fz) ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %spec.select.i.i
  %i.ge = sub i64 %i.fz, %spec.select.i.i
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.gd, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.ge, 1
  br label %bb.bk

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread79, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bi, %bb.bh, %bb.be
  %i.gf = zext nneg i8 %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.f, ptr %3, align 8, !tbaa !401
  %i.gg = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i
  %.pn.i = phi { ptr, i64 } [ %.fca.1.insert.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.gg, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ] ; 2 uses
  %i.gh = extractvalue { ptr, i64 } %.pn.i, 1
  %i.gi = load i64, ptr %i.c, align 8, !tbaa !411
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gh)
  %i.gj = extractvalue { ptr, i64 } %.pn.i, 0
  %i.gk = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.gj, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.bn

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread: ; preds = %bb.bd, %bb.bc, %bb.az, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45
  %i.gl = call noundef i64 @_ZN5boost4asio11buffer_sizeINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 7 uses
  %i.gm = icmp ult i64 %i.gl, 8193
  br i1 %i.gm, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEESB_EEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.bl

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEESB_EEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.a, ptr %5, align 8, !tbaa !413
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8192, ptr %i.gn, align 8, !tbaa !414
  %i.go = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES9_EEEEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.gp = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bn

bb.bl:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit45.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !580
  %i.gs = icmp ugt i64 %i.gl, %i.gr
  br i1 %i.gs, label %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit, label %bb.bm

_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit: ; preds = %bb.bl
  %i.gt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gl) #35
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !217 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !217
  %.not.i.i.i.i49 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i49, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #33
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  store i64 %i.gl, ptr %i.gq, align 8, !tbaa !580
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !217
  store ptr %i.gx, ptr %8, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gl, ptr %i.gy, align 8
  %i.gz = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS5_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES9_EEEEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !217
  %i.hb = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.ha, i64 %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEESB_EEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77
  %.1 = phi i64 [ 0, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratoreqERKSM_.exit.thread77 ], [ %i.gk, %bb.bk ], [ %i.gp, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEESB_EEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.hb, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i64 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %3 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 16 uses
  %7 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>> &>::const_iterator", align 8 ; 7 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  %i.b = load ptr, ptr %1, align 8, !tbaa !423, !noalias !2049 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  store ptr %i.b, ptr %6, align 8, !tbaa !425, !alias.scope !2052
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !419, !noalias !2052
  store i64 %i.e, ptr %i.c, align 8, !tbaa !426, !alias.scope !2052
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !417, !noalias !2052, !nonnull !83, !align !86 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !375, !noalias !2055 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !378, !noalias !2055 ; 10 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !293, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !293, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !293, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !293, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !293, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !293, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !380, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !280, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !293, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !293, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load i8, ptr %i.j, align 8, !tbaa !53, !noalias !2055
  store ptr %i.i, ptr %i.f, align 8, !tbaa !375, !alias.scope !2055
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.w, ptr %i.x, align 8, !tbaa !53, !alias.scope !2055
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratorC2ERKSC_.exit.thread.i.i.i.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 %i.l, ptr %i.y, align 8, !tbaa !378, !alias.scope !2055
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.z, align 8, !tbaa !418, !alias.scope !2055
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !375, !noalias !2056 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !378, !noalias !2056 ; 4 uses
  switch i8 %i.ae, label %bb.i [
    i8 0, label %bb.p
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
  ]

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  unreachable

bb.j:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !293, !noalias !2056
  br label %bb.p

bb.k:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !293, !noalias !2056
  br label %bb.p

bb.l:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE.exit
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !293, !noalias !2056
  br label %bb.p

end_hunk_0
