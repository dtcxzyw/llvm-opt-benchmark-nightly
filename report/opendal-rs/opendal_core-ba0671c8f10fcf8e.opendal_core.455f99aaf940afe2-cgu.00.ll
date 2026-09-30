Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.00?download=true
inline.NumInlined: 560
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
@92 = private unnamed_addr constant [29 x i8] c"access-control-request-method", align 1
@93 = private unnamed_addr constant [3 x i8] c"age", align 1
@94 = private unnamed_addr constant [5 x i8] c"allow", align 1
@95 = private unnamed_addr constant [7 x i8] c"alt-svc", align 1
@96 = private unnamed_addr constant [13 x i8] c"authorization", align 1
@97 = private unnamed_addr constant [13 x i8] c"cache-control", align 1
@98 = private unnamed_addr constant [12 x i8] c"cache-status", align 1
@99 = private unnamed_addr constant [17 x i8] c"cdn-cache-control", align 1
@100 = private unnamed_addr constant [10 x i8] c"connection", align 1
@101 = private unnamed_addr constant [19 x i8] c"content-disposition", align 1
@102 = private unnamed_addr constant [16 x i8] c"content-encoding", align 1
@103 = private unnamed_addr constant [16 x i8] c"content-language", align 1
@104 = private unnamed_addr constant [14 x i8] c"content-length", align 1
@105 = private unnamed_addr constant [16 x i8] c"content-location", align 1
@106 = private unnamed_addr constant [13 x i8] c"content-range", align 1
@107 = private unnamed_addr constant [23 x i8] c"content-security-policy", align 1
@108 = private unnamed_addr constant [35 x i8] c"content-security-policy-report-only", align 1
@109 = private unnamed_addr constant [12 x i8] c"content-type", align 1
@110 = private unnamed_addr constant [6 x i8] c"cookie", align 1
@111 = private unnamed_addr constant [3 x i8] c"dnt", align 1
@112 = private unnamed_addr constant [4 x i8] c"date", align 1
@113 = private unnamed_addr constant [4 x i8] c"etag", align 1
@114 = private unnamed_addr constant [6 x i8] c"expect", align 1
@115 = private unnamed_addr constant [7 x i8] c"expires", align 1
@116 = private unnamed_addr constant [9 x i8] c"forwarded", align 1
@117 = private unnamed_addr constant [4 x i8] c"from", align 1
@118 = private unnamed_addr constant [4 x i8] c"host", align 1
@119 = private unnamed_addr constant [8 x i8] c"if-match", align 1
@120 = private unnamed_addr constant [17 x i8] c"if-modified-since", align 1
@121 = private unnamed_addr constant [13 x i8] c"if-none-match", align 1
@122 = private unnamed_addr constant [8 x i8] c"if-range", align 1
@123 = private unnamed_addr constant [19 x i8] c"if-unmodified-since", align 1
@124 = private unnamed_addr constant [13 x i8] c"last-modified", align 1
@125 = private unnamed_addr constant [4 x i8] c"link", align 1
@126 = private unnamed_addr constant [8 x i8] c"location", align 1
@127 = private unnamed_addr constant [12 x i8] c"max-forwards", align 1
@128 = private unnamed_addr constant [6 x i8] c"origin", align 1
@129 = private unnamed_addr constant [6 x i8] c"pragma", align 1
@130 = private unnamed_addr constant [18 x i8] c"proxy-authenticate", align 1
@131 = private unnamed_addr constant [19 x i8] c"proxy-authorization", align 1
@132 = private unnamed_addr constant [15 x i8] c"public-key-pins", align 1
@133 = private unnamed_addr constant [27 x i8] c"public-key-pins-report-only", align 1
@134 = private unnamed_addr constant [5 x i8] c"range", align 1
@135 = private unnamed_addr constant [7 x i8] c"referer", align 1
@136 = private unnamed_addr constant [15 x i8] c"referrer-policy", align 1
@137 = private unnamed_addr constant [7 x i8] c"refresh", align 1
@138 = private unnamed_addr constant [11 x i8] c"retry-after", align 1
@139 = private unnamed_addr constant [20 x i8] c"sec-websocket-accept", align 1
@140 = private unnamed_addr constant [24 x i8] c"sec-websocket-extensions", align 1
@141 = private unnamed_addr constant [17 x i8] c"sec-websocket-key", align 1
@142 = private unnamed_addr constant [22 x i8] c"sec-websocket-protocol", align 1
@143 = private unnamed_addr constant [21 x i8] c"sec-websocket-version", align 1
@144 = private unnamed_addr constant [6 x i8] c"server", align 1
@145 = private unnamed_addr constant [10 x i8] c"set-cookie", align 1
@146 = private unnamed_addr constant [25 x i8] c"strict-transport-security", align 1
@147 = private unnamed_addr constant [2 x i8] c"te", align 1
@148 = private unnamed_addr constant [7 x i8] c"trailer", align 1
@149 = private unnamed_addr constant [17 x i8] c"transfer-encoding", align 1
@150 = private unnamed_addr constant [10 x i8] c"user-agent", align 1
@151 = private unnamed_addr constant [7 x i8] c"upgrade", align 1
@152 = private unnamed_addr constant [25 x i8] c"upgrade-insecure-requests", align 1
@153 = private unnamed_addr constant [4 x i8] c"vary", align 1
@154 = private unnamed_addr constant [3 x i8] c"via", align 1
@155 = private unnamed_addr constant [7 x i8] c"warning", align 1
@156 = private unnamed_addr constant [16 x i8] c"www-authenticate", align 1
@157 = private unnamed_addr constant [22 x i8] c"x-content-type-options", align 1
@158 = private unnamed_addr constant [22 x i8] c"x-dns-prefetch-control", align 1
@159 = private unnamed_addr constant [15 x i8] c"x-frame-options", align 1
@160 = private unnamed_addr constant [16 x i8] c"x-xss-protection", align 1
@_RNvNtCsk2Y6yuwWMc1_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@161 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtBI_18FuturesAsyncReader14resolve_length0EBO_, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read20futures_async_readerNtB6_18FuturesAsyncReader14resolve_length0Bc_ }>, align 8
@_RNvNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport24DEFAULT_HTTP_TRANSPORTER = global <{ [16 x i8], [4 x i8], [4 x i8] }> <{ [16 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@162 = private unnamed_addr constant [20 x i8] c"signing http request", align 1
@163 = private unnamed_addr constant [13 x i8] c"reqsign::Sign", align 1
@164 = private unnamed_addr constant [21 x i8] c"building http request", align 1
@165 = private unnamed_addr constant [20 x i8] c"http::Request::build", align 1
@166 = private unnamed_addr constant [3 x i8] c"uri", align 1
@167 = private unnamed_addr constant [10 x i8] c"Set-Cookie", align 1
@168 = private unnamed_addr constant [16 x i8] c"WWW-Authenticate", align 1
@169 = private unnamed_addr constant [18 x i8] c"Proxy-Authenticate", align 1
@170 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@171 = private unnamed_addr constant [8 x i8] c"response", align 1
@172 = private unnamed_addr constant [39 x i8] c"loading credential to sign http request", align 1
@173 = private unnamed_addr constant [23 x i8] c"reqsign::LoadCredential", align 1
@_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@174 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtBJ_20DefaultHttpTransportNtBJ_13HttpTransport5fetch0EBN_, [16 x i8] c"P\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB7_20DefaultHttpTransportNtB7_13HttpTransport5fetch0Bb_ }>, align 8
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB2_20DefaultHttpTransportNtB2_16HttpTransportDyn9fetch_dynB6_ }>, align 8
@176 = private unnamed_addr constant [35 x i8] c"parse of form-data is not supported", align 1
@177 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@178 = private unnamed_addr constant [19 x i8] c"Content-Disposition", align 1
@179 = private unnamed_addr constant [2 x i8] c": ", align 1
@180 = private unnamed_addr constant [54 x i8] c"invalid seek to a position beyond the end of the range", align 1
@181 = private unnamed_addr constant [22 x i8] c"seek position overflow", align 1
@182 = private unnamed_addr constant [50 x i8] c"invalid seek to a negative or overflowing position", align 1
@183 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@184 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @184, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@186 = private unnamed_addr constant [4 x i8] c"\0D\0A\0D\0A", align 1
@187 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\BC\01\00\00)\00\00\00" }>, align 8
@188 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@189 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\D7\01\00\00$\00\00\00" }>, align 8
@190 = private unnamed_addr constant [47 x i8] c"multipart response contains invalid status code", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\EE\01\00\00)\00\00\00" }>, align 8
@192 = private unnamed_addr constant [53 x i8] c"multipart response contains invalid part header value", align 1
@193 = private unnamed_addr constant [52 x i8] c"multipart response contains invalid part header name", align 1
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\CA\01\00\00)\00\00\00" }>, align 8
@195 = private unnamed_addr constant [55 x i8] c"mixed part must be a valid request that contains method", align 1
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\95\01\00\00\12\00\00\00" }>, align 8
@197 = private unnamed_addr constant [7 x i8] c"OPTIONS", align 1
@198 = private unnamed_addr constant [3 x i8] c"GET", align 1
@199 = private unnamed_addr constant [4 x i8] c"POST", align 1
@200 = private unnamed_addr constant [3 x i8] c"PUT", align 1
@201 = private unnamed_addr constant [6 x i8] c"DELETE", align 1
@202 = private unnamed_addr constant [4 x i8] c"HEAD", align 1
@203 = private unnamed_addr constant [5 x i8] c"TRACE", align 1
@204 = private unnamed_addr constant [7 x i8] c"CONNECT", align 1
@205 = private unnamed_addr constant [5 x i8] c"PATCH", align 1
@206 = private unnamed_addr constant [52 x i8] c"mixed part must be a valid request that contains uri", align 1
@207 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"#\00\00\00\00\00\00\00\9D\01\00\00\12\00\00\00" }>, align 8
@208 = private unnamed_addr constant [25 x i8] c"Content-Transfer-Encoding", align 1
@209 = private unnamed_addr constant [10 x i8] c"Content-ID", align 1
@210 = private unnamed_addr constant [12 x i8] c"Content-Type", align 1
@211 = private unnamed_addr constant [42 x i8] c"parsing multipart/related is not supported", align 1
@212 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@213 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@214 = private unnamed_addr constant [76 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/string.rs\00", align 1
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @214, [16 x i8] c"K\00\00\00\00\00\00\00\7F\0B\00\00\0E\00\00\00" }>, align 8
@216 = private unnamed_addr constant [5 x i8] c"Error", align 1
@217 = private unnamed_addr constant [15 x i8] c"HttpTransporter", align 1
@218 = private unnamed_addr constant [25 x i8] c"core/src/types/buffer.rs\00", align 1
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @218, [16 x i8] c"\18\00\00\00\00\00\00\00\22\02\00\00\1E\00\00\00" }>, align 8
@220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @218, [16 x i8] c"\18\00\00\00\00\00\00\00$\02\00\00\1D\00\00\00" }>, align 8
@221 = private unnamed_addr constant [50 x i8] c"\14cannot advance past \C0\0D bytes, only \C0\0B bytes left\00", align 1
@222 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @218, [16 x i8] c"\18\00\00\00\00\00\00\00Z\02\00\00\11\00\00\00" }>, align 8
@223 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @218, [16 x i8] c"\18\00\00\00\00\00\00\00c\02\00\00$\00\00\00" }>, align 8
@224 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@225 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8
@226 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@227 = private unnamed_addr constant [10 x i8] c"InvalidUri", align 1
@228 = private unnamed_addr constant [14 x i8] c"InvalidUriChar", align 1
@229 = private unnamed_addr constant [13 x i8] c"InvalidScheme", align 1
@230 = private unnamed_addr constant [16 x i8] c"InvalidAuthority", align 1
@231 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@232 = private unnamed_addr constant [13 x i8] c"InvalidFormat", align 1
@233 = private unnamed_addr constant [13 x i8] c"SchemeMissing", align 1
@234 = private unnamed_addr constant [16 x i8] c"AuthorityMissing", align 1
@235 = private unnamed_addr constant [19 x i8] c"PathAndQueryMissing", align 1
@236 = private unnamed_addr constant [25 x i8] c"PathDoesNotStartWithSlash", align 1
@237 = private unnamed_addr constant [7 x i8] c"TooLong", align 1
@238 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@239 = private unnamed_addr constant [13 x i8] c"SchemeTooLong", align 1
@switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str = private unnamed_addr constant [81 x i8] c"\06\0E\0F\0F\0D \1C\1C\1B\1D\16\1E\1D\03\05\07\0D\0D\0C\11\0A\13\10\10\0E\10\0D\17#\0C\06\03\04\04\06\07\09\04\04\08\11\0D\08\13\0D\04\08\0C\06\06\12\13\0F\1B\05\07\0F\07\0B\14\18\11\16\15\06\0A\19\02\07\11\0A\07\19\04\03\07\10\16\16\0F\10", align 8
@switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str.69 = private unnamed_addr constant [81 x ptr] [ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160], align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core = private unnamed_addr constant [12 x i8] c"\0E\0D\10\0B\0D\0D\10\13\19\07\05\0D", align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core.70 = private unnamed_addr constant [12 x ptr] [ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke noundef zeroext i1 @_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ay

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !176, !noundef !11
  %i.g = load ptr, ptr %3, align 8, !alias.scope !176, !nonnull !11, !align !12, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !176, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !176, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !176, !noundef !11
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.aw, !inline_history !0

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !11 ; 3 uses
  %i.q = and i16 %i.p, %i.n
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !11
  %i.w = zext i16 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8              ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11 ; 3 uses
  %i.ab = load ptr, ptr %2, align 8               ; 10 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 6 uses
  %.not192 = icmp ne ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !13
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 9 uses
  %i.ah = load ptr, ptr %i.ad, align 8            ; 8 uses
  %.not244 = icmp eq i64 %i.u, 0
  br label %.outer228

.outer228:                                        ; preds = %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bw, %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.bx, %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread ], [ %i.r, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.ph, %i.u        ; 2 uses
  %.not244.not = xor i1 %.not244, true
  %brmerge = or i1 %i.ai, %.not244.not
  %.sroa.0.0.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer228
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !11 ; 2 uses
  %.not = icmp eq i16 %i.ak, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noundef !11 ; 2 uses
  %i.ao = and i16 %i.an, %i.p
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.w
  %i.as = icmp samesign ult i64 %i.ar, %.sroa.08.0.ph
  br i1 %i.as, label %bb.ah, label %bb.u

bb.g:                                             ; preds = %.loopexit
  %i.at = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.at)
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6117.0.copyload = load ptr, ptr %.sroa.6117.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0118.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5120.0.copyload = load ptr, ptr %.sroa.5120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6123.0.copyload = load i64, ptr %.sroa.6123.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7126.0.copyload = load ptr, ptr %.sroa.7126.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8129.0.copyload = load i64, ptr %.sroa.8129.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.au = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !178
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.n, ptr %i.aw, align 8, !noalias !178
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ab, ptr %i.ax, align 8, !noalias !179
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ah, ptr %.sroa.6102.0..sroa_idx103, align 8, !noalias !179
  %.sroa.8106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ag, ptr %.sroa.8106.0..sroa_idx107, align 8, !noalias !179
  %.sroa.10110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.6117.0.copyload, ptr %.sroa.10110.0..sroa_idx111, align 8, !noalias !179
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0118.0.copyload, ptr %i.ay, align 8, !noalias !180
  %.sroa.5120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5120.0.copyload, ptr %.sroa.5120.0..sroa_idx121, align 8, !noalias !180
  %.sroa.6123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6123.0.copyload, ptr %.sroa.6123.0..sroa_idx124, align 8, !noalias !180
  %.sroa.7126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7126.0.copyload, ptr %.sroa.7126.0..sroa_idx127, align 8, !noalias !180
  %.sroa.8129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8129.0.copyload, ptr %.sroa.8129.0..sroa_idx130, align 8, !noalias !180
  store i64 0, ptr %i.b, align 8, !noalias !178
  %i.az = load i64, ptr %i.av, align 8, !range !14, !alias.scope !181, !noalias !182, !noundef !11
  %i.ba = icmp eq i64 %i.y, %i.az
  br i1 %i.ba, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %._crit_edge192 unwind label %bb.j, !noalias !182

