Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\91\01\00\00\1C\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\9E\01\00\008\00\00\00" }>, align 8
@146 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\B3\01\00\00\15\00\00\00" }>, align 8
@147 = private unnamed_addr constant [39 x i8] c"assertion failed: params.use_dictionary", align 1
@148 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C9\01\00\00\0D\00\00\00" }>, align 8
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\D7\01\00\00<\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C3\01\00\00\16\00\00\00" }>, align 8
@151 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\11\02\00\00\05\00\00\00" }>, align 8
@152 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\11\02\00\00(\00\00\00" }>, align 8
@153 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\15\05\00\00\09\00\00\00" }>, align 8
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\1A\05\00\00\17\00\00\00" }>, align 8
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\1C\05\00\00\11\00\00\00" }>, align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\DA\04\00\00$\00\00\00" }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\E1\04\00\00!\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\E6\04\00\00!\00\00\00" }>, align 8
@159 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\EE\04\00\00\1B\00\00\00" }>, align 8
@160 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\F4\03\00\00\05\00\00\00" }>, align 8
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\0F\04\00\008\00\00\00" }>, align 8
@_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc4util10kLog2Table = external local_unnamed_addr global [256 x float]
@162 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\19\01\00\00\0D\00\00\00" }>, align 8
@163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\07\01\00\007\00\00\00" }>, align 8
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\01\01\00\00\1B\00\00\00" }>, align 8
@165 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00@\00\00\00\09\00\00\00" }>, align 8
@166 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\0F\06\00\00\19\00\00\00" }>, align 8
@167 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C2\05\00\00\1E\00\00\00" }>, align 8
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C5\05\00\002\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\E6\05\00\00\0D\00\00\00" }>, align 8
@170 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\E9\05\00\00\15\00\00\00" }>, align 8
@171 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\EE\05\00\00\15\00\00\00" }>, align 8
@172 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\FB\05\00\00\1A\00\00\00" }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\DE\05\00\00)\00\00\00" }>, align 8
@174 = private unnamed_addr constant [49 x i8] c"abstract socket name must be shorter than SUN_LEN", align 1
@175 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @174, [9 x i8] c"1\00\00\00\00\00\00\00\14", [7 x i8] undef }>, align 8
@176 = private unnamed_addr constant [40 x i8] c"pingora-core/src/services/background.rs\00", align 1
@177 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @176, [16 x i8] c"'\00\00\00\00\00\00\00^\00\00\00\05\00\00\00" }>, align 8
@_RNvNtCsfQhfhXbPrjn_19brotli_decompressor7context14kContextLookup = external global [4 x [512 x i8]]
@178 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@179 = private unnamed_addr constant [45 x i8] c"ALPN protocol name must be 255 bytes or fewer", align 1
@180 = private unnamed_addr constant [38 x i8] c"pingora-core/src/protocols/tls/mod.rs\00", align 1
@181 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @180, [16 x i8] c"%\00\00\00\00\00\00\00M\00\00\00\09\00\00\00" }>, align 8
@182 = private unnamed_addr constant [58 x i8] c"Custom ALPN cannot be a reserved protocol (http/1.1 or h2)", align 1
@183 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @180, [16 x i8] c"%\00\00\00\00\00\00\00T\00\00\00\11\00\00\00" }>, align 8
@184 = private unnamed_addr constant [38 x i8] c"Custom ALPN protocol must not be empty", align 1
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @180, [16 x i8] c"%\00\00\00\00\00\00\00K\00\00\00\09\00\00\00" }>, align 8
@186 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @180, [16 x i8] c"%\00\00\00\00\00\00\00d\00\00\00\13\00\00\00" }>, align 8
@187 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-decompressor-2.5.1/src/huffman/mod.rs\00", align 1
@188 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @187, [16 x i8] c"q\00\00\00\00\00\00\00n\00\00\00\0B\00\00\00" }>, align 8
@189 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @187, [16 x i8] c"q\00\00\00\00\00\00\00n\00\00\00\18\00\00\00" }>, align 8
@190 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"g\00\00\00\00\00\00\00\A5\02\00\00\18\00\00\00" }>, align 8
@191 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-3.5.0/src/enc/interface.rs\00", align 1
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00\A9\00\00\00\09\00\00\00" }>, align 8
@193 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00;\01\00\00\19\00\00\00" }>, align 8
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00<\01\00\00\1A\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00=\01\00\00\17\00\00\00" }>, align 8
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00>\01\00\00\18\00\00\00" }>, align 8
@197 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00)\01\00\00\19\00\00\00" }>, align 8
@198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00*\01\00\00\1A\00\00\00" }>, align 8
@199 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00+\01\00\00\17\00\00\00" }>, align 8
@200 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @191, [16 x i8] c"f\00\00\00\00\00\00\00,\01\00\00\18\00\00\00" }>, align 8
@201 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/util/wake_list.rs\00", align 1
@202 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @201, [16 x i8] c"g\00\00\00\00\00\00\00#\00\00\00\09\00\00\00" }>, align 8
@203 = private unnamed_addr constant [38 x i8] c"assertion failed: queued.load(Relaxed)", align 1
@204 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"g\00\00\00\00\00\00\00\1E\04\00\00\1D\00\00\00" }>, align 8
@205 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/util/sharded_list.rs\00", align 1
@206 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @205, [16 x i8] c"j\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@207 = private unnamed_addr constant [88 x i8] c"assertion failed: <Ix as IndexType>::max().index() == !0 || EdgeIndex::end() != edge_idx", align 1
@208 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\008\02\00\00\09\00\00\00" }>, align 8
@209 = private unnamed_addr constant [43 x i8] c"Graph::add_edge: node indices out of bounds", align 1
@210 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00?\02\00\00\1B\00\00\00" }>, align 8
@211 = private unnamed_addr constant [88 x i8] c"assertion failed: <Ix as IndexType>::max().index() == !0 || NodeIndex::end() != node_idx", align 1
@212 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\14\02\00\00\09\00\00\00" }>, align 8
@_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict20kBrotliEncDictionary = external global { ptr, ptr, ptr }
@213 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-3.5.0/src/enc/static_dict.rs\00", align 1
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @213, [16 x i8] c"h\00\00\00\00\00\00\00#\00\00\00\1F\00\00\00" }>, align 8
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @213, [16 x i8] c"h\00\00\00\00\00\00\00#\00\00\00\0B\00\00\00" }>, align 8
@_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants14kContextLookup = external global [2048 x i8]
@216 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\04\02\00\00\0F\00\00\00" }>, align 8
@217 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\90\02\00\00\13\00\00\00" }>, align 8
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C2\03\00\00\0C\00\00\00" }>, align 8
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C7\03\00\007\00\00\00" }>, align 8
@220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @121, [16 x i8] c"s\00\00\00\00\00\00\00\C9\03\00\00\09\00\00\00" }>, align 8
@221 = private unnamed_addr constant [52 x i8] c"destination and source slices have different lengths", align 1
@222 = private unnamed_addr constant [2 x i8] c"H1", align 1
@223 = private unnamed_addr constant [2 x i8] c"H2", align 1
@224 = private unnamed_addr constant [4 x i8] c"H2H1", align 1
@225 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNNtB6_5Debug3fmtBC_ }>, align 8
@226 = private unnamed_addr constant [6 x i8] c"Custom", align 1
@227 = private unnamed_addr constant [15 x i8] c"\0ANodeIndex(\C0\01)\00", align 1
@228 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/io/impls.rs\00", align 1
@229 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @228, [16 x i8] c"M\00\00\00\00\00\00\00\0B\01\00\00\18\00\00\00" }>, align 8
@230 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@231 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@232 = private unnamed_addr constant [10 x i8] c"CustomALPN", align 1
@233 = private unnamed_addr constant [4 x i8] c"wire", align 1
@234 = private unnamed_addr constant [6 x i8] c"header", align 1
@235 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs\00", align 1
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @235, [16 x i8] c"a\00\00\00\00\00\00\00\93\00\00\00\0D\00\00\00" }>, align 8
@237 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix15FilePermissionsNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@238 = private unnamed_addr constant [11 x i8] c"Permissions", align 1
@239 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs_NtNtCskeugdADtBsi_12pingora_core8services10backgroundINtBI_20GenBackgroundServiceNtNtNtBM_6server18bootstrap_services16BootstrapServiceENtBK_21ServiceWithDependents13start_service0EBM_, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs_NtNtCskeugdADtBsi_12pingora_core8services10backgroundINtB6_20GenBackgroundServiceNtNtNtBa_6server18bootstrap_services16BootstrapServiceENtB8_21ServiceWithDependents13start_service0Ba_ }>, align 8
@240 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs_NtNtCskeugdADtBsi_12pingora_core8services10backgroundINtBI_20GenBackgroundServiceNtNtNtBM_6server18bootstrap_services17SentryInitServiceENtBK_21ServiceWithDependents13start_service0EBM_, [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXs_NtNtCskeugdADtBsi_12pingora_core8services10backgroundINtB6_20GenBackgroundServiceNtNtNtBa_6server18bootstrap_services17SentryInitServiceENtB8_21ServiceWithDependents13start_service0Ba_ }>, align 8
@241 = private unnamed_addr constant [12 x i8] c"\07Custom(\C0\01)\00", align 1
@242 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@243 = private unnamed_addr constant [4 x i8] c"Fork", align 1
@244 = private unnamed_addr constant [4 x i8] c"Wait", align 1
@245 = private unnamed_addr constant [13 x i8] c"DetachSession", align 1
@246 = private unnamed_addr constant [13 x i8] c"GroupNotFound", align 1
@247 = private unnamed_addr constant [16 x i8] c"GroupContainsNul", align 1
@248 = private unnamed_addr constant [8 x i8] c"SetGroup", align 1
@249 = private unnamed_addr constant [12 x i8] c"UserNotFound", align 1
@250 = private unnamed_addr constant [15 x i8] c"UserContainsNul", align 1
@251 = private unnamed_addr constant [7 x i8] c"SetUser", align 1
@252 = private unnamed_addr constant [15 x i8] c"ChangeDirectory", align 1
@253 = private unnamed_addr constant [15 x i8] c"PathContainsNul", align 1
@254 = private unnamed_addr constant [11 x i8] c"OpenPidfile", align 1
@255 = private unnamed_addr constant [15 x i8] c"GetPidfileFlags", align 1
@256 = private unnamed_addr constant [15 x i8] c"SetPidfileFlags", align 1
@257 = private unnamed_addr constant [11 x i8] c"LockPidfile", align 1
@258 = private unnamed_addr constant [12 x i8] c"ChownPidfile", align 1
@259 = private unnamed_addr constant [11 x i8] c"OpenDevnull", align 1
@260 = private unnamed_addr constant [15 x i8] c"RedirectStreams", align 1
@261 = private unnamed_addr constant [12 x i8] c"CloseDevnull", align 1
@262 = private unnamed_addr constant [15 x i8] c"TruncatePidfile", align 1
@263 = private unnamed_addr constant [8 x i8] c"WritePid", align 1
@264 = private unnamed_addr constant [24 x i8] c"WritePidUnspecifiedError", align 1
@265 = private unnamed_addr constant [6 x i8] c"Chroot", align 1
@266 = private unnamed_addr constant [2 x i8] c"Ip", align 1
@267 = private unnamed_addr constant [4 x i8] c"Ipv4", align 1
@268 = private unnamed_addr constant [4 x i8] c"Ipv6", align 1
@269 = private unnamed_addr constant [6 x i8] c"Socket", align 1
@270 = private unnamed_addr constant [8 x i8] c"SocketV4", align 1
@271 = private unnamed_addr constant [8 x i8] c"SocketV6", align 1
@272 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6escape15EscapeIterInnerKja_NtBz_13AlwaysEscapedENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@273 = private unnamed_addr constant [13 x i8] c"EscapeDefault", align 1
@_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@274 = private unnamed_addr constant [47 x i8] c"\08Service \C0\07 spent \C0\1Ams waiting on dependencies\00", align 1
@275 = private unnamed_addr constant [33 x i8] c"pingora-core/src/services/mod.rs\00", align 1
@276 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @275, [16 x i8] c" \00\00\00\00\00\00\00M\01\00\00\09\00\00\00" }>, align 8
@277 = private unnamed_addr constant [22 x i8] c"pingora_core::services", align 1
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core = private unnamed_addr constant [6 x i8] c"\02\04\04\06\08\08", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core.229 = private unnamed_addr constant [6 x ptr] [ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsizh5tqqfmoW_8clap_lexNtB3_7RawArgs3newNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !36
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Csizh5tqqfmoW_8clap_lexNtB3d_7RawArgsINtNtB28_7convert4FromB2N_E4from0EE9from_iterCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCsizh5tqqfmoW_8clap_lexNtB3_7RawArgs6insertRNtNtCsexYYUdYSQU6_5alloc6string6StringABK_j1_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.b), !noalias !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.c, align 8, !alias.scope !41
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !41
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !41
  invoke void @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs2awuzAz5vY4_5tokio3net4unix8listenerNtB3_12UnixListener4bindReECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [110 x i8], align 2               ; 6 uses
  %.sroa.64.i = alloca [107 x i8], align 1        ; 6 uses
  %i.b = alloca [120 x i8], align 8               ; 9 uses
  %i.c = alloca [116 x i8], align 4               ; 12 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %i.d = alloca [120 x i8], align 8               ; 9 uses
  %i.e = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addr11sockaddr_un(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !49
  %i.f = load i32, ptr %i.b, align 8, !range !5, !noalias !48, !noundef !4
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %bb.h, label %bb.g, !prof !6

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !48, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.8.copyload = load ptr, ptr %i.l, align 4, !noalias !50
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(102) %.sroa.11.8..sroa_idx, i64 102, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.n = load i32, ptr %i.m, align 4, !noalias !48, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.n, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %.sroa.7.8.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio3net4unix8listenerNtB2_12UnixListener9bind_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c
  %i.o = add i64 %2, -1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %.sroa.64.i, i8 0, i64 107, i1 false), !noalias !51
  %i.p = icmp samesign ugt i64 %i.o, 107
  br i1 %i.p, label %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit.thread, label %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit

