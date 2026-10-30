Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.4?download=true
inline.NumInlined: 135
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringBC_EECshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(ptr %i.e, !1276, !DIExpression(), !5645)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !5660
  ret void, !dbg !5657

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !5657
  unreachable, !dbg !5657
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4http1__NtB5_39HttpTransactionSendRequestHeadersParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2n_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5665 {
bb.a:
    #dbg_value(ptr %1, !5678, !DIExpression(), !5680)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4http1__NtB2v_39HttpTransactionSendRequestHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @11, i64 noundef 1), !dbg !5681
  ret void, !dbg !5682
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https0_1__NtB5_44HttpTransactionHttp2SendRequestHeadersParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2v_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5687 {
bb.a:
    #dbg_value(ptr %1, !5700, !DIExpression(), !5702)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https0_1__NtB2v_44HttpTransactionHttp2SendRequestHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 44, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @11, i64 noundef 1), !dbg !5703
  ret void, !dbg !5704
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https1_1__NtB5_43HttpTransactionHttp2SendRequestHeadersEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2u_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5705 {
bb.a:
    #dbg_value(ptr %1, !5708, !DIExpression(), !5710)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https1_1__NtB2v_43HttpTransactionHttp2SendRequestHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5711
  ret void, !dbg !5712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https2_1__NtB5_43HttpTransactionQuicSendRequestHeadersParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2u_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5717 {
bb.a:
    #dbg_value(ptr %1, !5730, !DIExpression(), !5732)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https2_1__NtB2v_43HttpTransactionQuicSendRequestHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @21, i64 noundef 5), !dbg !5733
  ret void, !dbg !5734
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https3_1__NtB5_42HttpTransactionQuicSendRequestHeadersEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2t_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5735 {
bb.a:
    #dbg_value(ptr %1, !5738, !DIExpression(), !5740)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https3_1__NtB2v_42HttpTransactionQuicSendRequestHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5741
  ret void, !dbg !5742
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https4_1__NtB5_40HttpTransactionReadResponseHeadersParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2r_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5747 {
bb.a:
    #dbg_value(ptr %1, !5760, !DIExpression(), !5762)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https4_1__NtB2v_40HttpTransactionReadResponseHeadersParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @11, i64 noundef 1), !dbg !5763
  ret void, !dbg !5764
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https5_1__NtB5_39HttpTransactionReadResponseHeadersEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2q_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5765 {
bb.a:
    #dbg_value(ptr %1, !5768, !DIExpression(), !5770)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https5_1__NtB2v_39HttpTransactionReadResponseHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5771
  ret void, !dbg !5772
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https6_1__NtB5_33HttpStreamJobBoundToRequestParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2k_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5777 {
bb.a:
    #dbg_value(ptr %1, !5790, !DIExpression(), !5792)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https6_1__NtB2v_33HttpStreamJobBoundToRequestParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @27, i64 noundef 1), !dbg !5793
  ret void, !dbg !5794
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https7_1__NtB5_32HttpStreamRequestBoundToJobEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2j_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5795 {
bb.a:
    #dbg_value(ptr %1, !5798, !DIExpression(), !5800)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https7_1__NtB2v_32HttpStreamRequestBoundToJobEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5801
  ret void, !dbg !5802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https9_1__NtB5_32HttpStreamJobBoundToRequestEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2j_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5803 {
bb.a:
    #dbg_value(ptr %1, !5806, !DIExpression(), !5808)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https9_1__NtB2v_32HttpStreamJobBoundToRequestEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5809
  ret void, !dbg !5810
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4https_1__NtB5_38HttpTransactionSendRequestHeadersEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2o_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5811 {
bb.a:
    #dbg_value(ptr %1, !5814, !DIExpression(), !5816)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4https_1__NtB2v_38HttpTransactionSendRequestHeadersEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5817
  ret void, !dbg !5818
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4httpsa_1__NtB5_40HttpStreamRequestBoundToQuicSessionEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2r_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5819 {
bb.a:
    #dbg_value(ptr %1, !5822, !DIExpression(), !5824)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4httpsa_1__NtB2v_40HttpStreamRequestBoundToQuicSessionEventNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @15, i64 noundef 1), !dbg !5825
  ret void, !dbg !5826
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshhfsHpF03Qr_6netlog4httpsb_1__NtB5_41HttpStreamRequestBoundToQuicSessionParamsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2s_4read9SliceReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !dbg !5831 {
bb.a:
    #dbg_value(ptr %1, !5844, !DIExpression(), !5846)
  tail call void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCshhfsHpF03Qr_6netlog4httpsb_1__NtB2v_41HttpStreamRequestBoundToQuicSessionParamsNtB1l_11Deserialize11deserialize9___VisitorEB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @27, i64 noundef 1), !dbg !5847
  ret void, !dbg !5848
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1C_NtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 !dbg !5850 {
bb.a:
    #dbg_declare(ptr %0, !5856, !DIExpression(), !5859)
  %i.a = load ptr, ptr %0, align 8, !dbg !5871, !nonnull !520, !noundef !520
    #dbg_value(ptr %i.a, !5857, !DIExpression(), !5860)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !5872
    #dbg_value(ptr %i.b, !5861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5865)
    #dbg_value(i64 11, !5861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5865)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5873
  %i.d = load i64, ptr %i.c, align 8, !dbg !5873, !noundef !520
    #dbg_value(i64 %i.d, !5862, !DIExpression(), !5865)
    #dbg_value(i64 %i.d, !5866, !DIExpression(), !5870)
    #dbg_value(ptr %i.b, !5867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5870)
    #dbg_value(i64 11, !5867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5870)
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !5874
  ret ptr %i.e, !dbg !5875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1C_NtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 !dbg !5880 {
bb.a:
    #dbg_value(ptr %0, !5892, !DIExpression(), !5897)
    #dbg_value(ptr %0, !5898, !DIExpression(), !5904)
    #dbg_value(ptr %0, !5905, !DIExpression(), !5911)
  %i.a = load ptr, ptr %0, align 8, !dbg !5929, !nonnull !520, !noundef !520 ; 2 uses
    #dbg_value(ptr %i.a, !5893, !DIExpression(), !5912)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5930
    #dbg_value(ptr %i.b, !5913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5917)
    #dbg_value(i64 11, !5913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5917)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5931
  %i.d = load i64, ptr %i.c, align 8, !dbg !5931, !noundef !520 ; 2 uses
    #dbg_value(i64 %i.d, !5914, !DIExpression(), !5917)
    #dbg_value(i64 %i.d, !5918, !DIExpression(), !5922)
    #dbg_value(ptr %i.b, !5919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5922)
    #dbg_value(i64 11, !5919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5922)
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !5932
    #dbg_value(ptr %i.e, !5894, !DIExpression(), !5923)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !5933
    #dbg_value(ptr %i.f, !5913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5925)
    #dbg_value(i64 11, !5913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5925)
    #dbg_value(i64 %i.d, !5914, !DIExpression(), !5925)
    #dbg_value(i64 %i.d, !5918, !DIExpression(), !5928)
    #dbg_value(ptr %i.f, !5919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5928)
    #dbg_value(i64 11, !5919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5928)
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.d, !dbg !5934
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.e, 0, !dbg !5935
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1, !dbg !5935
  ret { ptr, ptr } %i.i, !dbg !5935
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !5939 {
bb.a:
    #dbg_value(ptr %0, !6344, !DIExpression(), !6350)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121, !dbg !6803 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !6803, !range !6351, !noundef !520
  %i.c = trunc nuw i8 %i.b to i1, !dbg !6803
  br i1 %i.c, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, label %bb.b, !dbg !6803

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !6804
  %.val = load ptr, ptr %i.d, align 8, !dbg !6804, !nonnull !520, !noundef !520 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6804
  %.val13 = load i64, ptr %i.e, align 8, !dbg !6804, !noundef !520 ; 31 uses
    #dbg_value(ptr poison, !6345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6352)
    #dbg_value(ptr poison, !6353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(ptr poison, !6361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_value(i64 poison, !6345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6352)
    #dbg_value(i64 poison, !6353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(i64 poison, !6361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6371), !dbg !6805
    #dbg_value(ptr %0, !6373, !DIExpression(), !5960)
  %i.f = load i64, ptr %0, align 8, !dbg !6806, !range !6400, !alias.scope !6371, !noundef !520
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %.preheader.i
    i64 1, label %bb.q
    i64 2, label %bb.r
  ], !dbg !6807

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !6351, !alias.scope !6371
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %i.j, label %bb.ah, label %.lr.ph.preheader.i, !dbg !6808

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.promoted226.i = load i8, ptr %i.k, align 8, !alias.scope !6371 ; 4 uses
  %.promoted177.i = load i64, ptr %i.g, align 8, !alias.scope !6371 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6433), !dbg !6809
  %i.l = trunc nuw i8 %.promoted226.i to i1, !dbg !6810 ; 2 uses
    #dbg_value(i1 %i.l, !6418, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5983)
    #dbg_value(i64 %.promoted177.i, !6419, !DIExpression(), !5984)
    #dbg_value(i64 %.promoted177.i, !6434, !DIExpression(), !5992)
    #dbg_value(ptr %.val, !6448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5993)
    #dbg_value(ptr %.val, !6441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5994)
    #dbg_value(i64 %.val13, !6448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5993)
    #dbg_value(i64 %.val13, !6441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5994)
    #dbg_value(i64 %.promoted177.i, !6449, !DIExpression(), !5993)
    #dbg_value(i64 %.promoted177.i, !6440, !DIExpression(), !5994)
    #dbg_value(i64 %.val13, !6442, !DIExpression(), !5992)
    #dbg_value(i64 %.promoted177.i, !6453, !DIExpression(), !5997)
    #dbg_value(ptr %.val, !6456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
    #dbg_value(ptr %.val, !6458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
    #dbg_value(ptr %.val, !6463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6004)
    #dbg_value(ptr %.val, !6469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6009)
    #dbg_value(i64 %.val13, !6456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(i64 %.val13, !6458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
    #dbg_value(i64 %.val13, !6463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6004)
    #dbg_value(i64 %.val13, !6469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6009)
    #dbg_value(i64 %.promoted177.i, !6461, !DIExpression(), !6000)
    #dbg_value(i64 %.promoted177.i, !6466, !DIExpression(), !6004)
    #dbg_value(i64 %.promoted177.i, !6470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6009)
    #dbg_value(i64 %.promoted177.i, !6474, !DIExpression(), !6012)
  %i.m = icmp eq i64 %.promoted177.i, 0, !dbg !6811
  br i1 %i.m, label %bb.e, label %bb.c, !dbg !6811

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %.not.i.i.us.i.peel = icmp ult i64 %.promoted177.i, %.val13, !dbg !6812
  br i1 %.not.i.i.us.i.peel, label %bb.d, label %.split.i.i.us.i.peel, !dbg !6812

.split.i.i.us.i.peel:                             ; preds = %bb.c
  %i.n = icmp eq i64 %.promoted177.i, %.val13, !dbg !6813
  br i1 %i.n, label %bb.e, label %.split.us181.i, !dbg !6814

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted177.i, !dbg !6815
  %i.p = load i8, ptr %i.o, align 1, !dbg !6815, !alias.scope !6479, !noalias !6480, !noundef !520
    #dbg_value(i8 %i.p, !6482, !DIExpression(), !6020)
  %i.q = icmp sgt i8 %i.p, -65, !dbg !6816
  br i1 %i.q, label %bb.e, label %.split.us181.i, !dbg !6814

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel, %.lr.ph.preheader.i
    #dbg_value(ptr %.val, !6471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6021)
    #dbg_value(i64 %.val13, !6471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6021)
    #dbg_value(i64 %.val13, !6467, !DIExpression(), !6022)
    #dbg_value(i64 %.val13, !6470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6009)
    #dbg_value(!DIArgList(i64 %.val13, i64 %.promoted177.i), !6472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6023)
    #dbg_value(ptr %.val, !6477, !DIExpression(), !6012)
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted177.i, !dbg !6817 ; 4 uses
    #dbg_value(ptr undef, !6488, !DIExpression(), !6033)
    #dbg_value(ptr undef, !6513, !DIExpression(), !6049)
    #dbg_value(i32 2, !6538, !DIExpression(), !6052)
    #dbg_value(ptr undef, !6543, !DIExpression(), !6062)
    #dbg_value(i64 1, !6557, !DIExpression(), !6065)
    #dbg_value(ptr %i.r, !6553, !DIExpression(), !6066)
    #dbg_value(ptr %i.r, !6561, !DIExpression(), !6065)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6067)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6070)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6071)
  %i.s = icmp samesign eq i64 %.promoted177.i, %.val13, !dbg !6818
  br i1 %i.s, label %.split186.us.i, label %bb.f, !dbg !6819

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !dbg !6820, !noalias !6570, !noundef !520 ; 5 uses
    #dbg_value(i8 %i.t, !6526, !DIExpression(), !6074)
    #dbg_value(i8 %i.t, !6541, !DIExpression(), !6052)
  %i.u = icmp sgt i8 %i.t, -1, !dbg !6821
  br i1 %i.u, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i.peel, !dbg !6821

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i.peel: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !6822
  %i.w = and i8 %i.t, 31, !dbg !6823
  %i.x = zext nneg i8 %i.w to i32, !dbg !6823     ; 3 uses
    #dbg_value(i32 %i.x, !6529, !DIExpression(), !6075)
    #dbg_value(i32 %i.x, !6571, !DIExpression(), !6078)
    #dbg_value(ptr undef, !6543, !DIExpression(), !6080)
    #dbg_value(i64 1, !6557, !DIExpression(), !6082)
    #dbg_value(ptr %i.v, !6553, !DIExpression(), !6083)
    #dbg_value(ptr %i.v, !6561, !DIExpression(), !6082)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6084)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6086)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6087)
  %i.y = add nuw nsw i64 %.promoted177.i, 1, !dbg !6824
  %i.z = icmp samesign ne i64 %i.y, %.val13, !dbg !6824
  tail call void @llvm.assume(i1 %i.z), !dbg !6825
  %i.aa = load i8, ptr %i.v, align 1, !dbg !6826, !noalias !6570, !noundef !520
    #dbg_value(i8 %i.aa, !6530, !DIExpression(), !6088)
    #dbg_value(i8 %i.aa, !6574, !DIExpression(), !6078)
  %i.ab = shl nuw nsw i32 %i.x, 6, !dbg !6827
  %i.ac = and i8 %i.aa, 63, !dbg !6828
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !6828   ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !6827
    #dbg_value(i32 %i.ae, !6531, !DIExpression(), !6089)
  %i.af = icmp samesign ugt i8 %i.t, -33, !dbg !6829
  br i1 %i.af, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i.peel, label %bb.h, !dbg !6829

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2, !dbg !6830
    #dbg_value(ptr undef, !6543, !DIExpression(), !6091)
    #dbg_value(i64 1, !6557, !DIExpression(), !6093)
    #dbg_value(ptr %i.ag, !6553, !DIExpression(), !6094)
    #dbg_value(ptr %i.ag, !6561, !DIExpression(), !6093)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6095)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6097)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6098)
  %i.ah = add nuw nsw i64 %.promoted177.i, 2, !dbg !6831
  %i.ai = icmp samesign ne i64 %i.ah, %.val13, !dbg !6831
  tail call void @llvm.assume(i1 %i.ai), !dbg !6832
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !6833, !noalias !6570, !noundef !520
    #dbg_value(i8 %i.aj, !6532, !DIExpression(), !6099)
    #dbg_value(i8 %i.aj, !6574, !DIExpression(), !6101)
    #dbg_value(i32 %i.ad, !6571, !DIExpression(), !6101)
  %i.ak = shl nuw nsw i32 %i.ad, 6, !dbg !6834
  %i.al = and i8 %i.aj, 63, !dbg !6835
  %i.am = zext nneg i8 %i.al to i32, !dbg !6835
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !6834 ; 2 uses
    #dbg_value(i32 %i.an, !6533, !DIExpression(), !6102)
    #dbg_value(i32 %i.an, !6571, !DIExpression(), !6104)
  %i.ao = shl nuw nsw i32 %i.x, 12, !dbg !6836
  %i.ap = or disjoint i32 %i.an, %i.ao, !dbg !6837
    #dbg_value(i32 %i.ap, !6531, !DIExpression(), !6089)
  %i.aq = icmp samesign ugt i8 %i.t, -17, !dbg !6838
  br i1 %i.aq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i.peel, label %bb.h, !dbg !6838

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !6839
    #dbg_value(ptr undef, !6543, !DIExpression(), !6106)
    #dbg_value(i64 1, !6557, !DIExpression(), !6108)
    #dbg_value(ptr %i.ar, !6553, !DIExpression(), !6109)
    #dbg_value(ptr %i.ar, !6561, !DIExpression(), !6108)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6110)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6112)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6113)
  %i.as = add nuw nsw i64 %.promoted177.i, 3, !dbg !6840
  %i.at = icmp samesign ne i64 %i.as, %.val13, !dbg !6840
  tail call void @llvm.assume(i1 %i.at), !dbg !6841
  %i.au = load i8, ptr %i.ar, align 1, !dbg !6842, !noalias !6570, !noundef !520
    #dbg_value(i8 %i.au, !6534, !DIExpression(), !6114)
    #dbg_value(i8 %i.au, !6574, !DIExpression(), !6104)
  %i.av = shl nuw nsw i32 %i.x, 18, !dbg !6843
  %i.aw = and i32 %i.av, 1835008, !dbg !6843
  %i.ax = shl nuw nsw i32 %i.an, 6, !dbg !6844
  %i.ay = and i8 %i.au, 63, !dbg !6845
  %i.az = zext nneg i8 %i.ay to i32, !dbg !6845
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !6844
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !6846
    #dbg_value(i32 %i.bb, !6531, !DIExpression(), !6089)
  br label %bb.h, !dbg !6847

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.t to i32, !dbg !6848
  br label %bb.h, !dbg !6849

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i.peel ], [ %i.bc, %bb.g ] ; 4 uses
    #dbg_value(i32 1, !6578, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6119)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6578, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6119)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6587, !DIExpression(), !6120)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6590, !DIExpression(), !6123)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6595, !DIExpression(), !6126)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6603, !DIExpression(), !6129)
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112, !dbg !6850
  tail call void @llvm.assume(i1 %i.bd), !dbg !6850
  br i1 %i.l, label %.loopexit62.split.us.i, label %bb.i, !dbg !6851

bb.i:                                             ; preds = %bb.h
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6421, !DIExpression(), !6130)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6608, !DIExpression(), !6133)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel, !6612, !DIExpression(), !6136)
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128, !dbg !6852
  br i1 %i.be, label %.lr.ph.i, label %bb.j, !dbg !6852

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048, !dbg !6853
  br i1 %i.bf, label %.lr.ph.i, label %bb.k, !dbg !6853

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536, !dbg !6854
  %..i.us.i.peel = select i1 %i.bg, i64 3, i64 4, !dbg !6855
  br label %.lr.ph.i, !dbg !6855

.lr.ph.i:                                         ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel, %bb.k ], [ 1, %bb.i ], !dbg !6855
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel, %.promoted177.i, !dbg !6856 ; 16 uses
  store i64 %i.bh, ptr %i.g, align 8, !dbg !6856, !alias.scope !6616
    #dbg_value(ptr poison, !6543, !DIExpression(), !6106)
    #dbg_value(ptr poison, !6543, !DIExpression(), !6091)
    #dbg_value(ptr poison, !6543, !DIExpression(), !6080)
    #dbg_value(ptr poison, !6543, !DIExpression(), !6062)
    #dbg_value(ptr poison, !6513, !DIExpression(), !6049)
    #dbg_value(ptr poison, !6488, !DIExpression(), !6033)
    #dbg_value(ptr %0, !6415, !DIExpression(), !6137)
    #dbg_declare(ptr poison, !6586, !DIExpression(), !6138)
    #dbg_value(ptr %0, !6417, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6617), !dbg !6809
    #dbg_value(i1 true, !6418, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5983)
    #dbg_value(i64 %i.bh, !6419, !DIExpression(), !5984)
    #dbg_value(i64 %i.bh, !6434, !DIExpression(), !5992)
    #dbg_value(ptr %.val, !6448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5993)
    #dbg_value(ptr %.val, !6441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5994)
    #dbg_value(i64 %.val13, !6448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5993)
    #dbg_value(i64 %.val13, !6441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5994)
    #dbg_value(i64 %i.bh, !6449, !DIExpression(), !5993)
    #dbg_value(i64 %i.bh, !6440, !DIExpression(), !5994)
    #dbg_value(i64 %.val13, !6442, !DIExpression(), !5992)
    #dbg_value(i64 %i.bh, !6453, !DIExpression(), !5997)
    #dbg_value(ptr %.val, !6456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
    #dbg_value(ptr %.val, !6458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6000)
    #dbg_value(ptr %.val, !6463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6004)
    #dbg_value(ptr %.val, !6469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6009)
    #dbg_value(i64 %.val13, !6456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(i64 %.val13, !6458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6000)
    #dbg_value(i64 %.val13, !6463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6004)
    #dbg_value(i64 %.val13, !6469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6009)
    #dbg_value(i64 %i.bh, !6461, !DIExpression(), !6000)
    #dbg_value(i64 %i.bh, !6466, !DIExpression(), !6004)
    #dbg_value(i64 %i.bh, !6470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6009)
    #dbg_value(i64 %i.bh, !6474, !DIExpression(), !6012)
  %i.bi = icmp eq i64 %i.bh, 0, !dbg !6811
  br i1 %i.bi, label %bb.n, label %bb.l, !dbg !6811

bb.l:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bh, %.val13, !dbg !6812
  br i1 %.not.i.i.us.i, label %bb.m, label %.split.i.i.us.i, !dbg !6812

.split.i.i.us.i:                                  ; preds = %bb.l
  %i.bj = icmp eq i64 %i.bh, %.val13, !dbg !6813
  br i1 %i.bj, label %bb.n, label %.split.us181.i, !dbg !6814

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh, !dbg !6815
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !6815, !alias.scope !6479, !noalias !6618, !noundef !520
    #dbg_value(i8 %i.bl, !6482, !DIExpression(), !6020)
  %i.bm = icmp sgt i8 %i.bl, -65, !dbg !6816
  br i1 %i.bm, label %bb.n, label %.split.us181.i, !dbg !6814

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i, %.lr.ph.i
    #dbg_value(ptr %.val, !6471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6021)
    #dbg_value(i64 %.val13, !6471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6021)
    #dbg_value(i64 %.val13, !6467, !DIExpression(), !6022)
    #dbg_value(i64 %.val13, !6470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6009)
    #dbg_value(!DIArgList(i64 %.val13, i64 %i.bh), !6472, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6023)
    #dbg_value(ptr %.val, !6477, !DIExpression(), !6012)
    #dbg_value(ptr undef, !6488, !DIExpression(), !6033)
    #dbg_value(ptr undef, !6513, !DIExpression(), !6049)
    #dbg_value(i32 2, !6538, !DIExpression(), !6052)
    #dbg_value(ptr undef, !6543, !DIExpression(), !6062)
    #dbg_value(i64 1, !6557, !DIExpression(), !6065)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6066)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6065)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6067)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6070)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6071)
  %i.bn = icmp samesign eq i64 %i.bh, %.val13, !dbg !6818
  br i1 %i.bn, label %.split186.us.i.thread, label %bb.o, !dbg !6819

.split186.us.i.thread:                            ; preds = %bb.n
  store i8 0, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
    #dbg_value(i32 0, !6578, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6119)
    #dbg_value(i32 undef, !6578, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6119)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6851

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bh, !dbg !6817
    #dbg_value(ptr %i.bo, !6553, !DIExpression(), !6066)
    #dbg_value(ptr %i.bo, !6561, !DIExpression(), !6065)
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !6820, !noalias !6620, !noundef !520 ; 3 uses
    #dbg_value(i8 %i.bp, !6526, !DIExpression(), !6074)
    #dbg_value(i8 %i.bp, !6541, !DIExpression(), !6052)
  %i.bq = icmp sgt i8 %i.bp, -1, !dbg !6821
  br i1 %i.bq, label %.loopexit62.split.us.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i, !dbg !6821

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i: ; preds = %bb.o
    #dbg_value(i8 %i.bp, !6529, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6075)
    #dbg_value(i8 %i.bp, !6571, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6078)
    #dbg_value(ptr undef, !6543, !DIExpression(), !6080)
    #dbg_value(i64 1, !6557, !DIExpression(), !6082)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !6083)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !6082)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6084)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6086)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6087)
  %i.br = add nuw nsw i64 %i.bh, 1, !dbg !6824
  %i.bs = icmp samesign ne i64 %i.br, %.val13, !dbg !6824
  tail call void @llvm.assume(i1 %i.bs), !dbg !6825
    #dbg_value(i8 poison, !6530, !DIExpression(), !6088)
    #dbg_value(i8 poison, !6574, !DIExpression(), !6078)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !6531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6089)
  %i.bt = icmp samesign ugt i8 %i.bp, -33, !dbg !6829
  br i1 %i.bt, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i, label %.loopexit62.split.us.i, !dbg !6829

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i
    #dbg_value(ptr undef, !6543, !DIExpression(), !6091)
    #dbg_value(i64 1, !6557, !DIExpression(), !6093)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6094)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6093)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6095)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6097)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6098)
  %i.bu = add nuw nsw i64 %i.bh, 2, !dbg !6831
  %i.bv = icmp samesign ne i64 %i.bu, %.val13, !dbg !6831
  tail call void @llvm.assume(i1 %i.bv), !dbg !6832
    #dbg_value(i8 poison, !6532, !DIExpression(), !6099)
    #dbg_value(i8 poison, !6574, !DIExpression(), !6101)
    #dbg_value(i8 poison, !6571, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6101)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !6533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6102)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !6571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6104)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !6531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !6089)
  %i.bw = icmp samesign ugt i8 %i.bp, -17, !dbg !6838
  br i1 %i.bw, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i, label %.loopexit62.split.us.i, !dbg !6838

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i
    #dbg_value(ptr undef, !6543, !DIExpression(), !6106)
    #dbg_value(i64 1, !6557, !DIExpression(), !6108)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !6109)
    #dbg_value(!DIArgList(ptr %.val, i64 %i.bh), !6561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !6108)
    #dbg_value(!DIArgList(ptr %.val, i64 %.val13), !6554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6110)
    #dbg_value(ptr poison, !6565, !DIExpression(), !6112)
    #dbg_value(ptr poison, !6568, !DIExpression(), !6113)
  %i.bx = add nuw nsw i64 %i.bh, 3, !dbg !6840
  %i.by = icmp samesign ne i64 %i.bx, %.val13, !dbg !6840
  tail call void @llvm.assume(i1 %i.by), !dbg !6841
    #dbg_value(i8 poison, !6534, !DIExpression(), !6114)
    #dbg_value(i8 poison, !6574, !DIExpression(), !6104)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !6531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6089)
  br label %.loopexit62.split.us.i, !dbg !6847

.split.us181.i:                                   ; preds = %bb.m, %.split.i.i.us.i, %bb.d, %.split.i.i.us.i.peel
  %.lcssa43 = phi i64 [ %.promoted177.i, %.split.i.i.us.i.peel ], [ %.promoted177.i, %bb.d ], [ %i.bh, %.split.i.i.us.i ], [ %i.bh, %bb.m ]
  %.lcssa40 = phi i8 [ %.promoted226.i, %.split.i.i.us.i.peel ], [ %.promoted226.i, %bb.d ], [ 1, %.split.i.i.us.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa40, 1
  store i8 %i.bz, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val13, i64 noundef %.lcssa43, i64 noundef %.val13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #21, !dbg !6858, !noalias !6618
  unreachable, !dbg !6858

.split186.us.i:                                   ; preds = %bb.e
  %i.ca = xor i8 %.promoted226.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
    #dbg_value(i32 0, !6578, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6119)
    #dbg_value(i32 undef, !6578, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6119)
  br i1 %i.l, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p, !dbg !6851

.loopexit62.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i, %bb.o, %bb.h
  %.lcssa45 = phi i64 [ %.promoted177.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6859

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split186.us.i
  store i8 1, ptr %i.h, align 2, !dbg !6860, !alias.scope !6619
  br label %bb.ah, !dbg !6861

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !6392, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6141)
    #dbg_value(ptr poison, !6393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6142)
    #dbg_value(ptr poison, !6630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
    #dbg_value(ptr poison, !6637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6149)
    #dbg_value(ptr poison, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
    #dbg_value(i64 %.val13, !6393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6142)
    #dbg_value(i64 %.val13, !6630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6145)
    #dbg_value(i64 %.val13, !6637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6149)
    #dbg_value(i64 %.val13, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6152)
  %i.cb = load i64, ptr %i.g, align 8, !dbg !6862, !alias.scope !6371, !noundef !520 ; 4 uses
  %.not.i = icmp ult i64 %i.cb, %.val13, !dbg !6862
  br i1 %.not.i, label %bb.s, label %bb.ah, !dbg !6862

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !6397, !DIExpression(), !6153)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6863 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !6863, !alias.scope !6371, !noundef !520 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1, !dbg !6863
    #dbg_value(i1 %i.ce, !6398, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6154)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !6864
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !6864, !alias.scope !6371, !nonnull !520, !noundef !520 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6864
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !6864, !alias.scope !6371, !noundef !520 ; 14 uses
    #dbg_value(ptr poison, !6650, !DIExpression(), !6179)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6185)
    #dbg_value(ptr poison, !6653, !DIExpression(), !6186)
    #dbg_value(ptr poison, !6653, !DIExpression(), !6187)
    #dbg_value(ptr poison, !6656, !DIExpression(), !6188)
    #dbg_value(ptr poison, !6656, !DIExpression(), !6189)
    #dbg_value(ptr poison, !6668, !DIExpression(), !6190)
    #dbg_value(ptr poison, !6668, !DIExpression(), !6191)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6198)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6202)
    #dbg_value(ptr poison, !6693, !DIExpression(), !6203)
    #dbg_value(ptr poison, !6693, !DIExpression(), !6204)
    #dbg_value(ptr poison, !6696, !DIExpression(), !6205)
    #dbg_value(ptr poison, !6696, !DIExpression(), !6206)
    #dbg_value(ptr %i.g, !6677, !DIExpression(), !6207)
    #dbg_value(ptr %i.g, !6677, !DIExpression(), !6208)
    #dbg_value(ptr %i.g, !6699, !DIExpression(), !6211)
    #dbg_value(ptr %i.g, !6699, !DIExpression(), !6213)
    #dbg_value(ptr %.val, !6678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(ptr %.val, !6678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr %.val, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6216)
    #dbg_value(ptr %.val, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6218)
    #dbg_value(ptr %.val, !6712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6221)
    #dbg_value(ptr %.val, !6712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6223)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6226)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6228)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6231)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6233)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6237)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6239)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6241)
    #dbg_value(i64 %.val13, !6678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(i64 %.val13, !6678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 %.val13, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6216)
    #dbg_value(i64 %.val13, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6218)
    #dbg_value(i64 %.val13, !6712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6221)
    #dbg_value(i64 %.val13, !6712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6223)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6226)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6228)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6231)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6233)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6235)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6237)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6239)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6241)
    #dbg_value(ptr %i.cg, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(ptr %i.cg, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(i64 %i.ci, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(i64 %i.ci, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 1, !6728, !DIExpression(), !6244)
    #dbg_value(i64 1, !6728, !DIExpression(), !6246)
    #dbg_value(i64 1, !6731, !DIExpression(), !6249)
    #dbg_value(i64 1, !6731, !DIExpression(), !6251)
    #dbg_value(i64 1, !6734, !DIExpression(), !6254)
    #dbg_value(i64 1, !6734, !DIExpression(), !6256)
    #dbg_value(i64 1, !6737, !DIExpression(), !6259)
    #dbg_value(i64 1, !6737, !DIExpression(), !6261)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6865 ; 8 uses
    #dbg_value(i64 poison, !6681, !DIExpression(), !6263)
    #dbg_value(i64 poison, !6681, !DIExpression(), !6264)
  %i.ck = add nsw i64 %i.ci, -1, !dbg !6866       ; 4 uses
  br i1 %i.ce, label %bb.ad, label %bb.v, !dbg !6867

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %.val, !6393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6142)
    #dbg_value(ptr %.val, !6630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
    #dbg_value(ptr %.val, !6637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6149)
    #dbg_value(ptr %.val, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
    #dbg_value(i64 %i.cb, !6634, !DIExpression(), !6145)
    #dbg_value(i64 %i.cb, !6641, !DIExpression(), !6149)
    #dbg_value(i64 %i.cb, !6647, !DIExpression(), !6152)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6868
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !6868, !alias.scope !6371, !noundef !520 ; 2 uses
  %i.cn = sub nuw i64 %.val13, %i.cb, !dbg !6869  ; 4 uses
    #dbg_value(i64 %i.cn, !6642, !DIExpression(), !6265)
    #dbg_value(i64 %i.cn, !6648, !DIExpression(), !6152)
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cb, !dbg !6870 ; 2 uses
    #dbg_value(i8 %i.cm, !6741, !DIExpression(), !6270)
    #dbg_value(i8 %i.cm, !6749, !DIExpression(), !6274)
    #dbg_value(ptr %i.co, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6270)
    #dbg_value(ptr %i.co, !6750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6274)
    #dbg_value(i64 %i.cn, !6745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6270)
    #dbg_value(i64 %i.cn, !6750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6274)
  %i.cp = icmp samesign ult i64 %i.cn, 16, !dbg !6871
  br i1 %i.cp, label %.lr.ph.i.i, label %bb.t, !dbg !6871

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !dbg !6872, !noalias !6753 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0, !dbg !6872
  %i.cs = extractvalue { i64, i64 } %i.cq, 1, !dbg !6872
    #dbg_value(i64 %i.cr, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %i.cs, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !6873
  br i1 %i.ct, label %.loopexit63.i, label %.loopexit64.i, !dbg !6873

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i, !6751, !DIExpression(), !6276)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.015.i.i, !dbg !6874
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !6874, !alias.scope !6754, !noalias !6753, !noundef !520
  %i.cw = icmp eq i8 %i.cv, %i.cm, !dbg !6874
  br i1 %i.cw, label %.loopexit63.i, label %bb.u, !dbg !6874

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.015.i.i, 1, !dbg !6875 ; 2 uses
    #dbg_value(i64 %i.cx, !6751, !DIExpression(), !6276)
  %exitcond.not.i27.i = icmp eq i64 %i.cx, %i.cn, !dbg !6876
  br i1 %exitcond.not.i27.i, label %.loopexit64.i, label %.lr.ph.i.i, !dbg !6876

.loopexit63.i:                                    ; preds = %.lr.ph.i.i, %bb.t
  %.sroa.5.0.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.015.i.i, %.lr.ph.i.i ], !dbg !6877 ; 2 uses
    #dbg_value(i64 1, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6747, !DIExpression(), !6279)
  %i.cy = icmp ult i64 %.sroa.5.0.i.i, %i.cn, !dbg !6878
    #dbg_value(i1 true, !6755, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6282)
  tail call void @llvm.assume(i1 %i.cy), !dbg !6879
    #dbg_value(i64 1, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6394, !DIExpression(), !6283)
  %i.cz = add i64 %.sroa.5.0.i.i, %i.cb, !dbg !6880 ; 2 uses
    #dbg_value(i64 %i.cz, !6395, !DIExpression(), !6284)
  %i.da = add i64 %i.cz, 1, !dbg !6881            ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !6881, !alias.scope !6371
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6882

.loopexit64.i:                                    ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 poison, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
  store i64 %.val13, ptr %i.g, align 8, !dbg !6883, !alias.scope !6371
  br label %bb.ah, !dbg !6884

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6757), !dbg !6885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6758), !dbg !6885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6759), !dbg !6885
    #dbg_value(i1 false, !6680, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6208)
    #dbg_value(i64 %i.ck, !6682, !DIExpression(), !6289)
  %.promoted.i.i = load i64, ptr %i.cj, align 8, !alias.scope !6760 ; 2 uses
  %i.db = add i64 %.promoted.i.i, %i.ck, !dbg !6886 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13, !dbg !6887
  br i1 %i.dc, label %.lr.ph.i28.i, label %._crit_edge.i.i, !dbg !6887

.lr.ph.i28.i:                                     ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !6760, !noundef !520
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !6760 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6760 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !6888
  br label %.lr.ph.split.i.i, !dbg !6888

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6889, !alias.scope !6760
  br label %bb.ah, !dbg !6890

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i28.i
  %i.dj = phi i64 [ %.sink94.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i ] ; 3 uses
  %i.dk = phi i64 [ %i.du, %bb.y ], [ %i.db, %.lr.ph.i28.i ]
  %i.dl = phi i64 [ %.sink95.i.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.i28.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dk, !dbg !6891
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !6892, !alias.scope !6758, !noalias !6753, !noundef !520
    #dbg_value(i8 %i.dn, !6683, !DIExpression(), !6290)
    #dbg_value(i8 %i.dn, !6704, !DIExpression(), !6213)
  %i.do = and i8 %i.dn, 63, !dbg !6893
  %i.dp = zext nneg i8 %i.do to i64, !dbg !6894
  %i.dq = shl nuw i64 1, %i.dp, !dbg !6895
  %i.dr = and i64 %i.dq, %i.de, !dbg !6895
  %.not.i29.i = icmp eq i64 %i.dr, 0, !dbg !6895
  br i1 %.not.i29.i, label %bb.w, label %bb.x, !dbg !6888

bb.w:                                             ; preds = %.lr.ph.split.i.i
end_hunk_0
begin_hunk_1_@_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(i64 %i.eh, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6300)
    #dbg_value(i64 %i.eh, !6690, !DIExpression(), !6304)
  %i.ei = icmp ult i64 %i.eh, %i.ci, !dbg !6915
  br i1 %i.ei, label %bb.aa, label %.split56.us.i.i, !dbg !6915

bb.aa:                                            ; preds = %.lr.ph104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh, !dbg !6915
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !6915, !alias.scope !6759, !noalias !6753, !noundef !520
  %i.el = add i64 %i.eh, %i.dl, !dbg !6916        ; 2 uses
    #dbg_value(i64 %i.el, !6720, !DIExpression(), !6237)
    #dbg_value(i64 %i.el, !6725, !DIExpression(), !6241)
  %i.em = icmp ult i64 %i.el, %.val13, !dbg !6917
  tail call void @llvm.assume(i1 %i.em), !dbg !6918
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el, !dbg !6919
  %i.eo = load i8, ptr %i.en, align 1, !dbg !6920, !alias.scope !6758, !noalias !6753, !noundef !520
  %.not44.i.i = icmp eq i8 %i.ek, %i.eo, !dbg !6915
  br i1 %.not44.i.i, label %.preheader60.i.i, label %bb.ab, !dbg !6915

.split56.us.i.i:                                  ; preds = %.lr.ph104
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6915, !noalias !6772
  unreachable, !dbg !6915

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i64 %i.dl, %i.dh, !dbg !6921
  br label %bb.y, !dbg !6922

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i102, !dbg !6923
  br label %bb.y, !dbg !6924

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6773), !dbg !6925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6774), !dbg !6925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6775), !dbg !6925
    #dbg_value(i1 true, !6680, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6207)
    #dbg_value(i64 %i.ck, !6682, !DIExpression(), !6310)
  %.promoted.i32.i = load i64, ptr %i.cj, align 8, !alias.scope !6776 ; 2 uses
  %i.er = add i64 %.promoted.i32.i, %i.ck, !dbg !6926 ; 2 uses
  %i.es = icmp ult i64 %i.er, %.val13, !dbg !6927
  br i1 %i.es, label %.lr.ph.i35.i, label %._crit_edge.i33.i, !dbg !6927