._crit_edge192:                                   ; preds = %bb.i
  %.pre193 = load ptr, ptr %i.z, align 8, !alias.scope !181, !noalias !182
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45 unwind label %bb.k, !noalias !183

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !182
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !184, !nonnull !11, !noundef !11
  invoke void %i.be(ptr noundef %.sroa.7126.0.copyload, ptr noundef %.sroa.5120.0.copyload, i64 noundef %.sroa.6123.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.n, !noalias !178, !inline_history !0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.l
  br i1 %i.ac, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !185, !nonnull !11, !noundef !11
  tail call void %i.bg(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag), !inline_history !67
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ac, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !186, !nonnull !11, !noundef !11
  invoke void %i.bj(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45 unwind label %bb.p, !noalias !178, !inline_history !1

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !178
  unreachable

bb.q:                                             ; preds = %bb.m, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.bl, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

bb.r:                                             ; preds = %._crit_edge192, %bb.h
  %i.bm = phi ptr [ %.pre193, %._crit_edge192 ], [ %i.aa, %bb.h ]
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !183
  %i.bo = add nuw nsw i64 %i.y, 1
  store i64 %i.bo, ptr %i.x, align 8, !alias.scope !181, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !178
  %i.bp = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.0.0.ph.mux, %i.bp
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11
  %i.bs = trunc nuw nsw i64 %i.y to i16
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 %i.n, ptr %i.bu, align 2
  br label %.thread

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
  unreachable

.thread:                                          ; preds = %bb.au, %bb.as, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

bb.u:                                             ; preds = %bb.f
  %i.bv = icmp eq i16 %i.an, %i.n
  br i1 %i.bv, label %bb.v, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.y, %bb.w, %.split, %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit, %bb.u
  %i.bw = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.bx = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer228

bb.v:                                             ; preds = %bb.u
  %i.by = icmp ugt i64 %i.y, %i.al
  br i1 %i.by, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.al ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !noundef !11
  %i.cc = icmp ne ptr %i.cb, null                 ; 2 uses
  %i.cd = xor i1 %i.cc, %.not192
  br i1 %i.cd, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.cc, label %bb.y, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !11
  %i.cg = icmp eq i64 %i.cf, %i.ag
  br i1 %i.cg, label %.split, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !noundef !11
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ci, ptr %i.ah, i64 %i.ag)
  %i.cj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cj, label %bb.aa, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
          to label %bb.e unwind label %bb.ay

_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.ac)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cl = load i8, ptr %i.ck, align 8, !range !13, !noundef !11
  %i.cm = icmp eq i8 %i.cl, %i.ae
  br i1 %i.cm, label %bb.aa, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit, %.split
  %i.cn = load <2 x ptr>, ptr %3, align 8         ; 3 uses
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.690.0.copyload = load i64, ptr %.sroa.690.0..sroa_idx, align 8 ; 2 uses
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.793.0.copyload = load ptr, ptr %.sroa.793.0..sroa_idx, align 8 ; 2 uses
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.896.0.copyload = load i64, ptr %.sroa.896.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.co = load i64, ptr %i.bz, align 8, !range !15, !noalias !188, !noundef !11
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %.invoke.i, %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = extractelement <2 x ptr> %i.cn, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !189, !nonnull !11, !noundef !11
  %i.cu = extractelement <2 x ptr> %i.cn, i64 1
  invoke void %i.ct(ptr noundef %.sroa.793.0.copyload, ptr noundef %i.cu, i64 noundef %.sroa.690.0.copyload)
          to label %.thread145 unwind label %bb.ae, !noalias !188, !inline_history !0