_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i)
  br label %bb.i

_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.64.i, ptr nonnull readonly align 1 %i.q, i64 range(i64 0, -9223372036854775808) %i.o, i1 false), !noalias !52
  %i.r = trunc nuw nsw i64 %i.o to i32
  %i.s = add nuw nsw i32 %i.r, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  store i16 1, ptr %i.a, align 2, !noalias !51
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %.sroa.6.0..sroa_idx2.i, align 2, !noalias !51
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %.sroa.64.0..sroa_idx5.i, ptr noundef nonnull align 1 dereferenceable(107) %.sroa.64.i, i64 107, i1 false), !noalias !51
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB2_10SocketAddr10from_parts(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.d, ptr noalias nofree noundef nonnull readonly align 2 captures(none) dereferenceable(110) %i.a, i32 noundef %i.s), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  %.pre.a = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i)
  %4 = trunc nuw i32 %.pre.a to i1
  br i1 %4, label %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit._crit_edge, label %bb.j

_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit._crit_edge: ; preds = %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable

bb.i:                                             ; preds = %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit._crit_edge, %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit.thread
  %5 = phi ptr [ %.pre, %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit._crit_edge ], [ @175, %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.t, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.j:                                             ; preds = %_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.021.0.copyload = load i32, ptr %i.u, align 4
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.523.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.021.0.copyload, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx15, align 4
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.6.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio3net4unix8listenerNtB2_12UnixListener9bind_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameRNtNtBb_4path4PathECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addr11sockaddr_un(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i32, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(110) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(110) %i.g, i64 110, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameReECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addr11sockaddr_un(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i32, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(110) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(110) %i.g, i64 110, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs87coOwG4J0B_6flate22gzNtB6_9GzBuilder5writeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs1_NtCs87coOwG4J0B_6flate22gzNtB5_9GzBuilder11into_header(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i32 noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtNtCs87coOwG4J0B_6flate22gz5write10gz_encoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.b

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #30
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_Cs8g3Ec4JUrHS_9daemonizeINtB6_9DaemonizeuE17privileged_actionuNCNvNtNtCskeugdADtBsi_12pingora_core6server6daemon9daemonize0EB1e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !58
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 81) 24, i64 noundef 8) #31, !noalias !58 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !59, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !59 ; 2 uses
  store i8 0, ptr %.val.i, align 1, !noalias !59
  %i.g = icmp eq i64 %.val1.i, 0
  br i1 %i.g, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #31, !noalias !59
  br label %.body

.body:                                            ; preds = %bb.d, %bb.c, %.body3
  %.pn = phi { ptr, i32 } [ %i.p, %.body3 ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8g3Ec4JUrHS_9daemonize9DaemonizeuEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #30
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.j = load ptr, ptr %.val2, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuEL_EECskeugdADtBsi_12pingora_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuEL_EECskeugdADtBsi_12pingora_core.exit

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.body3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !9, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #31
  br label %.body3

end_hunk_0
begin_hunk_1_@_RNvXCs8g3Ec4JUrHS_9daemonizeNtB2_4UserINtNtCskKLDkoKarTP_4core7convert4FromReE4from

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_Cs8g3Ec4JUrHS_9daemonizeNtB5_5GroupINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(116), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCseJvwusBHZQA_8lock_api5mutex5MutexNtNtCs9VZ2FwlvA7t_11parking_lot9raw_mutex8RawMutexNtNtNtCskeugdADtBsi_12pingora_core6server18bootstrap_services9BootstrapEE9drop_slowB2e_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexNtNtNtCskeugdADtBsi_12pingora_core6server11transfer_fd3FdsEE9drop_slowB1u_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEE9drop_slowB1x_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvMs0_Cs38Y4TNCwBet_11fixedbitsetNtB7_11FixedBitSet4grow7do_grow(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_Cs38Y4TNCwBet_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix15FilePermissionsNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRShNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6escape15EscapeIterInnerKja_NtBz_13AlwaysEscapedENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdYyxaOYRLxS_3log13___private_api3loguNtB2_12GlobalLoggerECskeugdADtBsi_12pingora_core(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline noreturn }
attributes #30 = { cold }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { noinline }
attributes #34 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i32 0, i32 2}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 1, i64 536870913}
!10 = !{i64 -2, i64 -9223372036854775808}
!11 = !{i32 0, i32 3}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{i8 0, i8 7}
!14 = !{!"address", !"read_provenance"}
!15 = !{i64 0, i64 2}
!16 = !{i64 0, i64 -9223372036854775807}
!17 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{i64 0, i64 11}
!21 = !{i8 0, i8 4}
!22 = !{!"branch_weights", i32 4001, i32 1}
!23 = !{!"branch_weights", i32 4001, i32 4000000}
!24 = !{i64 4}
!25 = !{i32 0, i32 5}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{i64 2}
!29 = !{i64 1, i64 0}
!30 = !{i32 0, i32 23}
!31 = !{i64 0, i64 -9223372036854775805}
!32 = !{i32 0, i32 -1}
!33 = distinct !{!33, i1 true, !"_RINvYNtNtCsG258MDvU3F_3std3env6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_Csizh5tqqfmoW_8clap_lexNtB28_7RawArgsINtNtBH_7convert4FromB3_E4from0ECskeugdADtBsi_12pingora_core"}
!34 = distinct !{!34, !33, !"_RINvYNtNtCsG258MDvU3F_3std3env6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_Csizh5tqqfmoW_8clap_lexNtB28_7RawArgsINtNtBH_7convert4FromB3_E4from0ECskeugdADtBsi_12pingora_core: argument 1"}
!35 = distinct !{!35, !33, !"_RINvYNtNtCsG258MDvU3F_3std3env6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_Csizh5tqqfmoW_8clap_lexNtB28_7RawArgsINtNtBH_7convert4FromB3_E4from0ECskeugdADtBsi_12pingora_core: argument 0"}
!36 = !{!35, !34}
!37 = distinct !{!37, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE6spliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtNtNtNtB1C_4iter8adapters3map3MapINtNtNtB1C_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB1C_7convert4IntoBG_E4intoEECskeugdADtBsi_12pingora_core"}
!38 = distinct !{!38, !37, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE6spliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtNtNtNtB1C_4iter8adapters3map3MapINtNtNtB1C_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB1C_7convert4IntoBG_E4intoEECskeugdADtBsi_12pingora_core: argument 2"}
!39 = distinct !{!39, !37, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE6spliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtNtNtNtB1C_4iter8adapters3map3MapINtNtNtB1C_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB1C_7convert4IntoBG_E4intoEECskeugdADtBsi_12pingora_core: argument 0"}
!40 = !{!38}
!41 = !{!39, !38}
!42 = distinct !{!42, i1 true, !"_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameReECskeugdADtBsi_12pingora_core"}
!43 = distinct !{!43, !42, !"_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameReECskeugdADtBsi_12pingora_core: argument 1"}
!44 = distinct !{!44, !42, !"_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameReECskeugdADtBsi_12pingora_core: argument 0"}
!45 = distinct !{!45, i1 true, !"_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core"}
!46 = distinct !{!46, !45, !"_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core: argument 1"}
!47 = distinct !{!47, !45, !"_RINvXs_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtNtNtBb_3net9linux_ext4addr13SocketAddrExt18from_abstract_nameRShECskeugdADtBsi_12pingora_core: argument 0"}
!48 = !{!44, !43}
!49 = !{!44}
!50 = !{!43}
!51 = !{!47, !46}
!52 = !{!47}
!53 = !{!46}
!54 = distinct !{!54, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvNtNtCskeugdADtBsi_12pingora_core6server6daemon9daemonize0E3newBM_"}
!55 = distinct !{!55, !54, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvNtNtCskeugdADtBsi_12pingora_core6server6daemon9daemonize0E3newBM_: argument 0"}
!56 = distinct !{!56, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCskeugdADtBsi_12pingora_core6server6daemon9daemonize0EBJ_"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCskeugdADtBsi_12pingora_core6server6daemon9daemonize0EBJ_: argument 0"}
!58 = !{!55}
!59 = !{!57}
!60 = distinct !{!60, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize4UserEECskeugdADtBsi_12pingora_core"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize4UserEECskeugdADtBsi_12pingora_core: argument 0"}
!62 = !{!61}
!63 = distinct !{!63, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize5GroupEECskeugdADtBsi_12pingora_core"}
!64 = distinct !{!64, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize5GroupEECskeugdADtBsi_12pingora_core: argument 0"}
!65 = !{!64}
!66 = distinct !{!66, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core: argument 0"}
!68 = !{!67}
!69 = distinct !{!69, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs87coOwG4J0B_6flate23crc3CrcE3newCskeugdADtBsi_12pingora_core"}
!70 = distinct !{!70, !69, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs87coOwG4J0B_6flate23crc3CrcE3newCskeugdADtBsi_12pingora_core: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core"}
!72 = distinct !{!72, !71, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 0"}
!73 = distinct !{!73, !71, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 1"}
!74 = distinct !{!74, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!75 = distinct !{!75, !74, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!76 = distinct !{!76, !74, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!77 = distinct !{!77, i1 true, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core"}
!78 = distinct !{!78, !77, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core: argument 0"}
!79 = distinct !{!79, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!81 = distinct !{!81, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core"}
!82 = distinct !{!82, !81, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 0"}
!83 = distinct !{!83, !81, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 1"}
!84 = distinct !{!84, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!85 = distinct !{!85, !84, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!86 = distinct !{!86, !84, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!87 = distinct !{!87, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core"}
!88 = distinct !{!88, !87, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 0"}
!89 = distinct !{!89, !87, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 1"}
!90 = distinct !{!90, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!91 = distinct !{!91, !90, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!92 = distinct !{!92, !90, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!93 = distinct !{!93, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvMBL_BI_3newECskeugdADtBsi_12pingora_core"}
!94 = distinct !{!94, !93, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvMBL_BI_3newECskeugdADtBsi_12pingora_core: argument 0"}
!95 = distinct !{!95, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core"}
!96 = distinct !{!96, !95, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core: argument 0"}
!97 = distinct !{!97, !95, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core: argument 1"}
!98 = distinct !{!98, i1 true, !"_RNvXs6_NtNtCsexYYUdYSQU6_5alloc2io4utilQRShNtB5_12SpecReadByte14spec_read_byteCskeugdADtBsi_12pingora_core"}
!99 = distinct !{!99, !98, !"_RNvXs6_NtNtCsexYYUdYSQU6_5alloc2io4utilQRShNtB5_12SpecReadByte14spec_read_byteCskeugdADtBsi_12pingora_core: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvNtNtCsexYYUdYSQU6_5alloc2io4util22inlined_slow_read_byteQRShECskeugdADtBsi_12pingora_core"}
!101 = distinct !{!101, !100, !"_RINvNtNtCsexYYUdYSQU6_5alloc2io4util22inlined_slow_read_byteQRShECskeugdADtBsi_12pingora_core: argument 0"}
!102 = distinct !{!102, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!103 = distinct !{!103, !102, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read4readCskeugdADtBsi_12pingora_core"}
!105 = distinct !{!105, !104, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read4readCskeugdADtBsi_12pingora_core: argument 0"}
!106 = distinct !{!106, !102, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!107 = distinct !{!107, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskeugdADtBsi_12pingora_core"}
!108 = distinct !{!108, !107, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskeugdADtBsi_12pingora_core: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvMBL_BI_3newECskeugdADtBsi_12pingora_core"}
!110 = distinct !{!110, !109, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEE18get_or_insert_withNvMBL_BI_3newECskeugdADtBsi_12pingora_core: argument 0"}
!111 = distinct !{!111, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core"}
!112 = distinct !{!112, !111, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core: argument 0"}
!113 = distinct !{!113, !111, !"_RINvNtCs87coOwG4J0B_6flate22gz11read_to_nulRShECskeugdADtBsi_12pingora_core: argument 1"}
!114 = distinct !{!114, i1 true, !"_RNvXs6_NtNtCsexYYUdYSQU6_5alloc2io4utilQRShNtB5_12SpecReadByte14spec_read_byteCskeugdADtBsi_12pingora_core"}
!115 = distinct !{!115, !114, !"_RNvXs6_NtNtCsexYYUdYSQU6_5alloc2io4utilQRShNtB5_12SpecReadByte14spec_read_byteCskeugdADtBsi_12pingora_core: argument 0"}
!116 = distinct !{!116, i1 true, !"_RINvNtNtCsexYYUdYSQU6_5alloc2io4util22inlined_slow_read_byteQRShECskeugdADtBsi_12pingora_core"}
!117 = distinct !{!117, !116, !"_RINvNtNtCsexYYUdYSQU6_5alloc2io4util22inlined_slow_read_byteQRShECskeugdADtBsi_12pingora_core: argument 0"}
!118 = distinct !{!118, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!119 = distinct !{!119, !118, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read4readCskeugdADtBsi_12pingora_core"}
!121 = distinct !{!121, !120, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read4readCskeugdADtBsi_12pingora_core: argument 0"}
!122 = distinct !{!122, !118, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!123 = distinct !{!123, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskeugdADtBsi_12pingora_core"}
!124 = distinct !{!124, !123, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskeugdADtBsi_12pingora_core: argument 0"}
!125 = distinct !{!125, i1 true, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core"}
!126 = distinct !{!126, !125, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 0"}
!127 = distinct !{!127, !125, !"_RINvNtCs87coOwG4J0B_6flate22gz9read_intoRShECskeugdADtBsi_12pingora_core: argument 1"}
!128 = distinct !{!128, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!129 = distinct !{!129, !128, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!130 = distinct !{!130, !128, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!131 = !{!70}
!132 = !{!72}
!133 = !{!73}
!134 = !{!75}
!135 = !{!76}
!136 = !{!75, !76, !72, !73}
!137 = !{!76, !73}
!138 = !{!75, !72}
!139 = !{!78}
!140 = !{!80}
!141 = !{!82}
!142 = !{!83}
!143 = !{!85}
!144 = !{!86}
!145 = !{!85, !86, !82, !83}
!146 = !{!86, !83}
!147 = !{!85, !82}
!148 = !{!88}
!149 = !{!89}
!150 = !{!91}
!151 = !{!92}
!152 = !{!91, !92, !88, !89}
!153 = !{!92, !89}
!154 = !{!91, !88}
!155 = !{!94}
!156 = !{!96}
!157 = !{!97}
!158 = !{!101, !99, !96, !97}
!159 = !{!103, !101, !99, !96}
!160 = !{!103, !96}
!161 = !{!105, !101, !99}
!162 = !{!103}
!163 = !{!103, !106, !105, !101, !99, !96}
!164 = !{!108, !97}
!165 = !{!110}
!166 = !{!112}
!167 = !{!113}
!168 = !{!117, !115, !112, !113}
!169 = !{!119, !117, !115, !112}
!170 = !{!119, !112}
!171 = !{!121, !117, !115}
!172 = !{!119}
!173 = !{!119, !122, !121, !117, !115, !112}
!174 = !{!124, !113}
!175 = !{!126}
!176 = !{!127}
!177 = !{!129}
!178 = !{!130}
!179 = !{!129, !130, !126, !127}
!180 = !{!130, !127}
!181 = !{!129, !126}
!182 = !{i64 0, i64 3}
!183 = distinct !{!183, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core"}
!184 = distinct !{!184, !183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core: argument 0"}
!185 = distinct !{!185, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize4UserEECskeugdADtBsi_12pingora_core"}
!186 = distinct !{!186, !185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize4UserEECskeugdADtBsi_12pingora_core: argument 0"}
!187 = distinct !{!187, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize5GroupEECskeugdADtBsi_12pingora_core"}
!188 = distinct !{!188, !187, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs8g3Ec4JUrHS_9daemonize5GroupEECskeugdADtBsi_12pingora_core: argument 0"}
!189 = distinct !{!189, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core"}
!190 = distinct !{!190, !189, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskeugdADtBsi_12pingora_core: argument 0"}
!191 = !{!184}
!192 = !{!186}
!193 = !{!188}
!194 = !{!190}
!195 = distinct !{!195, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskeugdADtBsi_12pingora_core"}
!196 = distinct !{!196, !195, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskeugdADtBsi_12pingora_core: argument 0"}
!197 = !{!196}
!198 = distinct !{!198, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskeugdADtBsi_12pingora_core"}
!199 = distinct !{!199, !198, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskeugdADtBsi_12pingora_core: argument 0"}
!200 = !{!199}
!201 = distinct !{!201, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core"}
!202 = distinct !{!202, !201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core: argument 0"}
!203 = distinct !{!203, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core"}
!204 = distinct !{!204, !203, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core: argument 0"}
!205 = distinct !{!205, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core"}
!206 = distinct !{!206, !205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1F_EECskeugdADtBsi_12pingora_core: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor5state23BlockTypeAndLengthStateNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core"}
!208 = distinct !{!208, !207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfQhfhXbPrjn_19brotli_decompressor5state23BlockTypeAndLengthStateNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core: argument 0"}
!209 = !{!202}
!210 = !{!204}
!211 = !{!206}
!212 = !{!208}
!213 = distinct !{!213, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core"}
!214 = distinct !{!214, !213, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core: argument 0"}
!215 = distinct !{!215, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!216 = distinct !{!216, !215, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!217 = distinct !{!217, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core"}
!218 = distinct !{!218, !217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core: argument 0"}
!219 = distinct !{!219, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!220 = distinct !{!220, !219, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!221 = !{!214}
!222 = !{!216}
!223 = !{!216, !214}
!224 = !{!218}
!225 = !{!220}
!226 = !{!220, !218}
!227 = distinct !{!227, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core"}
!228 = distinct !{!228, !227, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core: argument 0"}
!229 = distinct !{!229, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!230 = distinct !{!230, !229, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!231 = distinct !{!231, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core"}
!232 = distinct !{!232, !231, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEECskeugdADtBsi_12pingora_core: argument 0"}
!233 = distinct !{!233, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!234 = distinct !{!234, !233, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!235 = !{!228}
!236 = !{!230}
!237 = !{!230, !228}
!238 = !{!232}
!239 = !{!234}
!240 = !{!234, !232}
!241 = distinct !{!241, i1 true, !"_RNvXs2_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_11WaitersListNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB15_"}
!242 = distinct !{!242, !241, !"_RNvXs2_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_11WaitersListNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB15_: argument 0"}
!243 = !{!242}
!244 = distinct !{!244, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core"}
!245 = distinct !{!245, !244, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core: argument 0"}
!246 = distinct !{!246, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core"}
!247 = distinct !{!247, !246, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core: argument 0"}
!248 = distinct !{!248, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core"}
!249 = distinct !{!249, !248, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11block_split10BlockSplitNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core: argument 0"}
!250 = !{!245}
!251 = !{!247}
!252 = !{!249}
!253 = distinct !{!253, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references19hash_to_binary_tree3H10NtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtBE_10H10BucketsB1T_ENtBE_16H10DefaultParamsEECskeugdADtBsi_12pingora_core"}
end_hunk_1