.lr.ph.i35.i:                                     ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !6776, !noundef !520
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !6776
  %.fr235.i = freeze i64 %i.ev, !dbg !6928        ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6776
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr235.i, i64 range(i64 0, -9223372036854775808) %i.ci), !dbg !6928
  %i.ey = add i64 %.fr235.i, -1, !dbg !6928       ; 2 uses
  %.first_iter.i36.i = icmp ult i64 %i.ey, %i.ci
  %exitcond.not.i37.i106.not = icmp ult i64 %.fr235.i, %i.ci
  %invariant.op146 = sub i64 1, %.fr235.i, !dbg !6928
  %.not58.i.us.i109 = icmp eq i64 %.fr235.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i, !dbg !6928

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i35.i
  %i.ez = phi i64 [ %i.fy, %bb.ag ], [ %i.er, %.lr.ph.i35.i ]
  %i.fa = phi i64 [ %.sink.i38.i, %bb.ag ], [ %.promoted.i32.i, %.lr.ph.i35.i ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ez, !dbg !6929
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !6930, !alias.scope !6774, !noalias !6753, !noundef !520
    #dbg_value(i8 %i.fc, !6683, !DIExpression(), !6311)
    #dbg_value(i8 %i.fc, !6704, !DIExpression(), !6211)
  %i.fd = and i8 %i.fc, 63, !dbg !6931
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !6932
  %i.ff = shl nuw i64 1, %i.fe, !dbg !6933
  %i.fg = and i64 %i.ff, %i.eu, !dbg !6933
  %.not.us.i.i = icmp eq i64 %i.fg, 0, !dbg !6933
  br i1 %.not.us.i.i, label %bb.af, label %.preheader59.i.i.preheader, !dbg !6928

.preheader59.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
    #dbg_value(i64 %.fr235.i, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6198)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6313)
  br i1 %exitcond.not.i37.i106.not, label %.lr.ph108, label %.preheader.i39.preheader.i, !dbg !6934

.preheader59.i.i:                                 ; preds = %.lr.ph108
  %i.fh = add i64 %.sroa.04.0.us.i.i107, 1, !dbg !6935 ; 2 uses
    #dbg_value(i64 %i.fh, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %i.fh, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6198)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6313)
  %exitcond.not.i37.i = icmp eq i64 %i.fh, %umax.i.i, !dbg !6936
  br i1 %exitcond.not.i37.i, label %.preheader.i39.preheader.i, label %.lr.ph108, !dbg !6934

.preheader.i39.preheader.i:                       ; preds = %.preheader59.i.i, %.preheader59.i.i.preheader
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
  br i1 %.first_iter.i36.i, label %.preheader.i39.us.i.preheader, label %.preheader.i39.i

.preheader.i39.us.i.preheader:                    ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %.fr235.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.lr.ph111, !dbg !6937

.preheader.i39.us.i:                              ; preds = %.lr.ph111
    #dbg_value(i64 %i.fi, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
  %.not58.i.us.i = icmp eq i64 %i.fi, 0, !dbg !6938
  br i1 %.not58.i.us.i, label %.split.us.i41.i, label %.lr.ph111, !dbg !6937

.lr.ph111:                                        ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i
  %.sroa.2.0.us.i.us.i110 = phi i64 [ %i.fi, %.preheader.i39.us.i ], [ %.fr235.i, %.preheader.i39.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6735, !DIExpression(), !6254)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6738, !DIExpression(), !6259)
  %i.fi = add i64 %.sroa.2.0.us.i.us.i110, -1, !dbg !6939 ; 4 uses
    #dbg_value(i64 %i.fi, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %i.fi, !6690, !DIExpression(), !6316)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fi, !dbg !6940
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !6940, !alias.scope !6775, !noalias !6753, !noundef !520
  %i.fl = add i64 %i.fi, %i.fa, !dbg !6941        ; 2 uses
    #dbg_value(i64 %i.fl, !6720, !DIExpression(), !6235)
    #dbg_value(i64 %i.fl, !6725, !DIExpression(), !6239)
  %i.fm = icmp ult i64 %i.fl, %.val13, !dbg !6942
  tail call void @llvm.assume(i1 %i.fm), !dbg !6943
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fl, !dbg !6944
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !6945, !alias.scope !6774, !noalias !6753, !noundef !520
  %.not44.us.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !6940
  br i1 %.not44.us.i.us.i, label %.preheader.i39.us.i, label %.split.us.i, !dbg !6940