bb.ac:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !188, !noundef !11
  invoke void @_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cw)
          to label %._crit_edge.i unwind label %bb.ab, !noalias !190

._crit_edge.i:                                    ; preds = %bb.ac
  %.pre.i = load i64, ptr %i.x, align 8, !alias.scope !187, !noalias !190
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i, %bb.aa
  %i.cx = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.y, %bb.aa ] ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.al
  br i1 %i.cy, label %bb.af, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ad
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.al, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #26
          to label %.cont.i unwind label %bb.ab, !noalias !188

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !188
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %i.z, align 8, !alias.scope !187, !noalias !190, !nonnull !11, !noundef !11
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.da, i64 %i.al ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  %.sroa.483.0.copyload = load i8, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !191
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 57
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.584.0..sroa_idx, i64 7, i1 false)
  store <2 x ptr> %i.cn, ptr %i.dc, align 8, !noalias !192
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i64 %.sroa.690.0.copyload, ptr %.sroa.690.0..sroa_idx91, align 8, !noalias !192
  %.sroa.793.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %.sroa.793.0.copyload, ptr %.sroa.793.0..sroa_idx94, align 8, !noalias !192
  store i64 %.sroa.896.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !192
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.483.0.copyload, ptr %.sroa.3.0..sroa_idx17, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  br i1 %i.ac, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !199, !noundef !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !199, !nonnull !11, !noundef !11
  tail call void %i.dg(ptr noundef %i.de, ptr noundef %i.ah, i64 noundef %i.ag), !noalias !199, !inline_history !2
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ax, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit, %bb.ag, %bb.af, %bb.q, %bb.av, %.thread
  ret void

