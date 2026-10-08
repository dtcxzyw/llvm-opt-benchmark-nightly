Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.11?download=true
inline.NumInlined: 410
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"c\00\00\00\00\00\00\00\DF\00\00\00\1B\00\00\00" }>, align 8
@42 = private unnamed_addr constant [6 x i8] c"accept", align 1
@43 = private unnamed_addr constant [14 x i8] c"accept-charset", align 1
@44 = private unnamed_addr constant [15 x i8] c"accept-encoding", align 1
@45 = private unnamed_addr constant [15 x i8] c"accept-language", align 1
@46 = private unnamed_addr constant [13 x i8] c"accept-ranges", align 1
@47 = private unnamed_addr constant [32 x i8] c"access-control-allow-credentials", align 1
@48 = private unnamed_addr constant [28 x i8] c"access-control-allow-headers", align 1
@49 = private unnamed_addr constant [28 x i8] c"access-control-allow-methods", align 1
@50 = private unnamed_addr constant [27 x i8] c"access-control-allow-origin", align 1
@51 = private unnamed_addr constant [29 x i8] c"access-control-expose-headers", align 1
@52 = private unnamed_addr constant [22 x i8] c"access-control-max-age", align 1
@53 = private unnamed_addr constant [30 x i8] c"access-control-request-headers", align 1
@54 = private unnamed_addr constant [29 x i8] c"access-control-request-method", align 1
@55 = private unnamed_addr constant [3 x i8] c"age", align 1
@56 = private unnamed_addr constant [5 x i8] c"allow", align 1
@57 = private unnamed_addr constant [7 x i8] c"alt-svc", align 1
@58 = private unnamed_addr constant [13 x i8] c"authorization", align 1
@59 = private unnamed_addr constant [13 x i8] c"cache-control", align 1
@60 = private unnamed_addr constant [12 x i8] c"cache-status", align 1
@61 = private unnamed_addr constant [17 x i8] c"cdn-cache-control", align 1
@62 = private unnamed_addr constant [10 x i8] c"connection", align 1
@63 = private unnamed_addr constant [19 x i8] c"content-disposition", align 1
@64 = private unnamed_addr constant [16 x i8] c"content-encoding", align 1
@65 = private unnamed_addr constant [16 x i8] c"content-language", align 1
@66 = private unnamed_addr constant [14 x i8] c"content-length", align 1
@67 = private unnamed_addr constant [16 x i8] c"content-location", align 1
@68 = private unnamed_addr constant [13 x i8] c"content-range", align 1
@69 = private unnamed_addr constant [23 x i8] c"content-security-policy", align 1
@70 = private unnamed_addr constant [35 x i8] c"content-security-policy-report-only", align 1
@71 = private unnamed_addr constant [12 x i8] c"content-type", align 1
@72 = private unnamed_addr constant [6 x i8] c"cookie", align 1
@73 = private unnamed_addr constant [3 x i8] c"dnt", align 1
@74 = private unnamed_addr constant [4 x i8] c"date", align 1
@75 = private unnamed_addr constant [4 x i8] c"etag", align 1
@76 = private unnamed_addr constant [6 x i8] c"expect", align 1
@77 = private unnamed_addr constant [7 x i8] c"expires", align 1
@78 = private unnamed_addr constant [9 x i8] c"forwarded", align 1
@79 = private unnamed_addr constant [4 x i8] c"from", align 1
@80 = private unnamed_addr constant [4 x i8] c"host", align 1
@81 = private unnamed_addr constant [8 x i8] c"if-match", align 1
@82 = private unnamed_addr constant [17 x i8] c"if-modified-since", align 1
@83 = private unnamed_addr constant [13 x i8] c"if-none-match", align 1
@84 = private unnamed_addr constant [8 x i8] c"if-range", align 1
@85 = private unnamed_addr constant [19 x i8] c"if-unmodified-since", align 1
@86 = private unnamed_addr constant [13 x i8] c"last-modified", align 1
@87 = private unnamed_addr constant [4 x i8] c"link", align 1
@88 = private unnamed_addr constant [8 x i8] c"location", align 1
@89 = private unnamed_addr constant [12 x i8] c"max-forwards", align 1
@90 = private unnamed_addr constant [6 x i8] c"origin", align 1
@91 = private unnamed_addr constant [6 x i8] c"pragma", align 1
@92 = private unnamed_addr constant [18 x i8] c"proxy-authenticate", align 1
@93 = private unnamed_addr constant [19 x i8] c"proxy-authorization", align 1
@94 = private unnamed_addr constant [15 x i8] c"public-key-pins", align 1
@95 = private unnamed_addr constant [27 x i8] c"public-key-pins-report-only", align 1
@96 = private unnamed_addr constant [5 x i8] c"range", align 1
@97 = private unnamed_addr constant [7 x i8] c"referer", align 1
@98 = private unnamed_addr constant [15 x i8] c"referrer-policy", align 1
@99 = private unnamed_addr constant [7 x i8] c"refresh", align 1
@100 = private unnamed_addr constant [11 x i8] c"retry-after", align 1
@101 = private unnamed_addr constant [20 x i8] c"sec-websocket-accept", align 1
@102 = private unnamed_addr constant [24 x i8] c"sec-websocket-extensions", align 1
@103 = private unnamed_addr constant [17 x i8] c"sec-websocket-key", align 1
@104 = private unnamed_addr constant [22 x i8] c"sec-websocket-protocol", align 1
@105 = private unnamed_addr constant [21 x i8] c"sec-websocket-version", align 1
@106 = private unnamed_addr constant [6 x i8] c"server", align 1
@107 = private unnamed_addr constant [10 x i8] c"set-cookie", align 1
@108 = private unnamed_addr constant [25 x i8] c"strict-transport-security", align 1
@109 = private unnamed_addr constant [2 x i8] c"te", align 1
@110 = private unnamed_addr constant [7 x i8] c"trailer", align 1
@111 = private unnamed_addr constant [17 x i8] c"transfer-encoding", align 1
@112 = private unnamed_addr constant [10 x i8] c"user-agent", align 1
@113 = private unnamed_addr constant [7 x i8] c"upgrade", align 1
@114 = private unnamed_addr constant [25 x i8] c"upgrade-insecure-requests", align 1
@115 = private unnamed_addr constant [4 x i8] c"vary", align 1
@116 = private unnamed_addr constant [3 x i8] c"via", align 1
@117 = private unnamed_addr constant [7 x i8] c"warning", align 1
@118 = private unnamed_addr constant [16 x i8] c"www-authenticate", align 1
@119 = private unnamed_addr constant [22 x i8] c"x-content-type-options", align 1
@120 = private unnamed_addr constant [22 x i8] c"x-dns-prefetch-control", align 1
@121 = private unnamed_addr constant [15 x i8] c"x-frame-options", align 1
@122 = private unnamed_addr constant [16 x i8] c"x-xss-protection", align 1
@123 = private unnamed_addr constant [34 x i8] c"compact field wrote too many bytes", align 1
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\DA\00\00\00\09\00\00\00" }>, align 8
@125 = private unnamed_addr constant [31 x i8] c"compact field length overflowed", align 1
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\D9\00\00\00\0E\00\00\00" }>, align 8
@127 = private unnamed_addr constant [52 x i8] c"compact field did not initialize its declared length", align 1
@128 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\E3\00\00\00\09\00\00\00" }>, align 8
@129 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\F8\00\00\00\10\00\00\00" }>, align 8
@130 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\BE\00\00\00!\00\00\00" }>, align 8
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\EE\00\00\00\10\00\00\00" }>, align 8
@132 = private unnamed_addr constant [34 x i8] c"compact value block exceeds 64 KiB", align 1
@133 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\96\00\00\00\05\00\00\00" }>, align 8
@134 = private unnamed_addr constant [37 x i8] c"compact value block length overflowed", align 1
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\95\00\00\00\0A\00\00\00" }>, align 8
@136 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\89\00\00\00\12\00\00\00" }>, align 8
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\C0\02\00\00\10\00\00\00" }>, align 8
@138 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\D5\02\00\003\00\00\00" }>, align 8
@139 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\D3\02\00\003\00\00\00" }>, align 8
@140 = private unnamed_addr constant [37 x i8] c"user metadata contains too many pairs", align 1
@141 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\AA\02\00\00-\00\00\00" }>, align 8
@142 = private unnamed_addr constant [34 x i8] c"user metadata length was validated", align 1
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\B2\02\00\005\00\00\00" }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\DD\02\00\00\10\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\96\02\00\00!\00\00\00" }>, align 8
@146 = private unnamed_addr constant [28 x i8] c"user metadata exceeds 64 KiB", align 1
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\9F\02\00\00\05\00\00\00" }>, align 8
@148 = private unnamed_addr constant [31 x i8] c"user metadata length overflowed", align 1
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00\9E\02\00\00\0A\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00!", [23 x i8] undef }>, align 8
@151 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00.", [23 x i8] undef }>, align 8
@152 = private unnamed_addr constant [11 x i8] c"content-md5", align 1
@153 = private unnamed_addr constant [40 x i8] c"header value contains invalid characters", align 1
@154 = private unnamed_addr constant [29 x i8] c"http_util::build_header_value", align 1
@155 = private unnamed_addr constant [324 x i8] c"\01\00\01ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF=", align 1
@156 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1D", [23 x i8] undef }>, align 8
@157 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\11", [23 x i8] undef }>, align 8
@158 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1A", [23 x i8] undef }>, align 8
@159 = private unnamed_addr constant [50 x i8] c"HTTP response does not contain file content length", align 1
@160 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00,", [23 x i8] undef }>, align 8
@161 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\18", [23 x i8] undef }>, align 8
@162 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\16", [23 x i8] undef }>, align 8
@163 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\15", [23 x i8] undef }>, align 8
@164 = private unnamed_addr constant [52 x i8] c"can't build authorization header with empty username", align 1
@165 = private unnamed_addr constant [5 x i8] c"\C0\01:\C0\00", align 1
@166 = private unnamed_addr constant [9 x i8] c"\06Basic \C0\00", align 1
@167 = private unnamed_addr constant [49 x i8] c"can't build authorization header with empty token", align 1
@168 = private unnamed_addr constant [10 x i8] c"\07Bearer \C0\00", align 1
@_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@169 = private unnamed_addr constant [30 x i8] c"tuple struct BytesContentRange", align 1
@170 = private unnamed_addr constant [6 x i8] c"bytes ", align 1
@171 = private unnamed_addr constant [2 x i8] c"*/", align 1
@172 = private unnamed_addr constant [46 x i8] c"core/src/raw/http_util/bytes_content_range.rs\00", align 1
@173 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @172, [16 x i8] c"-\00\00\00\00\00\00\00\B5\00\00\00\0D\00\00\00" }>, align 8
@174 = private unnamed_addr constant [55 x i8] c"header content range is invalid: end is less than start", align 1
@175 = private unnamed_addr constant [8 x i8] c"Metadata", align 1
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types4modeNtB5_9EntryModeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@177 = private unnamed_addr constant [4 x i8] c"mode", align 1
@178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCsgxBkk5gSRhY_4core3fmtbNtB5_5Debug3fmt }>, align 8
@179 = private unnamed_addr constant [10 x i8] c"is_current", align 1
@180 = private unnamed_addr constant [1 x i8] c"\01", align 1
@181 = private unnamed_addr constant [10 x i8] c"is_deleted", align 1
@182 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtReNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@183 = private unnamed_addr constant [13 x i8] c"cache_control", align 1
@184 = private unnamed_addr constant [19 x i8] c"content_disposition", align 1
@185 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCsgxBkk5gSRhY_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@186 = private unnamed_addr constant [14 x i8] c"content_length", align 1
@187 = private unnamed_addr constant [11 x i8] c"content_md5", align 1
@188 = private unnamed_addr constant [12 x i8] c"content_type", align 1
@189 = private unnamed_addr constant [16 x i8] c"content_encoding", align 1
@190 = private unnamed_addr constant [48 x i8] c"metadata stores a previously validated timestamp", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1A\00\00\00\00\00\00\00(\01\00\00\0E\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCs5XgW7KoffLW_12opendal_core3raw4timeNtB5_9TimestampNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@193 = private unnamed_addr constant [13 x i8] c"last_modified", align 1
@194 = private unnamed_addr constant [7 x i8] c"version", align 1
@195 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_12UserMetadataNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@196 = private unnamed_addr constant [13 x i8] c"user_metadata", align 1
@197 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsgxBkk5gSRhY_4core6optionINtB5_6OptionyENtNtB7_3fmt5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@198 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@199 = private unnamed_addr constant [17 x i8] c"BytesContentRange", align 1
@200 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/md-5-0.11.0/src/block_api.rs\00", align 1
@201 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @200, [16 x i8] c"a\00\00\00\00\00\00\00;\00\00\00\13\00\00\00" }>, align 8
@202 = private unnamed_addr constant [4 x i8] c"FILE", align 1
@203 = private unnamed_addr constant [3 x i8] c"DIR", align 1
@204 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@205 = private unnamed_addr constant [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", align 8
@206 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@207 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@208 = private unnamed_addr constant [4 x i8] c"None", align 1
@209 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@210 = private unnamed_addr constant [4 x i8] c"Some", align 1
@211 = private unnamed_addr constant [5 x i8] c"\02*/\C0\00", align 1
@212 = private unnamed_addr constant [8 x i8] c"\C0\01-\C0\02/*\00", align 1
@213 = private unnamed_addr constant [8 x i8] c"\C0\01-\C0\01/\C0\00", align 1
@214 = private unnamed_addr constant [66 x i8] c"?internal error: entered unreachable code: invalid bytes range: \C0\00", align 1
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @172, [16 x i8] c"-\00\00\00\00\00\00\00{\00\00\00\12\00\00\00" }>, align 8
@216 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs4CtJ3uPHEZZ_4jiff9timestamp9TimestampNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8
@217 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str = private unnamed_addr constant [81 x i8] c"\06\0E\0F\0F\0D \1C\1C\1B\1D\16\1E\1D\03\05\07\0D\0D\0C\11\0A\13\10\10\0E\10\0D\17#\0C\06\03\04\04\06\07\09\04\04\08\11\0D\08\13\0D\04\08\0C\06\06\12\13\0F\1B\05\07\0F\07\0B\14\18\11\16\15\06\0A\19\02\07\11\0A\07\19\04\03\07\10\16\16\0F\10", align 8
@switch.table._RNvMsP_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_14StandardHeader6as_str.67 = private unnamed_addr constant [81 x ptr] [ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122], align 8
@switch.table._RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types4modeNtB5_9EntryModeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\03\07", align 8
@switch.table._RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types4modeNtB5_9EntryModeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.68 = private unnamed_addr constant [3 x ptr] [ptr @202, ptr @203, ptr @204], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = tail call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !50, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !50, !noundef !5
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !50, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !50, !noundef !5
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !51, !noundef !5
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !51, !noundef !5
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !52, !noundef !5 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !52, !noundef !5
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !53, !noundef !5
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !53, !noundef !5
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7