.split.us.i:                                      ; preds = %.lr.ph111
  %i.fp = add i64 %i.fa, %i.ex, !dbg !6946
  br label %bb.ag, !dbg !6947

.lr.ph108:                                        ; preds = %.preheader59.i.i.preheader, %.preheader59.i.i
  %.sroa.04.0.us.i.i107 = phi i64 [ %i.fh, %.preheader59.i.i ], [ %.fr235.i, %.preheader59.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6694, !DIExpression(), !6317)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6729, !DIExpression(), !6244)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6732, !DIExpression(), !6249)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6686, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6687, !DIExpression(), !6318)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i107, !dbg !6948
  %i.fr = load i8, ptr %i.fq, align 1, !dbg !6948, !alias.scope !6775, !noalias !6753, !noundef !520
  %i.fs = add i64 %.sroa.04.0.us.i.i107, %i.fa, !dbg !6949 ; 2 uses
    #dbg_value(i64 %i.fs, !6720, !DIExpression(), !6226)
    #dbg_value(i64 %i.fs, !6725, !DIExpression(), !6231)
  %i.ft = icmp ult i64 %i.fs, %.val13, !dbg !6950
  tail call void @llvm.assume(i1 %i.ft), !dbg !6951
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fs, !dbg !6952
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !6953, !alias.scope !6774, !noalias !6753, !noundef !520
  %.not45.us.i.i = icmp eq i8 %i.fr, %i.fv, !dbg !6948
  br i1 %.not45.us.i.i, label %.preheader59.i.i, label %bb.ae, !dbg !6948