bb.ah:                                            ; preds = %bb.f
  %i.dh = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.di = load i64, ptr %1, align 8, !range !16
  %i.dj = icmp ne i64 %i.di, 2
  %.sroa.013.0 = select i1 %i.dh, i1 %i.dj, i1 false
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.668.0.copyload = load ptr, ptr %.sroa.668.0..sroa_idx, align 8 ; 3 uses
  %.sroa.069.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8 ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.674.0.copyload = load i64, ptr %.sroa.674.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.879.0.copyload = load i64, ptr %.sroa.879.0..sroa_idx, align 8
  %i.dk = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.dk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.dl = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.dl, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.n, ptr %i.dn, align 8, !noalias !201
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ab, ptr %i.do, align 8, !noalias !202
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx57, align 8, !noalias !202
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx60, align 8, !noalias !202
  %.sroa.10.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.668.0.copyload, ptr %.sroa.10.0..sroa_idx63, align 8, !noalias !202
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.069.0.copyload, ptr %i.dp, align 8, !noalias !203
  %.sroa.571.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.571.0.copyload, ptr %.sroa.571.0..sroa_idx72, align 8, !noalias !203
  %.sroa.674.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.674.0.copyload, ptr %.sroa.674.0..sroa_idx75, align 8, !noalias !203
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx77, align 8, !noalias !203
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.879.0.copyload, ptr %.sroa.879.0..sroa_idx80, align 8, !noalias !203
  store i64 0, ptr %i.a, align 8, !noalias !201
  %i.dq = load i64, ptr %i.dm, align 8, !range !14, !alias.scope !204, !noalias !205, !noundef !11
  %i.dr = icmp eq i64 %i.y, %i.dq
  br i1 %i.dr, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %._crit_edge unwind label %bb.ak, !noalias !205