_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5XgW7KoffLW_12opendal_core.exit.i.i.i7, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit, %bb.u
  %.sroa.0.03035 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.03035
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.03035
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchescECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %invariant.op.i = sub i64 %1, %i.b
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.sroa.6.0 = phi i64 [ 0, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit ], [ %.reass.i, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.6.0 ; 5 uses
  %i.d = icmp samesign eq i64 %.sroa.6.0, %1
  br i1 %i.d, label %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !noalias !70, !noundef !5 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.6.0, 1
  %i.k = icmp samesign ne i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !noalias !70, !noundef !5
  %i.n = shl nuw nsw i32 %i.i, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.f, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i, label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.f to i32
  br label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i
  %i.t = add nuw nsw i64 %.sroa.6.0, 2
  %i.u = icmp samesign ne i64 %i.t, %1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.l, align 1, !noalias !70, !noundef !5
  %i.x = shl nuw nsw i32 %i.p, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i, label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.6.0, 3
  %i.af = icmp samesign ne i64 %i.ae, %1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i8, ptr %i.v, align 1, !noalias !70, !noundef !5
  %i.ai = shl nuw nsw i32 %i.i, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.aa, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i

_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64
  %.reass.i = add i64 %invariant.op.i, %i.aq      ; 3 uses
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit

_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.6.123 = phi i64 [ %.reass.i, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.sroa.02.0 = phi i64 [ %.reass.i, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.6.0, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.6.123
  %i.as = ptrtoint ptr %i.ar to i64
  %invariant.op.i4 = sub i64 %.sroa.6.123, %i.as
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit
  %.reass5.i6 = phi i64 [ %.reass.i7, %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i6 ; 4 uses
  %i.au = icmp samesign eq i64 %.sroa.6.123, %.reass5.i6
  br i1 %i.au, label %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !noalias !71, !noundef !5 ; 3 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.f, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i: ; preds = %bb.e
  %i.ay = add nsw i64 %.reass5.i6, -1
  %i.az = icmp ne i64 %.sroa.6.123, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 -2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !71, !noundef !5 ; 3 uses
  %i.bc = and i8 %i.bb, 31
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = icmp slt i8 %i.bb, -64
  br i1 %i.be, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = zext nneg i8 %i.aw to i32
  br label %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i
  %i.bg = add nsw i64 %.reass5.i6, -2
  %i.bh = icmp ne i64 %.sroa.6.123, %i.bg
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds i8, ptr %i.at, i64 -3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !71, !noundef !5 ; 3 uses
  %i.bk = and i8 %i.bj, 15
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = icmp slt i8 %i.bj, -64
  br i1 %i.bm, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i, label %bb.h

bb.g:                                             ; preds = %bb.h, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.h ], [ %i.ba, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.ce, %bb.h ], [ %i.bd, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit17.i.i.i ]
  %i.bn = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.bo = and i8 %i.aw, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i
  %i.br = add nsw i64 %.reass5.i6, -3
  %i.bs = icmp ne i64 %.sroa.6.123, %i.br
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !71, !noundef !5
  %i.bv = and i8 %i.bu, 7
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = and i8 %i.bj, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.bt, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i ], [ %i.bi, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ca, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit21.i.i.i ], [ %i.bl, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5XgW7KoffLW_12opendal_core.exit19.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.cc = and i8 %i.bb, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.g

_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.g ], [ %i.av, %bb.f ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.bq, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %i.cf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i7 = add i64 %invariant.op.i4, %i.cg
  %.not.i8 = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i8, label %bb.d, label %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5XgW7KoffLW_12opendal_core.exit

_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.sroa.02.1 = phi i64 [ %.reass5.i6, %_RNvXs0_NtNtCsgxBkk5gSRhY_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %.sroa.02.0, %bb.d ]
  %i.ch = sub nuw i64 %.sroa.02.1, %.sroa.0.0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.cj = insertvalue { ptr, i64 } poison, ptr %i.ci, 0
  %i.ck = insertvalue { ptr, i64 } %i.cj, i64 %i.ch, 1
  ret { ptr, i64 } %i.ck
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre18trim_start_matchescECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %invariant.op.i = sub i64 %1, %i.b
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs_NtNtCsgxBkk5gSRhY_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 5 uses
  %i.d = icmp samesign eq i64 %.reass5.i, %1
  br i1 %i.d, label %_RNvYNtNtNtCsgxBkk5gSRhY_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !noalias !80, !noundef !5 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
end_hunk_0