.preheader.i39.i:                                 ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %i.ev, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.split56.us.i40.i, !dbg !6937

.split56.us.i40.i:                                ; preds = %.preheader.i39.i
    #dbg_value(i64 %i.ev, !6735, !DIExpression(), !6254)
    #dbg_value(i64 %i.ev, !6738, !DIExpression(), !6259)
    #dbg_value(i64 %i.ey, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %i.ey, !6690, !DIExpression(), !6316)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6940, !noalias !6777
  unreachable, !dbg !6940

bb.ae:                                            ; preds = %.lr.ph108
  %.reass302.i.reass.reass = add i64 %i.fa, %invariant.op146
  %i.fw = add i64 %.reass302.i.reass.reass, %.sroa.04.0.us.i.i107, !dbg !6954
  br label %bb.ag, !dbg !6955

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fx = add i64 %i.fa, %i.ci, !dbg !6956
  br label %bb.ag, !dbg !6957

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i38.i = phi i64 [ %i.fx, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %.split.us.i ] ; 3 uses
  store i64 %.sink.i38.i, ptr %i.cj, align 8, !dbg !6958, !alias.scope !6776
  %i.fy = add i64 %.sink.i38.i, %i.ck, !dbg !6926 ; 2 uses
    #dbg_value(i64 %i.fy, !6709, !DIExpression(), !6216)
    #dbg_value(i64 %i.fy, !6715, !DIExpression(), !6221)
  %i.fz = icmp ult i64 %i.fy, %.val13, !dbg !6927
  br i1 %i.fz, label %.lr.ph.split.us.i.i, label %._crit_edge.i33.i, !dbg !6927