._crit_edge:                                      ; preds = %bb.aj
  %.pre = load ptr, ptr %i.z, align 8, !alias.scope !204, !noalias !205
  br label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45 unwind label %bb.al, !noalias !206

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25, !noalias !205
  unreachable

bb.am:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload) ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !207, !nonnull !11, !noundef !11
  invoke void %i.dv(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.571.0.copyload, i64 noundef %.sroa.674.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i48 unwind label %bb.ao, !noalias !201, !inline_history !0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i48: ; preds = %bb.am
  br i1 %i.ac, label %bb.av, label %bb.an

bb.an:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core:bb.a
  %brmerge258 = or i1 %i.ei, %.not245.not
  %.sroa.0.0.i.ph.mux = select i1 %i.ei, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge258, label %.loopexit243, label %infloop257

.loopexit243:                                     ; preds = %.outer
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.ek = load i16, ptr %i.ej, align 2, !noalias !211, !noundef !11 ; 2 uses
  %i.el = icmp eq i16 %i.ek, -1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2 ; 3 uses
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit243
  store i16 %.sroa.09.0.i.ph, ptr %i.ej, align 2, !noalias !211
  store i16 %.sroa.6.0.i.ph, ptr %i.em, align 2, !noalias !211
  %i.en = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.013.0, i1 true, i1 %i.en
  %i.eo = load i64, ptr %1, align 8, !range !16, !alias.scope !210, !noalias !211
  %i.ep = icmp eq i64 %i.eo, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ep, i1 false
  br i1 %or.cond3.i, label %bb.au, label %.thread

bb.at:                                            ; preds = %.loopexit243
  %i.eq = add i64 %.sroa.07.0.i.ph, 1
  %i.er = load i16, ptr %i.em, align 2, !noalias !211, !noundef !11
  store i16 %.sroa.09.0.i.ph, ptr %i.ej, align 2, !noalias !211
  store i16 %.sroa.6.0.i.ph, ptr %i.em, align 2, !noalias !211
  %i.es = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.au:                                            ; preds = %bb.as
  store i64 1, ptr %1, align 8, !alias.scope !210, !noalias !211
  br label %.thread

bb.av:                                            ; preds = %bb.an, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i48
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.et, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

bb.aw:                                            ; preds = %bb.c
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.thread145

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ev = load ptr, ptr %2, align 8, !alias.scope !214, !noundef !11 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !219, !noundef !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !219, !nonnull !11, !noundef !11
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !219, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !219, !noundef !11
  tail call void %i.fa(ptr noundef %i.ey, ptr noundef %i.fc, i64 noundef %i.fe), !noalias !219, !inline_history !2
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

bb.ay:                                            ; preds = %bb.a, %bb.z
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !223, !noundef !11
  %i.fh = load ptr, ptr %3, align 8, !alias.scope !223, !nonnull !11, !align !12, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !223, !nonnull !11, !noundef !11
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !223, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !223, !noundef !11
  invoke void %i.fj(ptr noundef %i.fg, ptr noundef %i.fl, i64 noundef %i.fn)
          to label %.thread145 unwind label %bb.az, !inline_history !0

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45: ; preds = %bb.ak, %bb.ao, %bb.ap, %bb.n, %bb.o, %bb.j, %.thread145, %bb.ba
  %.pn148 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %.pn149, %.thread145 ], [ %.pn149, %bb.ba ], [ %i.dy, %bb.ao ], [ %i.dy, %bb.ap ], [ %i.ds, %bb.ak ], [ %i.bh, %bb.o ], [ %i.bb, %bb.j ]
  resume { ptr, i32 } %.pn148

