Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simpleclient.simpleclient.456708b38b33910a-cgu.3?download=true
inline.NumInlined: 141
inline.NumDeleted: 94
begin_hunk_0
@124 = private unnamed_addr constant [5 x i8] c"Other", align 1
@125 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@126 = private unnamed_addr constant [7 x i8] c"DnsName", align 1
@127 = private unnamed_addr constant [10 x i8] c"ClientAuth", align 1
@128 = private unnamed_addr constant [10 x i8] c"ServerAuth", align 1
@129 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@130 = private unnamed_addr constant [16 x i8] c"InvalidCrlNumber", align 1
@131 = private unnamed_addr constant [30 x i8] c"InvalidRevokedCertSerialNumber", align 1
@132 = private unnamed_addr constant [19 x i8] c"IssuerInvalidForCrl", align 1
@133 = private unnamed_addr constant [10 x i8] c"ParseError", align 1
@134 = private unnamed_addr constant [21 x i8] c"UnsupportedCrlVersion", align 1
@135 = private unnamed_addr constant [28 x i8] c"UnsupportedCriticalExtension", align 1
@136 = private unnamed_addr constant [19 x i8] c"UnsupportedDeltaCrl", align 1
@137 = private unnamed_addr constant [22 x i8] c"UnsupportedIndirectCrl", align 1
@138 = private unnamed_addr constant [27 x i8] c"UnsupportedRevocationReason", align 1
@139 = private unnamed_addr constant [17 x i8] c"InvalidConfigList", align 1
@140 = private unnamed_addr constant [18 x i8] c"NoCompatibleConfig", align 1
@141 = private unnamed_addr constant [11 x i8] c"SniRequired", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs5XqwhKMrz7y_12simpleclient, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs5XqwhKMrz7y_12simpleclient, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr @_RNvXsc_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr @142, ptr @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCs5XqwhKMrz7y_12simpleclient, ptr @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCs5XqwhKMrz7y_12simpleclient, ptr @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCs5XqwhKMrz7y_12simpleclient, ptr @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCs5XqwhKMrz7y_12simpleclient, ptr @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCs5XqwhKMrz7y_12simpleclient }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs5XqwhKMrz7y_12simpleclient, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@145 = private unnamed_addr constant [20 x i8] c"InappropriateMessage", align 1
@146 = private unnamed_addr constant [12 x i8] c"expect_types", align 1
@147 = private unnamed_addr constant [8 x i8] c"got_type", align 1
@148 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs5XqwhKMrz7y_12simpleclient, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@149 = private unnamed_addr constant [29 x i8] c"InappropriateHandshakeMessage", align 1
@150 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@151 = private unnamed_addr constant [27 x i8] c"InvalidEncryptedClientHello", align 1
@152 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error14InvalidMessageNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@153 = private unnamed_addr constant [14 x i8] c"InvalidMessage", align 1
@154 = private unnamed_addr constant [23 x i8] c"NoCertificatesPresented", align 1
@155 = private unnamed_addr constant [19 x i8] c"UnsupportedNameType", align 1
@156 = private unnamed_addr constant [12 x i8] c"DecryptError", align 1
@157 = private unnamed_addr constant [12 x i8] c"EncryptError", align 1
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16PeerIncompatibleNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@159 = private unnamed_addr constant [16 x i8] c"PeerIncompatible", align 1
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error14PeerMisbehavedNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@161 = private unnamed_addr constant [14 x i8] c"PeerMisbehaved", align 1
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@163 = private unnamed_addr constant [13 x i8] c"AlertReceived", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16CertificateErrorNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@165 = private unnamed_addr constant [18 x i8] c"InvalidCertificate", align 1
@166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error23CertRevocationListErrorNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@167 = private unnamed_addr constant [25 x i8] c"InvalidCertRevocationList", align 1
@168 = private unnamed_addr constant [7 x i8] c"General", align 1
@169 = private unnamed_addr constant [22 x i8] c"FailedToGetCurrentTime", align 1
@170 = private unnamed_addr constant [22 x i8] c"FailedToGetRandomBytes", align 1
@171 = private unnamed_addr constant [20 x i8] c"HandshakeNotComplete", align 1
@172 = private unnamed_addr constant [23 x i8] c"PeerSentOversizedRecord", align 1
@173 = private unnamed_addr constant [21 x i8] c"NoApplicationProtocol", align 1
@174 = private unnamed_addr constant [18 x i8] c"BadMaxFragmentSize", align 1
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16InconsistentKeysNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@176 = private unnamed_addr constant [16 x i8] c"InconsistentKeys", align 1
@177 = private unnamed_addr constant [11 x i8] c"KeyMismatch", align 1
@178 = private unnamed_addr constant [26 x i8] c"CertificatePayloadTooLarge", align 1
@179 = private unnamed_addr constant [24 x i8] c"HandshakePayloadTooLarge", align 1
@180 = private unnamed_addr constant [10 x i8] c"InvalidCcs", align 1
@181 = private unnamed_addr constant [18 x i8] c"InvalidContentType", align 1
@182 = private unnamed_addr constant [28 x i8] c"InvalidCertificateStatusType", align 1
@183 = private unnamed_addr constant [18 x i8] c"InvalidCertRequest", align 1
@184 = private unnamed_addr constant [15 x i8] c"InvalidDhParams", align 1
@185 = private unnamed_addr constant [19 x i8] c"InvalidEmptyPayload", align 1
@186 = private unnamed_addr constant [16 x i8] c"InvalidKeyUpdate", align 1
@187 = private unnamed_addr constant [17 x i8] c"InvalidServerName", align 1
@188 = private unnamed_addr constant [15 x i8] c"MessageTooLarge", align 1
@189 = private unnamed_addr constant [15 x i8] c"MessageTooShort", align 1
@190 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@191 = private unnamed_addr constant [11 x i8] c"MissingData", align 1
@192 = private unnamed_addr constant [18 x i8] c"MissingKeyExchange", align 1
@193 = private unnamed_addr constant [18 x i8] c"NoSignatureSchemes", align 1
@194 = private unnamed_addr constant [12 x i8] c"TrailingData", align 1
@195 = private unnamed_addr constant [17 x i8] c"UnexpectedMessage", align 1
@196 = private unnamed_addr constant [22 x i8] c"UnknownProtocolVersion", align 1
@197 = private unnamed_addr constant [22 x i8] c"UnsupportedCompression", align 1
@198 = private unnamed_addr constant [20 x i8] c"UnsupportedCurveType", align 1
@199 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@200 = private unnamed_addr constant [31 x i8] c"UnsupportedKeyExchangeAlgorithm", align 1
@201 = private unnamed_addr constant [16 x i8] c"EmptyTicketValue", align 1
@202 = private unnamed_addr constant [16 x i8] c"IllegalEmptyList", align 1
@203 = private unnamed_addr constant [17 x i8] c"IllegalEmptyValue", align 1
@204 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRtNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient }>, align 8
@205 = private unnamed_addr constant [18 x i8] c"DuplicateExtension", align 1
@206 = private unnamed_addr constant [31 x i8] c"PreSharedKeyIsNotFinalExtension", align 1
@207 = private unnamed_addr constant [33 x i8] c"UnknownHelloRetryRequestExtension", align 1
@208 = private unnamed_addr constant [27 x i8] c"UnknownCertificateExtension", align 1
@_RNvNvXsx_NtCs7ZUl82OSlxp_6rustls5errorNtB7_14PeerMisbehavedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXsx_NtCs7ZUl82OSlxp_6rustls5errorNtB7_14PeerMisbehavedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = external global [76 x i64]
@209 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@210 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3734928222003345619 to ptr), ptr inttoptr (i64 -3971462436396455965 to ptr) }>, align 8
@211 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@212 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @211, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@213 = private unnamed_addr constant [77 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/core/src/io/write.rs\00", align 1
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @213, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient = private unnamed_addr constant [3 x i8] c"\11\12\0B", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCs5XqwhKMrz7y_12simpleclient.21 = private unnamed_addr constant [3 x ptr] [ptr @139, ptr @140, ptr @141], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeINtNtNtBa_5slice4iter4IterB14_EECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeINtNtNtBa_5slice4iter4IterB14_EECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListINtNtNtBa_5slice4iter4IterB14_EECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs4wP2HXfJTCR_5alloc3vec3VechERNtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertINtNtNtNtB18_11collections5btree3map4IterB13_B1D_EECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !captures !5
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs5XqwhKMrz7y_12simpleclient.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5XqwhKMrz7y_12simpleclient(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs5XqwhKMrz7y_12simpleclient.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque7DropperINtNtBI_3vec3VechEEECs5XqwhKMrz7y_12simpleclient(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_0