._crit_edge.i33.i:                                ; preds = %bb.ag, %bb.ad
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6959, !alias.scope !6776
  br label %bb.ah, !dbg !6960

.split.us.i41.i:                                  ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i, %.preheader.i39.i
  %i.ga = add i64 %i.fa, %i.ci, !dbg !6961        ; 2 uses
  store i64 %i.ga, ptr %i.cj, align 8, !dbg !6961, !alias.scope !6776
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6962

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.split186.us.i.thread, %.split.us.i41.i, %.split.us.i31.i, %.loopexit63.i, %.loopexit62.split.us.i, %.split186.us.i
  %.sroa.9.0 = phi i64 [ %.val13, %.split186.us.i ], [ %i.eg, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.da, %.loopexit63.i ], [ %i.ga, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6963
  %.sroa.4.015 = phi i64 [ %.val13, %.split186.us.i ], [ %i.dl, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.cz, %.loopexit63.i ], [ %i.fa, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6963
    #dbg_value(ptr %.val, !6345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6352)
    #dbg_value(ptr %.val, !6353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(ptr %.val, !6361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_value(i64 %.sroa.4.015, !6346, !DIExpression(), !6778)
    #dbg_value(i64 %.sroa.4.015, !6356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(i64 %.sroa.4.015, !6365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6370)
    #dbg_value(i64 %.sroa.9.0, !6347, !DIExpression(), !6778)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6964 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !6964, !noundef !520 ; 2 uses
    #dbg_value(i64 %i.gc, !6356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(i64 %i.gc, !6365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_value(i64 %i.gc, !6779, !DIExpression(), !6783)
    #dbg_value(ptr %.val, !6366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6784)
    #dbg_value(i64 poison, !6366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6784)
  %i.gd = sub nuw i64 %.sroa.4.015, %i.gc, !dbg !6965
    #dbg_value(i64 %i.gd, !6367, !DIExpression(), !6785)
    #dbg_value(ptr %.val, !6780, !DIExpression(), !6783)
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gc, !dbg !6966
    #dbg_value(ptr %i.ge, !6348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6786)
    #dbg_value(i64 %i.gd, !6348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6786)
  store i64 %.sroa.9.0, ptr %i.gb, align 8, !dbg !6967
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !6968

bb.ah:                                            ; preds = %bb.p, %.preheader.i, %._crit_edge.i33.i, %._crit_edge.i.i, %.loopexit64.i, %bb.q
    #dbg_value(ptr %0, !6787, !DIExpression(), !6324)
  store i8 1, ptr %i.a, align 1, !dbg !6969, !alias.scope !6791
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6970
  %i.gg = load i8, ptr %i.gf, align 8, !dbg !6970, !range !6351, !alias.scope !6791, !noundef !520
  %i.gh = trunc nuw i8 %i.gg to i1, !dbg !6970
  br i1 %i.gh, label %._crit_edge.i, label %bb.ai, !dbg !6970

._crit_edge.i:                                    ; preds = %bb.ah
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6971, !alias.scope !6791
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i = load i64, ptr %.phi.trans.insert13.i, align 8, !dbg !6972, !alias.scope !6791
  br label %bb.aj, !dbg !6970

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6973
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !6973, !alias.scope !6791, !noundef !520 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6974
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !6974, !alias.scope !6791, !noundef !520 ; 2 uses
  %.not.i14 = icmp eq i64 %i.gj, %i.gl, !dbg !6973
  br i1 %.not.i14, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, label %bb.aj, !dbg !6973

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.gm = phi i64 [ %.pre14.i, %._crit_edge.i ], [ %i.gj, %bb.ai ], !dbg !6972
  %i.gn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gl, %bb.ai ], !dbg !6971 ; 2 uses
    #dbg_value(ptr %.val, !6792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6329)
    #dbg_value(ptr %.val, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6334)
    #dbg_value(i64 poison, !6792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6329)
    #dbg_value(i64 poison, !6795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6334)
    #dbg_value(i64 %i.gn, !6793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6329)
    #dbg_value(i64 %i.gn, !6796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6334)
    #dbg_value(i64 %i.gn, !6800, !DIExpression(), !6337)
    #dbg_value(i64 %i.gm, !6793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6329)
    #dbg_value(i64 %i.gm, !6796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6334)
    #dbg_value(ptr %.val, !6797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6338)
    #dbg_value(i64 poison, !6797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6338)
  %i.go = sub nuw i64 %i.gm, %i.gn, !dbg !6975
    #dbg_value(i64 %i.go, !6798, !DIExpression(), !6339)
    #dbg_value(ptr %.val, !6801, !DIExpression(), !6337)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn, !dbg !6976
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !6977

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.aj, %bb.ai, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gd, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.go, %bb.aj ], [ undef, %bb.ai ], !dbg !6350
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.ge, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.gp, %bb.aj ], [ null, %bb.ai ], !dbg !6350
  %i.gq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0, !dbg !6978
  %i.gr = insertvalue { ptr, i64 } %i.gq, i64 %.sroa.4.1, 1, !dbg !6978
  ret { ptr, i64 } %i.gr, !dbg !6978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1p_NtB19_4LeafE16push_with_handleCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6981 {
bb.a:
    #dbg_value(ptr %1, !6996, !DIExpression(), !7002)
    #dbg_value(ptr %1, !7003, !DIExpression(), !7010)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7017)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7021)
    #dbg_value(ptr %1, !7022, !DIExpression(), !7026)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7028)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7031)
    #dbg_value(ptr %1, !7032, !DIExpression(), !7036)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7038)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7041)
    #dbg_declare(ptr %2, !6997, !DIExpression(), !7042)
    #dbg_declare(ptr %3, !6998, !DIExpression(), !7043)
    #dbg_declare(ptr poison, !7044, !DIExpression(), !7048)
    #dbg_declare(ptr poison, !7049, !DIExpression(), !7055)
    #dbg_declare(ptr poison, !7044, !DIExpression(), !7057)
    #dbg_declare(ptr poison, !7049, !DIExpression(), !7060)
  %i.a = load ptr, ptr %1, align 8, !dbg !7093, !nonnull !520, !noundef !520 ; 4 uses
    #dbg_value(ptr %i.a, !6999, !DIExpression(DW_OP_plus_uconst, 538, DW_OP_stack_value), !7061)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538, !dbg !7094 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !dbg !7094, !noundef !520 ; 3 uses
    #dbg_value(i16 %i.c, !7062, !DIExpression(), !7065)
    #dbg_value(i16 %i.c, !7000, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7066)
    #dbg_value(i16 %i.c, !7023, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7026)
    #dbg_value(i16 %i.c, !7067, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7071)
    #dbg_value(i16 %i.c, !7072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7076)
    #dbg_value(i16 %i.c, !7033, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7036)
    #dbg_value(i16 %i.c, !7067, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7078)
    #dbg_value(i16 %i.c, !7072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7081)
    #dbg_value(i16 %i.c, !7082, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7090)
  %i.d = icmp ult i16 %i.c, 11, !dbg !7095
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !7095, !prof !1027

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
          to label %bb.e unwind label %bb.d, !dbg !7096

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %i.c to i64, !dbg !7097    ; 3 uses
    #dbg_value(i64 %i.e, !7000, !DIExpression(), !7066)
    #dbg_value(i64 %i.e, !7023, !DIExpression(), !7026)
    #dbg_value(i64 %i.e, !7067, !DIExpression(), !7071)
    #dbg_value(i64 %i.e, !7072, !DIExpression(), !7076)
    #dbg_value(i64 %i.e, !7033, !DIExpression(), !7036)
    #dbg_value(i64 %i.e, !7067, !DIExpression(), !7078)
    #dbg_value(i64 %i.e, !7072, !DIExpression(), !7081)
    #dbg_value(i64 %i.e, !7082, !DIExpression(), !7090)
  %i.f = add nuw nsw i16 %i.c, 1, !dbg !7098
  store i16 %i.f, ptr %i.b, align 2, !dbg !7098
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7099
    #dbg_value(ptr %i.g, !7068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7071)
    #dbg_value(i64 11, !7068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7071)
    #dbg_value(ptr %i.g, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7076)
    #dbg_value(i64 11, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7076)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e, !dbg !7100
    #dbg_value(ptr %i.h, !7045, !DIExpression(), !7091)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !7101
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !7102
    #dbg_value(ptr %i.i, !7068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 11, !7068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
    #dbg_value(ptr %i.i, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7081)
    #dbg_value(i64 11, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7081)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e, !dbg !7103
    #dbg_value(ptr %i.j, !7045, !DIExpression(), !7092)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !7104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7105
  %i.l = load i64, ptr %i.k, align 8, !dbg !7105, !noundef !520
    #dbg_value(ptr %i.a, !7087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7090)
    #dbg_value(i64 %i.l, !7087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7090)
  store ptr %i.a, ptr %0, align 8, !dbg !7106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7106
  store i64 %i.l, ptr %i.m, align 8, !dbg !7106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7106
  store i64 %i.e, ptr %i.n, align 8, !dbg !7106
  ret void, !dbg !7107

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #18
          to label %bb.g unwind label %bb.f, !dbg !7108

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !7109
  unreachable, !dbg !7109

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %bb.h unwind label %bb.f, !dbg !7108

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o, !dbg !7109
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCshhfsHpF03Qr_6netlog4http11parse_event(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7285 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [64 x i8], align 8                ; 6 uses
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!6416 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::EmptyNeedle", baseType: !250, size: 64, align: 64, dwarfAddressSpace: 0)
!6417 = !DILocalVariable(name: "searcher", scope: !5979, file: !1483, line: 1140, type: !6416, align: 64)
!6418 = !DILocalVariable(name: "is_match", scope: !5977, file: !1483, line: 1145, type: !1023, align: 8)
!6419 = !DILocalVariable(name: "pos", scope: !5976, file: !1483, line: 1147, type: !479, align: 64)
!6420 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_UTF)
!6421 = !DILocalVariable(name: "ch", scope: !5975, file: !1483, line: 1154, type: !6420, align: 32)
!6422 = !DILocalVariable(name: "searcher", scope: !5974, file: !1483, line: 1160, type: !6391, align: 64)
!6423 = !DILocalVariable(name: "bytes", scope: !5973, file: !1483, line: 1161, type: !161, align: 64)
!6424 = !DILocalVariable(name: "pos", scope: !5972, file: !1483, line: 1162, type: !479, align: 64)
!6425 = !DILocalVariable(name: "end", scope: !5971, file: !1483, line: 1172, type: !479, align: 64)
!6426 = !DILocalVariable(name: "searcher", scope: !5970, file: !1483, line: 1177, type: !6396, align: 64)
!6427 = !DILocalVariable(name: "is_long", scope: !5969, file: !1483, line: 1186, type: !1023, align: 8)
!6428 = !DILocalVariable(name: "a", scope: !5968, file: !1483, line: 1192, type: !479, align: 64)
!6429 = !DILocalVariable(name: "b", scope: !5968, file: !1483, line: 1192, type: !479, align: 64)
!6430 = !DILocalVariable(name: "b", scope: !5967, file: !1483, line: 1194, type: !479, align: 64)
!6431 = !DILocalVariable(name: "otherwise", scope: !5966, file: !1483, line: 1198, type: !5965, align: 64)
!6432 = !{!6415, !6417, !6418, !6419, !6421, !6422, !6423, !6424, !6425, !6426, !6427, !6428, !6429, !6430, !6431}
!6433 = !{!5982}
!6434 = !DILocalVariable(name: "start", scope: !5988, file: !1481, line: 525, type: !479, align: 64)
!6435 = !DINamespace(name: "{impl#11}", scope: !1482)
!6436 = !{!30, !5985, !30, !748}
!6437 = !DISubroutineType(types: !6436)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5985, file: !319, baseType: !479, size: 64, align: 64, flags: DIFlagPublic)
!6439 = !{!6438}
!6440 = !DILocalVariable(name: "self", arg: 1, scope: !5987, file: !1481, line: 524, type: !5985)
!6441 = !DILocalVariable(name: "slice", arg: 2, scope: !5987, file: !1481, line: 524, type: !30)
!6442 = !DILocalVariable(name: "end", scope: !5988, file: !1481, line: 525, type: !479, align: 64)
!6443 = !DILocalVariable(name: "s", scope: !5986, file: !1481, line: 527, type: !30, align: 64)
!6444 = !{!6440, !6441, !6434, !6442, !6443}
!6445 = !DINamespace(name: "{impl#4}", scope: !1482)
!6446 = !{!30, !30, !5985, !748}
!6447 = !DISubroutineType(types: !6446)
!6448 = !DILocalVariable(name: "self", arg: 1, scope: !5989, file: !1481, line: 62, type: !30)
!6449 = !DILocalVariable(name: "index", arg: 2, scope: !5989, file: !1481, line: 62, type: !5985)
!6450 = !{!6448, !6449}
!6451 = !DITemplateTypeParameter(name: "I", type: !5985)
!6452 = !{!6451}
!6453 = !DILocalVariable(name: "self", arg: 1, scope: !5995, file: !1481, line: 492, type: !5985)
!6454 = !{!259, !5985, !30}
!6455 = !DISubroutineType(types: !6454)
!6456 = !DILocalVariable(name: "slice", arg: 2, scope: !5995, file: !1481, line: 492, type: !30)
!6457 = !{!6453, !6456}
!6458 = !DILocalVariable(name: "self", arg: 1, scope: !5998, file: !1479, line: 375, type: !30)
!6459 = !{!1023, !30, !479}
!6460 = !DISubroutineType(types: !6459)
!6461 = !DILocalVariable(name: "index", arg: 2, scope: !5998, file: !1479, line: 375, type: !479)
!6462 = !{!6458, !6461}
!6463 = !DILocalVariable(name: "slice", arg: 2, scope: !6002, file: !1481, line: 512, type: !30)
!6464 = !{!88, !5985, !88}
!6465 = !DISubroutineType(types: !6464)
!6466 = !DILocalVariable(name: "self", scope: !6002, file: !1481, line: 512, type: !5985, align: 64)
!6467 = !DILocalVariable(name: "len", scope: !6001, file: !1481, line: 513, type: !479, align: 64)
!6468 = !{!6466, !6463, !6467}
!6469 = !DILocalVariable(name: "slice", arg: 2, scope: !6007, file: !1481, line: 199, type: !30)
!6470 = !DILocalVariable(name: "self", scope: !6007, file: !1481, line: 199, type: !128, align: 64)
!6471 = !DILocalVariable(name: "slice", scope: !6006, file: !1481, line: 200, type: !160, align: 64)
!6472 = !DILocalVariable(name: "new_len", scope: !6005, file: !1481, line: 221, type: !479, align: 64)
!6473 = !{!6470, !6469, !6471, !6472}
!6474 = !DILocalVariable(name: "count", arg: 2, scope: !6010, file: !959, line: 838, type: !479)
!6475 = !{!666, !666, !479, !748}
!6476 = !DISubroutineType(types: !6475)
!6477 = !DILocalVariable(name: "self", arg: 1, scope: !6010, file: !959, line: 838, type: !666)
!6478 = !{!6477, !6474}
!6479 = !{!6014}
!6480 = !{!6017, !5982, !6015, !5945}
!6481 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ecb2f290941f286067e076e0d471735a")
!6482 = !DILocalVariable(name: "self", arg: 1, scope: !6018, file: !6481, line: 1229, type: !392)
!6483 = !DINamespace(name: "{impl#6}", scope: !658)
!6484 = !{!1023, !392}
!6485 = !DISubroutineType(types: !6484)
!6486 = !{!6482}
!6487 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Chars", baseType: !6026, size: 64, align: 64, dwarfAddressSpace: 0)
!6488 = !DILocalVariable(name: "self", arg: 1, scope: !6031, file: !1425, line: 39, type: !6487)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !6026, file: !319, baseType: !6025, size: 128, align: 64, flags: DIFlagProtected)
!6490 = !{!6489}
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !6025, file: !319, baseType: !60, size: 64, align: 64, flags: DIFlagPrivate)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !6025, file: !319, baseType: !666, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !6025, file: !319, baseType: !6024, align: 8, offset: 128, flags: DIFlagPrivate)
!6494 = !{!6491, !6492, !6493}
!6495 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&u8", baseType: !392, size: 64, align: 64, dwarfAddressSpace: 0)
!6496 = !DITemplateTypeParameter(name: "T", type: !6495)
!6497 = !{!6496}
!6498 = !DINamespace(name: "{impl#0}", scope: !1427)
!6499 = !{!6030, !6487}
!6500 = !DISubroutineType(types: !6499)
!6501 = !{!6029}
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6029, file: !319, baseType: !6028, size: 32, align: 32, extraData: i32 -1)
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6029, file: !319, baseType: !6027, size: 32, align: 32)
!6504 = !{!6502, !6503}
!6505 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6027, file: !319, baseType: !6420, size: 32, align: 32, flags: DIFlagPublic)
!6506 = !{!6505}
!6507 = !DITemplateTypeParameter(name: "T", type: !6420)
!6508 = !{!6507}
!6509 = !DIDerivedType(tag: DW_TAG_member, scope: !6030, file: !319, baseType: !754, size: 32, align: 32, flags: DIFlagArtificial)
!6510 = !{!6488}
!6511 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!6512 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<u8>", baseType: !6025, size: 64, align: 64, dwarfAddressSpace: 0)
!6513 = !DILocalVariable(name: "bytes", arg: 1, scope: !6047, file: !6511, line: 35, type: !6512)
!6514 = !DINamespace(name: "validations", scope: !1426)
!6515 = !{!6037, !6512}
!6516 = !DISubroutineType(types: !6515)
!6517 = !{!6036}
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6036, file: !319, baseType: !6035, size: 64, align: 32, extraData: i32 0)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6036, file: !319, baseType: !6034, size: 64, align: 32, extraData: i32 1)
!6520 = !{!6518, !6519}
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6034, file: !319, baseType: !754, size: 32, align: 32, offset: 32, flags: DIFlagPublic)
!6522 = !{!6521}
!6523 = !DITemplateTypeParameter(name: "T", type: !754)
!6524 = !{!6523}
!6525 = !DIDerivedType(tag: DW_TAG_member, scope: !6037, file: !319, baseType: !754, size: 32, align: 32, flags: DIFlagArtificial)
!6526 = !DILocalVariable(name: "x", scope: !6046, file: !6511, line: 37, type: !392, align: 8)
!6527 = !DILocalVariable(name: "residual", scope: !6045, file: !6511, line: 37, type: !157, align: 8)
!6528 = !DILocalVariable(name: "val", scope: !6044, file: !6511, line: 37, type: !6495, align: 64)
!6529 = !DILocalVariable(name: "init", scope: !6043, file: !6511, line: 45, type: !754, align: 32)
!6530 = !DILocalVariable(name: "y", scope: !6042, file: !6511, line: 48, type: !392, align: 8)
!6531 = !DILocalVariable(name: "ch", scope: !6041, file: !6511, line: 49, type: !754, align: 32)
!6532 = !DILocalVariable(name: "z", scope: !6040, file: !6511, line: 55, type: !392, align: 8)
!6533 = !DILocalVariable(name: "y_z", scope: !6039, file: !6511, line: 56, type: !754, align: 32)
!6534 = !DILocalVariable(name: "w", scope: !6038, file: !6511, line: 63, type: !392, align: 8)
!6535 = !{!6513, !6526, !6527, !6528, !6529, !6530, !6531, !6532, !6533, !6534}
!6536 = !DITemplateTypeParameter(name: "I", type: !6025)
!6537 = !{!6536}
!6538 = !DILocalVariable(name: "width", scope: !6050, file: !6511, line: 10, type: !754, align: 32)
!6539 = !{!754, !392, !754}
!6540 = !DISubroutineType(types: !6539)
!6541 = !DILocalVariable(name: "byte", arg: 1, scope: !6050, file: !6511, line: 10, type: !392)
!6542 = !{!6541, !6538}
!6543 = !DILocalVariable(name: "self", arg: 1, scope: !6060, file: !1085, line: 157, type: !6512)
!6544 = !{!6056, !6512}
!6545 = !DISubroutineType(types: !6544)
!6546 = !{!6055}
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6055, file: !319, baseType: !6054, size: 64, align: 64, extraData: i64 0)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6055, file: !319, baseType: !6053, size: 64, align: 64)
!6549 = !{!6547, !6548}
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6053, file: !319, baseType: !6495, size: 64, align: 64, flags: DIFlagPublic)
!6551 = !{!6550}
!6552 = !DIDerivedType(tag: DW_TAG_member, scope: !6056, file: !319, baseType: !323, size: 64, align: 64, flags: DIFlagArtificial)
!6553 = !DILocalVariable(name: "ptr", scope: !6059, file: !1085, line: 161, type: !60, align: 64)
!6554 = !DILocalVariable(name: "end_or_len", scope: !6058, file: !1085, line: 162, type: !666, align: 64)
!6555 = !DILocalVariable(name: "len", scope: !6057, file: !1085, line: 167, type: !479, align: 64)
!6556 = !{!6543, !6553, !6554, !6555}
!6557 = !DILocalVariable(name: "count", scope: !6063, file: !1132, line: 619, type: !479, align: 64)
!6558 = !{!60, !60, !479}
!6559 = !DISubroutineType(types: !6558)
!6560 = !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhE3addCshhfsHpF03Qr_6netlog", scope: !60, file: !1132, line: 619, type: !6559, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !652)
!6561 = !DILocalVariable(name: "self", arg: 1, scope: !6063, file: !1132, line: 619, type: !60)
!6562 = !{!6561, !6557}
!6564 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<u8>", baseType: !60, size: 64, align: 64, dwarfAddressSpace: 0)
!6565 = !DILocalVariable(name: "self", arg: 1, scope: !6068, file: !1132, line: 1662, type: !6564)
!6566 = !{!1023, !6564, !6564}
!6567 = !DISubroutineType(types: !6566)
!6568 = !DILocalVariable(name: "other", arg: 2, scope: !6068, file: !1132, line: 1662, type: !6564)
!6569 = !{!6565, !6568}
!6570 = !{!6073, !6017, !5982, !6015, !5945}
!6571 = !DILocalVariable(name: "ch", arg: 1, scope: !6076, file: !6511, line: 16, type: !754)
!6572 = !{!754, !754, !392}
!6573 = !DISubroutineType(types: !6572)
!6574 = !DILocalVariable(name: "byte", arg: 2, scope: !6076, file: !6511, line: 16, type: !392)
!6575 = !{!6571, !6574}
!6576 = !DILexicalBlockFile(scope: !6046, file: !1016, discriminator: 0)
!6578 = !DILocalVariable(name: "self", arg: 1, scope: !6117, file: !1001, line: 1160, type: !6037)
!6579 = !{!6030, !6037, !6115}
!6580 = !DISubroutineType(types: !6579)
!6581 = !DINamespace(name: "next", scope: !6498)
!6582 = !DITemplateTypeParameter(name: "U", type: !6420)
!6583 = !DITemplateTypeParameter(name: "F", type: !6115)
!6584 = !{!6523, !6582, !6583}
!6585 = !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECshhfsHpF03Qr_6netlog", scope: !6037, file: !1001, line: 1160, type: !6580, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6584)
!6586 = !DILocalVariable(name: "f", scope: !6117, file: !1001, line: 1160, type: !6115, align: 8)
!6587 = !DILocalVariable(name: "x", scope: !6116, file: !1001, line: 1165, type: !754, align: 32)
!6588 = !{!6578, !6586, !6587}
!6590 = !DILocalVariable(name: "ch", arg: 2, scope: !6121, file: !1425, line: 42, type: !754)
!6591 = !{!6420, !6115, !754}
!6592 = !DISubroutineType(types: !6591)
!6593 = !{!6590}
!6594 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1840c9c224abdf76ae16ee490ed67bf6")
!6595 = !DILocalVariable(name: "i", arg: 1, scope: !6124, file: !6594, line: 243, type: !754)
!6596 = !DINamespace(name: "char", scope: !320)
!6597 = !DINamespace(name: "methods", scope: !6596)
!6598 = !DINamespace(name: "{impl#0}", scope: !6597)
!6599 = !{!6420, !754}
!6600 = !DISubroutineType(types: !6599)
!6601 = !{!6595}
!6602 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "06f18dc36f52feefd195ff986dbdcce9")
!6603 = !DILocalVariable(name: "i", arg: 1, scope: !6127, file: !6602, line: 26, type: !754)
!6604 = !DINamespace(name: "convert", scope: !6596)
!6605 = !{!6420, !754, !748}
!6606 = !DISubroutineType(types: !6605)
!6607 = !{!6603}
!6608 = !DILocalVariable(name: "self", arg: 1, scope: !6131, file: !6594, line: 667, type: !6420)
!6609 = !{!479, !6420}
!6610 = !DISubroutineType(types: !6609)
!6611 = !{!6608}
!6612 = !DILocalVariable(name: "code", arg: 1, scope: !6134, file: !6594, line: 2488, type: !754)
!6613 = !{!479, !754}
!6614 = !DISubroutineType(types: !6613)
!6615 = !{!6612}
!6616 = !{!5982, !5945}
!6617 = !{!6140}
!6618 = !{!6017, !6140, !6015, !5945}
!6619 = !{!6140, !5945}
!6620 = !{!6073, !6017, !6140, !6015, !5945}
!6630 = !DILocalVariable(name: "self", arg: 1, scope: !6143, file: !926, line: 18, type: !161)
!6631 = !DINamespace(name: "{impl#0}", scope: !931)
!6632 = !{!161, !161, !5985, !748}
!6633 = !DISubroutineType(types: !6632)
!6634 = !DILocalVariable(name: "index", scope: !6143, file: !926, line: 18, type: !5985, align: 64)
!6635 = !{!6630, !6634}
!6636 = !{!651, !6451}
!6637 = !DILocalVariable(name: "slice", arg: 2, scope: !6147, file: !926, line: 543, type: !161)
!6638 = !DINamespace(name: "{impl#7}", scope: !931)
!6639 = !{!161, !5985, !161, !748}
!6640 = !DISubroutineType(types: !6639)
!6641 = !DILocalVariable(name: "self", scope: !6147, file: !926, line: 543, type: !5985, align: 64)
!6642 = !DILocalVariable(name: "new_len", scope: !6146, file: !926, line: 549, type: !479, align: 64)
!6643 = !{!6641, !6637, !6642}
!6644 = !DILocalVariable(name: "ptr", arg: 1, scope: !6150, file: !926, line: 84, type: !161)
!6645 = !{!160, !160, !479, !479}
!6646 = !DISubroutineType(types: !6645)
!6647 = !DILocalVariable(name: "offset", arg: 2, scope: !6150, file: !926, line: 85, type: !479)
!6648 = !DILocalVariable(name: "len", arg: 3, scope: !6150, file: !926, line: 86, type: !479)
!6649 = !{!6644, !6647, !6648}
!6650 = !DILocalVariable(name: "self", arg: 1, scope: !6155, file: !1044, line: 2192, type: !1019)
!6651 = !DILocalVariable(name: "other", arg: 2, scope: !6155, file: !1044, line: 2192, type: !1019)
!6652 = !{!6650, !6651}
!6653 = !DILocalVariable(name: "self", arg: 1, scope: !6156, file: !1034, line: 1141, type: !1035)
!6654 = !{!6653}
!6655 = !DINamespace(name: "{impl#7}", scope: !1037)
!6656 = !DILocalVariable(name: "self", arg: 1, scope: !6157, file: !1034, line: 1315, type: !1035)
!6657 = !{!6656}
!6658 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!6659 = !DINamespace(name: "rev", scope: !1106)
!6660 = !DINamespace(name: "{impl#1}", scope: !6659)
!6661 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::rev::Rev<core::ops::range::Range<usize>>", baseType: !6158, size: 64, align: 64, dwarfAddressSpace: 0)
!6662 = !{!132, !6661}
!6663 = !DISubroutineType(types: !6662)
!6664 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !6158, file: !319, baseType: !128, size: 128, align: 64, flags: DIFlagPrivate)
!6665 = !{!6664}
!6666 = !DITemplateTypeParameter(name: "T", type: !128)
!6667 = !{!6666}
!6668 = !DILocalVariable(name: "self", arg: 1, scope: !6159, file: !6658, line: 52, type: !6661)
!6669 = !{!6668}
!6670 = !DILexicalBlockFile(scope: !6173, file: !1483, discriminator: 2)
!6671 = !{!5950, !6396, !161, !161, !1023}
!6672 = !DISubroutineType(types: !6671)
!6673 = !DITemplateTypeParameter(name: "S", type: !6161)
!6674 = !{!6673}
!6675 = !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECshhfsHpF03Qr_6netlog", scope: !246, file: !1483, line: 1541, type: !6672, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6674)
!6676 = !{!6160}
!6677 = !DILocalVariable(name: "self", arg: 1, scope: !6167, file: !1483, line: 1541, type: !6396)
!6678 = !DILocalVariable(name: "haystack", arg: 2, scope: !6167, file: !1483, line: 1541, type: !161)
!6679 = !DILocalVariable(name: "needle", arg: 3, scope: !6167, file: !1483, line: 1541, type: !161)
!6680 = !DILocalVariable(name: "long_period", arg: 4, scope: !6167, file: !1483, line: 1541, type: !1023)
!6681 = !DILocalVariable(name: "old_pos", scope: !6168, file: !1483, line: 1546, type: !479, align: 64)
!6682 = !DILocalVariable(name: "needle_last", scope: !6169, file: !1483, line: 1547, type: !479, align: 64)
!6683 = !DILocalVariable(name: "tail_byte", scope: !6170, file: !1483, line: 1552, type: !392, align: 8)
!6684 = !DILocalVariable(name: "b", scope: !6166, file: !1483, line: 1553, type: !392, align: 8)
!6685 = !DILocalVariable(name: "start", scope: !6171, file: !1483, line: 1574, type: !479, align: 64)
!6686 = !DILocalVariable(name: "iter", scope: !6165, file: !1483, line: 1576, type: !128, align: 64)
!6687 = !DILocalVariable(name: "i", scope: !6164, file: !1483, line: 1576, type: !479, align: 64)
!6688 = !DILocalVariable(name: "start", scope: !6172, file: !1483, line: 1593, type: !479, align: 64)
!6689 = !DILocalVariable(name: "iter", scope: !6173, file: !1483, line: 1594, type: !6158, align: 64)
!6690 = !DILocalVariable(name: "i", scope: !6163, file: !1483, line: 1594, type: !479, align: 64)
!6691 = !DILocalVariable(name: "match_pos", scope: !6162, file: !1483, line: 1611, type: !479, align: 64)
!6692 = !{!6677, !6678, !6679, !6680, !6681, !6682, !6683, !6684, !6685, !6686, !6687, !6688, !6689, !6690, !6691}
!6693 = !DILocalVariable(name: "self", arg: 1, scope: !6193, file: !1034, line: 1099, type: !1035)
!6694 = !DILocalVariable(name: "old", scope: !6192, file: !1034, line: 1101, type: !479, align: 64)
!6695 = !{!6693, !6694}
!6696 = !DILocalVariable(name: "self", arg: 1, scope: !6194, file: !1034, line: 1184, type: !1035)
!6697 = !{!6696}
!6698 = !DILexicalBlockFile(scope: !6165, file: !1483, discriminator: 2)
!6699 = !DILocalVariable(name: "self", arg: 1, scope: !6209, file: !1483, line: 1531, type: !6396)
!6700 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::TwoWaySearcher", baseType: !246, size: 64, align: 64, dwarfAddressSpace: 0)
!6701 = !{!1023, !6700, !392}
!6702 = !DISubroutineType(types: !6701)
!6703 = !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !246, file: !1483, line: 1531, type: !6702, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !520)
!6704 = !DILocalVariable(name: "byte", arg: 2, scope: !6209, file: !1483, line: 1531, type: !392)
!6705 = !{!6699, !6704}
!6706 = !DILocalVariable(name: "self", arg: 1, scope: !6214, file: !945, line: 572, type: !161)
!6707 = !{!6056, !161, !479}
!6708 = !DISubroutineType(types: !6707)
!6709 = !DILocalVariable(name: "index", arg: 2, scope: !6214, file: !945, line: 572, type: !479)
!6710 = !{!6706, !6709}
!6711 = !{!651, !949}
!6712 = !DILocalVariable(name: "slice", arg: 2, scope: !6219, file: !926, line: 183, type: !161)
!6713 = !{!6056, !479, !161}
!6714 = !DISubroutineType(types: !6713)
!6715 = !DILocalVariable(name: "self", arg: 1, scope: !6219, file: !926, line: 183, type: !479)
!6716 = !{!6715, !6712}
!6717 = !DILocalVariable(name: "self", arg: 1, scope: !6224, file: !945, line: 640, type: !161)
!6718 = !{!6495, !161, !479, !748}
!6719 = !DISubroutineType(types: !6718)
!6720 = !DILocalVariable(name: "index", arg: 2, scope: !6224, file: !945, line: 640, type: !479)
!6721 = !{!6717, !6720}
!6722 = !DILocalVariable(name: "slice", arg: 2, scope: !6229, file: !926, line: 205, type: !161)
!6723 = !{!666, !479, !160, !748}
!6724 = !DISubroutineType(types: !6723)
!6725 = !DILocalVariable(name: "self", arg: 1, scope: !6229, file: !926, line: 205, type: !479)
!6726 = !{!6725, !6722}
!6727 = !DILexicalBlockFile(scope: !6224, file: !945, discriminator: 2)
!6728 = !DILocalVariable(name: "n", scope: !6242, file: !1034, line: 263, type: !479, align: 64)
!6729 = !DILocalVariable(name: "start", arg: 1, scope: !6242, file: !1034, line: 263, type: !479)
!6730 = !{!6729, !6728}
!6731 = !DILocalVariable(name: "rhs", scope: !6247, file: !932, line: 1031, type: !479, align: 64)
!6732 = !DILocalVariable(name: "self", arg: 1, scope: !6247, file: !932, line: 1031, type: !479)
!6733 = !{!6732, !6731}
!6734 = !DILocalVariable(name: "n", scope: !6252, file: !1034, line: 269, type: !479, align: 64)
!6735 = !DILocalVariable(name: "start", arg: 1, scope: !6252, file: !1034, line: 269, type: !479)
!6736 = !{!6735, !6734}
!6737 = !DILocalVariable(name: "rhs", scope: !6257, file: !932, line: 1210, type: !479, align: 64)
!6738 = !DILocalVariable(name: "self", arg: 1, scope: !6257, file: !932, line: 1210, type: !479)
!6739 = !{!6738, !6737}
!6740 = !DIFile(filename: "library/core/src/slice/memchr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90719a3fdf4b8ba29bc25ba24da39686")
!6741 = !DILocalVariable(name: "x", arg: 1, scope: !6268, file: !6740, line: 25, type: !392)
!6742 = !DINamespace(name: "memchr", scope: !930)
!6743 = !{!132, !392, !161}
!6744 = !DISubroutineType(types: !6743)
!6745 = !DILocalVariable(name: "text", arg: 2, scope: !6268, file: !6740, line: 25, type: !161)
!6746 = !DILocalVariable(name: "result", scope: !6267, file: !6740, line: 27, type: !132, align: 64)
!6747 = !DILocalVariable(name: "index", scope: !6266, file: !6740, line: 29, type: !479, align: 64)
!6748 = !{!6741, !6745, !6746, !6747}
!6749 = !DILocalVariable(name: "x", arg: 1, scope: !6272, file: !6740, line: 37, type: !392)
!6750 = !DILocalVariable(name: "text", arg: 2, scope: !6272, file: !6740, line: 37, type: !161)
!6751 = !DILocalVariable(name: "i", scope: !6271, file: !6740, line: 38, type: !479, align: 64)
!6752 = !{!6749, !6750, !6751}
!6753 = !{!6015, !5945}
!6754 = !{!6278}
!6755 = !DILocalVariable(name: "cond", arg: 1, scope: !6280, file: !1485, line: 202, type: !1023)
!6756 = !{!6755}
!6757 = !{!6286}
!6758 = !{!6287}
!6759 = !{!6288}
!6760 = !{!6286, !5945}
!6761 = !DILexicalBlockFile(scope: !6169, file: !1016, discriminator: 0)
!6762 = !DILocalVariable(name: "v1", arg: 1, scope: !6291, file: !1044, line: 1741, type: !479)
!6763 = !DILocalVariable(name: "v2", arg: 2, scope: !6291, file: !1044, line: 1741, type: !479)
!6764 = !{!6762, !6763}
!6765 = !DILocalVariable(name: "self", arg: 1, scope: !6294, file: !1044, line: 1094, type: !479)
!6766 = !DINamespace(name: "Ord", scope: !465)
!6767 = !DILocalVariable(name: "other", arg: 2, scope: !6294, file: !1044, line: 1094, type: !479)
!6768 = !{!6765, !6767}
!6769 = !DITemplateTypeParameter(name: "Self", type: !479)
!6770 = !{!6769}
!6771 = !DILexicalBlockFile(scope: !6170, file: !1016, discriminator: 0)
!6772 = !{!6305, !6286, !6287, !6288, !6015, !5945}
!6773 = !{!6307}
!6774 = !{!6308}
!6775 = !{!6309}
!6776 = !{!6307, !5945}
!6777 = !{!6319, !6307, !6308, !6309, !6015, !5945}
!6778 = !DILocation(line: 0, scope: !5937)
!6779 = !DILocalVariable(name: "count", arg: 2, scope: !6320, file: !959, line: 838, type: !479)
!6780 = !DILocalVariable(name: "self", arg: 1, scope: !6320, file: !959, line: 838, type: !666)
!6781 = !{!6780, !6779}
!6782 = !DILocation(line: 222, column: 28, scope: !5941, inlinedAt: !6369)
!6783 = !DILocation(line: 0, scope: !6320, inlinedAt: !6782)
!6784 = !DILocation(line: 0, scope: !5942, inlinedAt: !6369)
!6785 = !DILocation(line: 0, scope: !5941, inlinedAt: !6369)
!6786 = !DILocation(line: 0, scope: !5936)
!6787 = !DILocalVariable(name: "self", arg: 1, scope: !6322, file: !1425, line: 642, type: !6340)
!6788 = !DISubprogram(name: "get_end<&str>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog", scope: !255, file: !1425, line: 642, type: !6342, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1471)
!6789 = !DILocalVariable(name: "string", scope: !6321, file: !1425, line: 648, type: !88, align: 64)
!6790 = !{!6787, !6789}
!6791 = !{!6326}
!6792 = !DILocalVariable(name: "self", arg: 1, scope: !6327, file: !1479, line: 700, type: !30)
!6793 = !DILocalVariable(name: "i", scope: !6327, file: !1479, line: 700, type: !128, align: 64)
!6794 = !{!6792, !6793}
!6795 = !DILocalVariable(name: "slice", arg: 2, scope: !6332, file: !1481, line: 199, type: !30)
!6796 = !DILocalVariable(name: "self", scope: !6332, file: !1481, line: 199, type: !128, align: 64)
!6797 = !DILocalVariable(name: "slice", scope: !6331, file: !1481, line: 200, type: !160, align: 64)
!6798 = !DILocalVariable(name: "new_len", scope: !6330, file: !1481, line: 221, type: !479, align: 64)
!6799 = !{!6796, !6795, !6797, !6798}
!6800 = !DILocalVariable(name: "count", arg: 2, scope: !6335, file: !959, line: 838, type: !479)
!6801 = !DILocalVariable(name: "self", arg: 1, scope: !6335, file: !959, line: 838, type: !666)
!6802 = !{!6801, !6800}
!6803 = !DILocation(line: 658, column: 12, scope: !5939)
!6804 = !DILocation(line: 662, column: 37, scope: !5939)
!6805 = !DILocation(line: 663, column: 28, scope: !5938)
!6806 = !DILocation(line: 1206, column: 15, scope: !5958, inlinedAt: !5959)
!6807 = !DILocation(line: 1206, column: 9, scope: !5958, inlinedAt: !5959)
!6808 = !DILocation(line: 1141, column: 20, scope: !5979, inlinedAt: !5980)
!6809 = !DILocation(line: 1208, column: 28, scope: !5958, inlinedAt: !5959)
!6810 = !DILocation(line: 1145, column: 32, scope: !5979, inlinedAt: !5980)
!6811 = !DILocation(line: 380, column: 12, scope: !5998, inlinedAt: !5999)
!6812 = !DILocation(line: 384, column: 12, scope: !5998, inlinedAt: !5999)
!6813 = !DILocation(line: 394, column: 13, scope: !5998, inlinedAt: !5999)
!6814 = !DILocation(line: 493, column: 12, scope: !5995, inlinedAt: !5996)
!6815 = !DILocation(line: 396, column: 13, scope: !5998, inlinedAt: !5999)
!6816 = !DILocation(line: 1231, column: 9, scope: !6018, inlinedAt: !6019)
!6817 = !DILocation(line: 872, column: 18, scope: !6010, inlinedAt: !6011)
!6818 = !DILocation(line: 1663, column: 9, scope: !6068, inlinedAt: !6069)
!6819 = !DILocation(line: 180, column: 28, scope: !6058, inlinedAt: !6061)
!6820 = !DILocation(line: 37, column: 13, scope: !6047, inlinedAt: !6048)
!6821 = !DILocation(line: 38, column: 8, scope: !6046, inlinedAt: !6048)
!6822 = !DILocation(line: 627, column: 28, scope: !6063, inlinedAt: !6064)
!6823 = !DILocation(line: 11, column: 5, scope: !6050, inlinedAt: !6051)
!6824 = !DILocation(line: 1663, column: 9, scope: !6068, inlinedAt: !6085)
!6825 = !DILocation(line: 180, column: 28, scope: !6058, inlinedAt: !6079)
!6826 = !DILocation(line: 48, column: 22, scope: !6043, inlinedAt: !6048)
!6827 = !DILocation(line: 17, column: 5, scope: !6076, inlinedAt: !6077)
!6828 = !DILocation(line: 17, column: 17, scope: !6076, inlinedAt: !6077)
!6829 = !DILocation(line: 50, column: 8, scope: !6041, inlinedAt: !6048)
end_hunk_2