.thread145:                                       ; preds = %bb.ay, %bb.aw, %bb.ab
  %.pn149 = phi { ptr, i32 } [ %i.cq, %bb.ab ], [ %i.eu, %bb.aw ], [ %lpad.thr_comm, %bb.ay ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.fp = load ptr, ptr %2, align 8, !alias.scope !226, !noundef !11 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45, label %bb.ba

bb.ba:                                            ; preds = %.thread145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !231, !noundef !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !231, !nonnull !11, !noundef !11
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !231, !noundef !11
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !231, !noundef !11
  invoke void %i.fu(ptr noundef %i.fs, ptr noundef %i.fw, i64 noundef %i.fy)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit45 unwind label %bb.az, !inline_history !1

infloop:                                          ; preds = %.outer228, %infloop
  br label %infloop

infloop257:                                       ; preds = %.outer, %infloop257
  br label %infloop257
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !243, !noalias !244, !noundef !11 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !244 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !243, !noalias !244, !noundef !11 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !243, !noalias !244, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !243, !noalias !244, !nonnull !11
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !243, !noalias !244, !nonnull !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not.a = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.b
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.k   ; 2 uses
  %.not.not = xor i1 %.not.a, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !245, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !245, !noundef !11 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !245, !noundef !11
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !245, !noundef !11 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  %.not = icmp ne ptr %i.al, null
  %i.an = xor i1 %i.ak, %.not
  br i1 %i.an, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !245, !noundef !11 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !245, !noundef !11
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i.i, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !245, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !245, !noundef !11
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !245
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !13, !noalias !245, !noundef !11
  %i.ay = load i8, ptr %i.q, align 8, !range !13, !noalias !245, !noundef !11
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i, label %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !noalias !245
  unreachable

_RINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNvXsy_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit, %bb.c, %bb.a, %_RINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB6_9HeaderMap6removeReECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 10, 19) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.04 = alloca [64 x i8], align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !267
  call void @_RINvMsq_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsgxBkk5gSRhY_4core6option6OptionTjjEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !268
  %i.d = load i64, ptr %i.b, align 8, !range !16, !noalias !267, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.thread, label %_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit

_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  br label %bb.c

_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !269 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !269 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.i = icmp ult i64 %.sroa.6.0.copyload, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.thread, %_RINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.j, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.aa, %_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap12remove_foundCs5XgW7KoffLW_12opendal_core.exit, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %.sroa.6.0.copyload ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !15, !noundef !11
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6.0.copyload, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !11
  tail call void @_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !270, !noalias !271, !noundef !11 ; 6 uses
  %i.t = icmp ult i64 %.sroa.5.0.copyload, %i.s
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !270, !noalias !271, !nonnull !11, !noundef !11 ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.5.0.copyload ; 2 uses
  store i16 -1, ptr %i.w, align 2, !noalias !272
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 0, ptr %i.x, align 2, !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.y = load i64, ptr %i.g, align 8, !alias.scope !274, !noalias !275, !noundef !11 ; 4 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i.i = icmp ult i64 %.sroa.6.0.copyload, %i.y
  br i1 %.not.i.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNvMs_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %.sroa.6.0.copyload, i64 noundef %i.y) #27, !noalias !276
  unreachable

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.h
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !274, !noalias !275, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %.sroa.6.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i64 104, i1 false), !noalias !277
  %i.ac = add nsw i64 %i.y, -1                    ; 5 uses
  %i.ad = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 104, i1 false), !noalias !276
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !274, !noalias !275
  %i.ae = icmp samesign ult i64 %.sroa.6.0.copyload, %i.ac
  br i1 %i.ae, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.copyload, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #27, !noalias !272
  unreachable

bb.k:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCs5XgW7KoffLW_12opendal_core.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = load i16, ptr %i.af, align 8, !alias.scope !270, !noalias !271, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ai = load i16, ptr %i.ah, align 8, !noalias !272, !noundef !11 ; 2 uses
  %i.aj = and i16 %i.ai, %i.ag
  %i.ak = zext i16 %i.aj to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.t, %bb.q, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCs5XgW7KoffLW_12opendal_core.exit.i
  %i.al = icmp eq i64 %i.ac, 0
  br i1 %i.al, label %_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap12remove_foundCs5XgW7KoffLW_12opendal_core.exit, label %bb.u

bb.m:                                             ; preds = %.backedge, %bb.k
  %.sroa.01.0.i = phi i64 [ %i.ak, %bb.k ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.am = icmp ult i64 %.sroa.01.0.i, %i.s
  br i1 %i.am, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.0.i
  %i.ao = load i16, ptr %i.an, align 2, !noalias !272, !noundef !11 ; 2 uses
  %.not.i = icmp eq i16 %i.ao, -1
  %i.ap = zext i16 %i.ao to i64
  %.not35.i = icmp samesign ugt i64 %i.ac, %i.ap
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.o:                                             ; preds = %.invoke.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #24
          to label %bb.z unwind label %bb.y, !noalias !272

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.m
  %.sroa.01.0.i.be = phi i64 [ %i.ar, %bb.p ], [ 0, %bb.m ]
  br label %bb.m

bb.q:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.0.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = trunc i64 %.sroa.6.0.copyload to i16
  store i16 %i.au, ptr %i.as, align 2, !noalias !272
  store i16 %i.ai, ptr %i.at, align 2, !noalias !272
  %i.av = load i64, ptr %i.ab, align 8, !range !15, !noalias !272, !noundef !11
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.r, label %bb.l

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !272, !noundef !11 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !272, !noundef !11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_1
begin_hunk_2_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !628, !nonnull !11, !noundef !11
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !628
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !629, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !629
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i.i.i, ptr %.val3.i.i.i) #24
          to label %common.resume unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !629, !noundef !11 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !629 ; 6 uses
  %i.m = icmp eq ptr %.val.i.i.i, null
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.n = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.n(ptr noundef nonnull %.val.i.i.i)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.f, %bb.k, %bb.l, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.q ], [ %i.h, %bb.f ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.at, %bb.y ], [ %i.at, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !633, !nonnull !11, !noundef !11
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !633
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #24
          to label %bb.q unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ae, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ah) #24
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ak)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.t:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.am, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.an = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.an(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.x:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #28
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit: ; preds = %bb.w, %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i, %bb.j, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !16, !noundef !11
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
  %i.l = load ptr, ptr %1, align 8, !noalias !658, !noundef !11 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !659
  store i64 %i.n, ptr %i.b, align 8, !noalias !659
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !659
  %.not24 = icmp eq ptr %i.l, null
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !658, !noundef !11
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !658, !noundef !11
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #30
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !13, !noalias !658, !noundef !11
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !660
  store i64 %i.r, ptr %i.a, align 8, !noalias !660
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !660
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !661
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !661
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !661 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !661
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !661, !noundef !11
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !661, !noundef !11
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !662, !noundef !11 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i20 = load ptr, ptr %i.ch, align 8, !noalias !662, !noundef !11 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i21 = load i64, ptr %i.ci, align 8, !noalias !662, !noundef !11 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i20, i64 %.val1.i.i21
  %i.ck = icmp samesign eq i64 %.val1.i.i21, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i21, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !657

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i21, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !13, !noalias !662, !noundef !11
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 14 uses
  %i.e = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load <2 x i64>, ptr %i.g, align 8        ; 3 uses
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i64> %i.i, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.j, ptr %i.d, align 16
  %i.k = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.h, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.n = load i8, ptr %i.m, align 8, !range !23, !alias.scope !700, !noalias !701, !noundef !11 ; 3 uses
  %i.o = icmp ne i8 %i.n, 2
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !702
  store i64 %i.p, ptr %i.c, align 8, !noalias !702
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !702
  %.not28 = icmp eq i8 %i.n, 2
  br i1 %.not28, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.q = trunc nuw i8 %i.n to i1
  %i.r = load ptr, ptr %1, align 8, !alias.scope !704, !noalias !705, !nonnull !11, !noundef !11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !704, !noalias !705, !noundef !11 ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = icmp samesign eq i64 %i.t, 0
  br i1 %i.v, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t) #30, !noalias !704
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = load i8, ptr %.sroa.0.02.i.i.i, align 1, !noalias !706, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !706
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !noalias !706, !noundef !11
  store i8 %i.aa, ptr %i.b, align 1, !noalias !706
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #30, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !706
  %i.ab = icmp eq ptr %i.y, %i.u
  br i1 %i.ab, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %1, align 8, !range !13, !alias.scope !700, !noalias !701, !noundef !11
  %i.ad = zext nneg i8 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i64 %i.ad, ptr %i.a, align 8, !noalias !707
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 16, !alias.scope !708
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !708
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !708 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !708
  %i.ae = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !708, !noundef !11
  %i.af = shl i64 %i.ae, 56
  %i.ag = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !708, !noundef !11
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  %i.ai = xor i64 %i.ah, %.sroa.22.0.copyload.i   ; 3 uses
  %i.aj = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.ak = add i64 %i.ai, %.sroa.10.0.copyload.i   ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.am = xor i64 %i.al, %i.aj                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.ak, %i.am                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 17)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 21)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = xor i64 %i.ar, %i.ah
  %i.ay = xor i64 %i.aw, 255
  %i.az = add i64 %i.ax, %i.at                    ; 3 uses
  %i.ba = add i64 %i.av, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 13)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bz = xor i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.cb = add i64 %i.bx, %i.bv
  %i.cc = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 13)
  %i.ce = xor i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = shl i64 %i.bz, 16
  %i.cg = xor i64 %i.cf, %i.cc
  %i.ch = add i64 %i.ce, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ce, 47
  %i.cj = lshr i64 %i.cg, 43
  %i.ck = lshr i64 %i.ch, 32
  %i.cl = xor i64 %i.cj, %i.ci
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = xor i64 %i.cm, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !23, !alias.scope !711, !noalias !712, !noundef !11 ; 3 uses
  %i.cq = icmp ne i8 %i.cp, 2
  %i.cr = zext i1 %i.cq to i64
  %i.cs = xor i64 %i.cr, -3750763034362895579
  %i.ct = mul i64 %i.cs, 2232315406967589409      ; 7 uses
  %.not = icmp eq i8 %i.cp, 2
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.cu = trunc nuw i8 %i.cp to i1
  %i.cv = load ptr, ptr %1, align 8, !alias.scope !714, !noalias !715, !nonnull !11, !noundef !11 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !714, !noalias !715, !noundef !11 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cz = icmp samesign eq i64 %i.cx, 0           ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.cz, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i20.preheader

.lr.ph.i.i.i20.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i20.prol

.lr.ph.i.i.i20.prol:                              ; preds = %.lr.ph.i.i.i20.preheader, %.lr.ph.i.i.i20.prol
  %.sroa.0.010.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i20.prol ], [ %i.cv, %.lr.ph.i.i.i20.preheader ] ; 2 uses
  %.lcssa789.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i20.prol ], [ %i.ct, %.lr.ph.i.i.i20.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i20.prol ], [ 0, %.lr.ph.i.i.i20.preheader ]
  %i.da = load i8, ptr %.sroa.0.010.i.i.i.prol, align 1, !noalias !716, !noundef !11
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @21, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !716, !noundef !11
  %i.de = zext i8 %i.dd to i64
  %i.df = xor i64 %.lcssa789.i.i.i.prol, %i.de
  %i.dg = mul i64 %i.df, 1099511628211            ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i20.prol, !llvm.loop !693

.lr.ph.i.i.i20.prol.loopexit:                     ; preds = %.lr.ph.i.i.i20.prol, %.lr.ph.i.i.i20.preheader
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.i.i.i20.preheader ], [ %i.dg, %.lr.ph.i.i.i20.prol ]
  %.sroa.0.010.i.i.i.unr = phi ptr [ %i.cv, %.lr.ph.i.i.i20.preheader ], [ %i.dh, %.lr.ph.i.i.i20.prol ]
  %.lcssa789.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i20.preheader ], [ %i.dg, %.lr.ph.i.i.i20.prol ]
  %i.di = icmp ult i64 %i.cx, 4
  br i1 %i.di, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i20

bb.j:                                             ; preds = %bb.h
  br i1 %i.cz, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %xtraiter34 = and i64 %i.cx, 7                  ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.prol ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.prol ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dl = zext i8 %i.dk to i64
  %i.dm = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.dl
  %i.dn = mul i64 %i.dm, 1099511628211            ; 3 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !697

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.prol ]
  %i.do = icmp ult i64 %i.cx, 8
  br i1 %i.do, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.dq = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %.sroa.0.06.i.i.i.i, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.ek = load i8, ptr %i.ee, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.el = zext i8 %i.ek to i64
  %i.em = xor i64 %i.ei, %i.el
  %i.en = mul i64 %i.em, 1099511628211
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.ep = load i8, ptr %i.ej, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eq = zext i8 %i.ep to i64
  %i.er = xor i64 %i.en, %i.eq
  %i.es = mul i64 %i.er, 1099511628211
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.eu = load i8, ptr %i.eo, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.fa = zext i8 %i.ez to i64
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = mul i64 %i.fb, 1099511628211            ; 2 uses
  %i.fd = icmp eq ptr %i.ey, %i.cy
  br i1 %i.fd, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i20:                                   ; preds = %.lr.ph.i.i.i20.prol.loopexit, %.lr.ph.i.i.i20
  %.sroa.0.010.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i20 ], [ %.sroa.0.010.i.i.i.unr, %.lr.ph.i.i.i20.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i20 ], [ %.lcssa789.i.i.i.unr, %.lr.ph.i.i.i20.prol.loopexit ]
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i, align 1, !noalias !716, !noundef !11
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @21, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !716, !noundef !11
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %.lcssa789.i.i.i, %i.fi
  %i.fk = mul i64 %i.fj, 1099511628211
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !716, !noundef !11
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @21, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !716, !noundef !11
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !716, !noundef !11
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @21, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !716, !noundef !11
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !716, !noundef !11
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @21, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !716, !noundef !11
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i20

bb.k:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %1, align 8, !range !13, !alias.scope !711, !noalias !712, !noundef !11
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = xor i64 %i.ct, %i.gm
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i20.prol.loopexit, %.lr.ph.i.i.i20, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i, %bb.k, %bb.j, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cn, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.ct, %bb.i ], [ %i.go, %bb.k ], [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa33.unr, %.lr.ph.i.i.i20.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i20 ]
  %i.gp = trunc i64 %.sroa.0.0 to i16
  %i.gq = and i16 %i.gp, 32767
  ret i16 %i.gq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsgxBkk5gSRhY_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.c, align 1, !alias.scope !749
  %.promoted23 = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !27
  %i.k = trunc nuw i8 %i.j to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted26 = load ptr, ptr %i.e, align 8
  %.promoted27 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1630 = phi i64 [ %.lcssa1628, %select.unfold ], [ %.promoted27, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.by, %select.unfold ], [ %.promoted26, %bb.a ] ; 3 uses
  %.pre.i.i.i25 = phi i64 [ %.pre.i.i.i24, %select.unfold ], [ %.promoted23, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.bz, %select.unfold ], [ %.promoted, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
end_hunk_2
