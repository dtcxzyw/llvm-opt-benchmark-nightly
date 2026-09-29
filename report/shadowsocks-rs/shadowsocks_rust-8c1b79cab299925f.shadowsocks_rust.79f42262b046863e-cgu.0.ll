Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0
@819 = private unnamed_addr constant [8 x i8] c"metadata", align 1
@820 = private unnamed_addr constant [6 x i8] c"values", align 1
@821 = private unnamed_addr constant [6 x i8] c"parent", align 1
@822 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_12AddressErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt }>, align 8
@823 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsD_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_12AddressErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_12AddressErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr @822, ptr @_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks512AddressErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks512AddressErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks512AddressErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks512AddressErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks512AddressErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@824 = private unnamed_addr constant [39 x i8] c"overflow subtracting duration from date", align 1
@825 = private unnamed_addr constant [65 x i8] c":internal error: entered unreachable code: weird lifecycle \C1 \00\80`\00", align 1
@826 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/page/slot.rs\00", align 1
@827 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @826, [16 x i8] c"h\00\00\00\00\00\00\00\94\02\00\00\18\00\00\00" }>, align 8
@828 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsat9HgdBb3qc_16shadowsocks_rust, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@829 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsat9HgdBb3qc_16shadowsocks_rust, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @828, ptr @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@830 = private unnamed_addr constant [4 x i8] c"Fork", align 1
@831 = private unnamed_addr constant [4 x i8] c"Wait", align 1
@832 = private unnamed_addr constant [13 x i8] c"DetachSession", align 1
@833 = private unnamed_addr constant [13 x i8] c"GroupNotFound", align 1
@834 = private unnamed_addr constant [16 x i8] c"GroupContainsNul", align 1
@835 = private unnamed_addr constant [8 x i8] c"SetGroup", align 1
@836 = private unnamed_addr constant [12 x i8] c"UserNotFound", align 1
@837 = private unnamed_addr constant [15 x i8] c"UserContainsNul", align 1
@838 = private unnamed_addr constant [7 x i8] c"SetUser", align 1
@839 = private unnamed_addr constant [15 x i8] c"ChangeDirectory", align 1
@840 = private unnamed_addr constant [15 x i8] c"PathContainsNul", align 1
@841 = private unnamed_addr constant [11 x i8] c"OpenPidfile", align 1
@842 = private unnamed_addr constant [15 x i8] c"GetPidfileFlags", align 1
@843 = private unnamed_addr constant [15 x i8] c"SetPidfileFlags", align 1
@844 = private unnamed_addr constant [11 x i8] c"LockPidfile", align 1
@845 = private unnamed_addr constant [12 x i8] c"ChownPidfile", align 1
@846 = private unnamed_addr constant [11 x i8] c"OpenDevnull", align 1
@847 = private unnamed_addr constant [15 x i8] c"RedirectStreams", align 1
@848 = private unnamed_addr constant [12 x i8] c"CloseDevnull", align 1
@849 = private unnamed_addr constant [15 x i8] c"TruncatePidfile", align 1
@850 = private unnamed_addr constant [8 x i8] c"WritePid", align 1
@851 = private unnamed_addr constant [24 x i8] c"WritePidUnspecifiedError", align 1
@852 = private unnamed_addr constant [6 x i8] c"Chroot", align 1
@853 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsat9HgdBb3qc_16shadowsocks_rust6config22LogConsoleWriterConfigNtB6_5Debug3fmtBA_ }>, align 8
@854 = private unnamed_addr constant [7 x i8] c"Console", align 1
@855 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigNtB6_5Debug3fmtBA_ }>, align 8
@856 = private unnamed_addr constant [4 x i8] c"File", align 1
@857 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigNtB6_5Debug3fmtBA_ }>, align 8
@858 = private unnamed_addr constant [6 x i8] c"Syslog", align 1
@859 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@860 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@861 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@862 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@863 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@864 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@865 = private unnamed_addr constant [20 x i8] c"ParseCipherKindError", align 1
@866 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@867 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideNtB6_5Debug3fmtBA_ }>, align 8
@868 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtB8_6option6OptionbENtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@869 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsm_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_23LogFormatConfigOverrideNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@870 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@871 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_11LogRotationNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@872 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@873 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@874 = private unnamed_addr constant [5 x i8] c"Never", align 1
@875 = private unnamed_addr constant [6 x i8] c"Hourly", align 1
@876 = private unnamed_addr constant [5 x i8] c"Daily", align 1
@877 = private unnamed_addr constant [2 x i8] c"()", align 1
@878 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format13TimingDisplayENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@879 = private unnamed_addr constant [15 x i8] c"\C0\0B is not in \C0\00", align 1
@880 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@881 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRyNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@882 = private unnamed_addr constant [6 x i8] c"rlimit", align 1
@883 = private unnamed_addr constant [8 x i8] c"rlim_cur", align 1
@884 = private unnamed_addr constant [8 x i8] c"rlim_max", align 1
@885 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtB8_6option6OptionlENtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@886 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@887 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1273805787417365033 to ptr), ptr inttoptr (i64 -7308522095925939340 to ptr) }>, align 8
@_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@888 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB4_21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt }>, align 8
@889 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs1kwRxRulhfk_12tracing_core10dispatcherNtB2_21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr @_RNvXs_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB4_21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr @888, ptr @_RNvYNtNtCs1kwRxRulhfk_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtCs1kwRxRulhfk_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtCs1kwRxRulhfk_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtCs1kwRxRulhfk_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsat9HgdBb3qc_16shadowsocks_rust, ptr @_RNvYNtNtCs1kwRxRulhfk_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsat9HgdBb3qc_16shadowsocks_rust }>, align 8
@890 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5528555708737378998 to ptr), ptr inttoptr (i64 330229047097154053 to ptr) }>, align 8
@891 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@892 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @891, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@893 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @132, [16 x i8] c"u\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@894 = private unnamed_addr constant [30 x i8] c"\0Einvalid type: \C0\0B, expected \C0\00", align 1
@895 = private unnamed_addr constant [31 x i8] c"\0Finvalid value: \C0\0B, expected \C0\00", align 1
@896 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1
@897 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@898 = private unnamed_addr constant [34 x i8] c"\11unknown variant `\C0\0C`, expected \C0\00", align 1
@899 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1559906620355349045 to ptr), ptr inttoptr (i64 8856667211897474814 to ptr) }>, align 8
@900 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -207944473459406754 to ptr), ptr inttoptr (i64 -3289490194129977171 to ptr) }>, align 8
@901 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_5Debug3fmt }>, align 8
@902 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_5Debug3fmt }>, align 8
@903 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCsf3Ta7LF998c_4core3fmtbNtB5_5Debug3fmt }>, align 8
@904 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsS_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB7_5Debug3fmt }>, align 8
@905 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsY_NtNtCsf3Ta7LF998c_4core3fmt3numoNtB7_5Debug3fmt }>, align 8
@906 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs1kwRxRulhfk_12tracing_core5fieldNtB2_8HexBytesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@907 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9085958161417153046 to ptr), ptr inttoptr (i64 -2020477135023395421 to ptr) }>, align 8
@908 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1046614332880250679 to ptr), ptr inttoptr (i64 7204516949289995073 to ptr) }>, align 8
@switch.table._RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create = private unnamed_addr constant [5 x ptr] [ptr @383, ptr @384, ptr @385, ptr @386, ptr @387], align 8
@switch.table._RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create.961 = private unnamed_addr constant [5 x i8] c"\05\04\06\05\03", align 8
@switch.table._RNvNtNtNtNtCs5Xr050g3D4S_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1
@switch.table._RNvXs1_NtNtCsat9HgdBb3qc_16shadowsocks_rust7logging7tracingNtNtB9_6config21LogSyslogWriterConfigNtB5_9MakeLayer10make_layer = private unnamed_addr constant [23 x i8] [i8 8, i8 16, i8 24, i8 32, i8 poison, i8 48, i8 56, i8 64, i8 72, i8 80, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 -128, i8 -120, i8 -112, i8 -104, i8 -96, i8 -88, i8 -80, i8 -72], align 4
@switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust.962 = private unnamed_addr constant [6 x ptr] [ptr @859, ptr @860, ptr @861, ptr @862, ptr @863, ptr @864], align 8
@switch.table._RNvXs_NtNtNtCsat9HgdBb3qc_16shadowsocks_rust9daemonize9daemonize5errorNtB4_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt = private unnamed_addr constant [23 x i8] c"\0E\0B\1C(\19\13&\18\12\1A\1C\17\19\19\17\18\180\19\1B$:\1F", align 8
@switch.table._RNvXs_NtNtNtCsat9HgdBb3qc_16shadowsocks_rust9daemonize9daemonize5errorNtB4_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt.963 = private unnamed_addr constant [23 x ptr] [ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293], align 8
@switch.table._RNvXsr_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_11LogRotationNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\05\06\05", align 8
@switch.table._RNvXsr_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_11LogRotationNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.964 = private unnamed_addr constant [3 x ptr] [ptr @874, ptr @875, ptr @876], align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsat9HgdBb3qc_16shadowsocks_rust6configNtB3_6Config14load_from_fileNtNtCs5Xr050g3D4S_3std4path7PathBufEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i128 18446745954905227264, ptr %i.b, align 16
  call void @_RNvMsj_NtCs5Xr050g3D4S_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val) #30
  %i.e = load i32, ptr %i.c, align 8, !range !13, !noundef !14
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx1, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !range !15, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.k, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %i.l = call { i64, ptr } @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_to_string(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #30 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i64, ptr } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.p, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.43.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !16, !alias.scope !77, !noundef !14 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !77, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !77
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.val.i = load i32, ptr %i.d, align 4, !range !15, !alias.scope !78, !noundef !14
  %i.r = call noundef i32 @close(i32 noundef %.val.i) #30, !noalias !78 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !14, !noundef !14
  %i.t = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !noundef !14
  call void @_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust6configNtB2_6Config13load_from_str(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %.val.i.i10 = load i64, ptr %i.a, align 8, !range !16, !alias.scope !81, !noundef !14 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i10, 0
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i11 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !81, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !81
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit12: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.val.i13 = load i32, ptr %i.d, align 4, !range !15, !alias.scope !82, !noundef !14
  %i.v = call noundef i32 @close(i32 noundef %.val.i13) #30, !noalias !82 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtCsfS4ZeCxwza6_6anyhow5errorNtB5_5Error9constructNtCsJovr8ELaM0_3log14SetLoggerErrorECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !85
  %i.a = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !85 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #34, !noalias !85
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @7, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1784) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 17 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [1784 x i8], align 8              ; 25 uses
  %i.h = alloca [1784 x i8], align 8              ; 28 uses
  %.sroa.552.sroa.0.i = alloca [39 x i8], align 1 ; 6 uses
  %.sroa.555.sroa.0.i = alloca [39 x i8], align 1 ; 6 uses
  %i.i = alloca [1136 x i8], align 8              ; 13 uses
  %.sroa.24.i = alloca [504 x i8], align 8        ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val13 = load i64, ptr %i.l, align 8, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 680 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !131
  store ptr %i.j, ptr %i.e, align 8, !alias.scope !132, !noalias !133
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val13, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.val, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.val13, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.val13, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 44, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 44, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 4, !alias.scope !132, !noalias !133
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 1, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !132, !noalias !133
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1, !alias.scope !132, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e) #35, !noalias !135
  %i.o = load i64, ptr %i.c, align 8, !range !18, !noalias !136, !noundef !14
  %.not.i.i.i.i.i = icmp eq i64 %i.o, -2
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !137
  %i.p = call noundef align 8 dereferenceable_or_null(320) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 320, i64 noundef range(i64 1, 9) 8) #30, !noalias !137 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 320) #34, !noalias !136
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !136
  store i64 4, ptr %i.d, align 8, !noalias !138
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !138
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b) #35, !noalias !140
  %i.r = load i64, ptr %i.a, align 8, !range !18, !noalias !141, !noundef !14
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.r, -2
  br i1 %.not1.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %bb.d
  %i.s = phi ptr [ %i.x, %bb.d ], [ %i.p, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.t = phi i64 [ %i.y, %bb.d ], [ 4, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 3 uses
  %i.u = phi i64 [ %i.aa, %bb.d ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 4 uses
  %i.v = icmp samesign ult i64 %i.u, 115292150460684698
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, %i.t
  br i1 %i.w, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.d

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 80) #30, !noalias !138
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !16, !noalias !138
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !138
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.x = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.x, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !141
  %i.aa = add nuw nsw i64 %i.u, 1                 ; 3 uses
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !138
  call fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b) #35, !noalias !140
  %i.ab = load i64, ptr %i.a, align 8, !range !18, !noalias !141, !noundef !14
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %i.ab, -2
  br i1 %.not.i.i2.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !noalias !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !138
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ad, align 8, !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load i8, ptr %i.ae, align 8, !range !19, !alias.scope !130, !noalias !142
  br label %._crit_edge.split.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit: ; preds = %bb.d
  %i.ag = mul nuw nsw i64 %i.aa, 80
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %.pre260.i = phi i64 [ %i.ag, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ], [ 80, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.pre.i = phi ptr [ %i.x, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ], [ %i.p, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !131
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.pre260.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load i8, ptr %i.ai, align 8, !range !19, !alias.scope !130, !noalias !142
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %._crit_edge.split.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %.lr.ph.split.i
  %.sroa.0.0144.i = phi ptr [ %i.al, %.lr.ph.split.i ], [ %.pre.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0144.i, i64 80 ; 2 uses
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive10deregexify(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.0.0144.i) #30, !noalias !138
  %i.am = icmp eq ptr %i.al, %i.ah
  br i1 %i.am, label %._crit_edge.split.i, label %.lr.ph.split.i

._crit_edge.split.i:                              ; preds = %.lr.ph.split.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i
  %i.an = phi i8 [ %i.af, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ], [ 1, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1Y_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB3q_3vec3VecNtNtB20_9directive9DirectiveEECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  call fastcc void @_RINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB3_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB12_EECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1136) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d) #30, !noalias !138
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !138 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !138 ; 4 uses
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 648
  %.sroa.6152.0.copyload.i = load i64, ptr %.sroa.6152.0..sroa_idx.i, align 8, !noalias !138 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 656
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !138 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %.sroa.0255.0.copyload.i = load i64, ptr %i.ao, align 8, !noalias !138 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !138 ; 4 uses
  %.sroa.6257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1120
  %.sroa.6257.0.copyload.i = load i64, ptr %.sroa.6257.0..sroa_idx.i, align 8, !noalias !138 ; 5 uses
  %.sroa.7258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1128
  %.sroa.7258.0.copyload.i = load i64, ptr %.sroa.7258.0..sroa_idx.i, align 8, !noalias !138 ; 3 uses
  %i.ap = icmp ugt i64 %.sroa.6152.0.copyload.i, 8
  %.sink12.i.i = select i1 %i.ap, i64 %.sroa.5.0.copyload.i, i64 %.sroa.6152.0.copyload.i
  %.not = icmp eq i64 %.sink12.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !19, !noalias !143, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, !prof !20

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit_crit_edge.i.i.i: ; preds = %._crit_edge.split.i
  %.pre.i.i.i = load i64, ptr %i.aq, align 8, !noalias !144
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !144
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsat9HgdBb3qc_16shadowsocks_rust.exit103.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %._crit_edge.split.i
end_hunk_0
begin_hunk_1_@_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_:bb.a
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.t
    i64 11, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.gf = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gg = xor i32 %i.gf, 1702258028
  %i.gh = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  %i.gk = xor i32 %i.gj, 108
  %i.gl = or i32 %i.gg, %i.gk
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.thread139, label %.thread156

bb.s:                                             ; preds = %bb.q
  %i.gp = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gq = xor i32 %i.gp, 1836216166
  %i.gr = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gs = load i16, ptr %i.gr, align 1
  %i.gt = zext i16 %i.gs to i32
  %i.gu = xor i32 %i.gt, 29793
  %i.gv = or i32 %i.gq, %i.gu
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %.thread144, label %.thread156

bb.t:                                             ; preds = %bb.q
  %i.gz = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.ha = xor i32 %i.gz, 1953067639
  %i.hb = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hc = load i32, ptr %i.hb, align 1
  %i.hd = xor i32 %i.hc, 1936876916
  %i.he = or i32 %i.ha, %i.hd
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %.thread148, label %.thread156

bb.u:                                             ; preds = %bb.q
  %i.hi = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.hj = xor i64 %i.hi, 8097304357423181667
  %i.hk = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hl = load i64, ptr %i.hk, align 1
  %i.hm = xor i64 %i.hl, 7526748012507785574
  %i.hn = or i64 %i.hj, %i.hm
  %i.ho = icmp ne i64 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.thread152, label %.thread156

bb.v:                                             ; preds = %bb.d
  %i.hr = extractvalue { i64, ptr } %i.ej, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.w:                                             ; preds = %bb.d
  %i.hs = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.hs, null
  br i1 %.not22.i.i, label %bb.x, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.x:                                             ; preds = %bb.w
  %i.ht = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717
  %i.hu = extractvalue { i64, i32 } %i.ht, 1
  %i.hv = icmp eq i32 %i.hu, 125
  br i1 %i.hv, label %.thread, label %bb.e

bb.y:                                             ; preds = %bb.e
  %i.hw = load ptr, ptr %i.cv, align 8, !noalias !4718, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !4718
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit: ; preds = %bb.w, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, %bb.a, %bb.y, %bb.v
  %.sroa.10.03258 = phi ptr [ %.sroa.10.03648, %bb.v ], [ %.sroa.10.03648, %bb.y ], [ undef, %bb.a ], [ %.sroa.10.03648, %bb.w ], [ %.sroa.10.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.0103.03095 = phi i64 [ %.sroa.0103.03649, %bb.v ], [ %.sroa.0103.03649, %bb.y ], [ -2, %bb.a ], [ %.sroa.0103.03649, %bb.w ], [ %.sroa.0103.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.9107.0 = phi ptr [ %i.hr, %bb.v ], [ %i.hw, %bb.y ], [ %i.da, %bb.a ], [ %i.hs, %bb.w ], [ %i.iv, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9107.0) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.thread:                                          ; preds = %bb.x, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !4721)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4721
  %i.hx = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !4721 ; 5 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.z, label %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit, !prof !17

bb.z:                                             ; preds = %.thread
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34, !noalias !4721
  unreachable

_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit: ; preds = %.thread
  store i64 2, ptr %i.hx, align 8, !noalias !4721
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4721
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i8 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i, align 8, !noalias !4721
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store i32 0, ptr %i.hz, align 8, !alias.scope !4721
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  store i8 0, ptr %i.ia, align 4, !alias.scope !4721
  store i64 1, ptr %i.cx, align 8, !alias.scope !4721
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.hx, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4721
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4721
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 -1, ptr %i.ib, align 8, !alias.scope !4721
  %i.ic = trunc nuw i32 %.sroa.04.03653 to i1
  %.sroa.045.0 = select i1 %i.ic, i32 %.sroa.4.03652, i32 0 ; 2 uses
  %.not64 = icmp eq i8 %.sroa.09.03651, 2
  %.sroa.047.0 = select i1 %.not64, i8 0, i8 %.sroa.09.03651 ; 2 uses
  %.not65.not = icmp eq i64 %i.ef, -1             ; 3 uses
  %. = select i1 %.not65.not, ptr %i.cx, ptr %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %.not66 = icmp eq i64 %.sroa.0103.03649, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %.sroa.049.sroa.8.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not66, label %bb.ns, label %bb.nr

default.unreachable:                              ; preds = %bb.ky, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mg
  unreachable

.thread139:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0, %bb.m, %bb.r
  %i.id = icmp eq i32 %.sroa.04.03653, 1
  br i1 %i.id, label %bb.ag, label %bb.ad, !prof !23

.thread144:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1, %bb.n, %bb.s
  %.not70 = icmp eq i8 %.sroa.09.03651, 2
  br i1 %.not70, label %bb.ai, label %bb.by, !prof !20

.thread148:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2, %bb.p, %bb.t
  %.not69 = icmp eq i64 %i.ef, -1
  br i1 %.not69, label %bb.bz, label %bb.mu, !prof !20

.thread152:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3, %bb.l, %bb.u
  %.not68 = icmp eq i64 %.sroa.0103.03649, -2
  br i1 %.not68, label %bb.mx, label %bb.no, !prof !20

.thread156:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4, %bb.o, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.ie = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !0 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i81, label %bb.aa, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.aa:                                            ; preds = %.thread156
  %i.if = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !inline_history !0 ; 2 uses
  %i.ig = extractvalue { i64, ptr } %i.if, 0
  %i.ih = trunc nuw i64 %i.ig to i1
  br i1 %i.ih, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ii = extractvalue { i64, ptr } %i.if, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ij = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i.i = phi ptr [ %i.ij, %bb.ac ], [ %i.ii, %bb.ab ] ; 2 uses
  %.not67 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not67, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ad:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  %i.ik = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4724 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i82, label %bb.ae, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.il = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4724 ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.il, 0
  %i.in = trunc nuw i64 %i.im to i1
  br i1 %i.in, label %bb.af, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.af:                                            ; preds = %bb.ae
  %i.io = extractvalue { i64, ptr } %i.il, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ae
  call fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.cy, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
  %.pre = load i32, ptr %i.cy, align 8, !range !13
  %i.ip = trunc nuw i32 %.pre to i1
  br i1 %i.ip, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr @153, ptr %i.cu, align 8, !noalias !4725
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 5, ptr %i.iq, align 8, !noalias !4725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !4725
  store ptr %i.cu, ptr %i.ct, align 8, !noalias !4725
  %.sroa.42.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i83, align 8, !noalias !4725
  %i.ir = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split: ; preds = %bb.ad, %bb.af
  %.sink = phi ptr [ %i.io, %bb.af ], [ %i.ik, %bb.ad ]
  store ptr %.sink, ptr %i.ed, align 8, !alias.scope !4724
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split
  %i.is = load ptr, ptr %i.ed, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ah:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.it = load i32, ptr %i.ee, align 4, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit: ; preds = %bb.nl, %bb.ni, %bb.ng, %bb.ne, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit, %bb.ah
  %i.iu = phi i64 [ %i.ef, %bb.ah ], [ %i.ef, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0.0.copyload.i3278.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %i.ef, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.ef, %bb.nl ], [ %i.ef, %bb.ne ], [ %i.ef, %bb.ng ], [ %i.ef, %bb.ni ]
  %.sroa.13.1 = phi i64 [ %.sroa.13.03647, %bb.ah ], [ %.sroa.13.03647, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.13.03647, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.13.03647, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ 0, %bb.ni ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.03648, %bb.ah ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.10.03648, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.10.03648, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.atj, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ inttoptr (i64 1 to ptr), %bb.ni ] ; 2 uses
  %.sroa.0103.1 = phi i64 [ %.sroa.0103.03649, %bb.ah ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0103.03649, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.0103.03649, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ -1, %bb.ne ], [ %i.atg, %bb.ng ], [ 0, %bb.ni ] ; 2 uses
  %.sroa.09.1 = phi i8 [ %.sroa.09.03651, %bb.ah ], [ %.sroa.09.03651, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.09.03651, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.3.0.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.09.03651, %bb.nl ], [ %.sroa.09.03651, %bb.ne ], [ %.sroa.09.03651, %bb.ng ], [ %.sroa.09.03651, %bb.ni ]
  %.sroa.4.1 = phi i32 [ %i.it, %bb.ah ], [ %.sroa.4.03652, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.4.03652, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.4.03652, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.4.03652, %bb.nl ], [ %.sroa.4.03652, %bb.ne ], [ %.sroa.4.03652, %bb.ng ], [ %.sroa.4.03652, %bb.ni ]
  %.sroa.04.1 = phi i32 [ 1, %bb.ah ], [ %.sroa.04.03653, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.04.03653, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.04.03653, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.04.03653, %bb.nl ], [ %.sroa.04.03653, %bb.ne ], [ %.sroa.04.03653, %bb.ng ], [ %.sroa.04.03653, %bb.ni ]
  %i.iv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i, label %bb.b, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.ai:                                            ; preds = %.thread144
  %i.iw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4726 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i84, label %bb.aj, label %.loopexit190

bb.aj:                                            ; preds = %bb.ai
  %i.ix = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4726 ; 2 uses
  %i.iy = extractvalue { i64, ptr } %i.ix, 0
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ja = extractvalue { i64, ptr } %i.ix, 1
  br label %.loopexit190

bb.al:                                            ; preds = %bb.aj
  %i.jb = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4727 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %.loopexit190

bb.am:                                            ; preds = %bb.al
  %i.jc = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !4727 ; 3 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %.loopexit190.split.loop.exit3619, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728 ; 2 uses
  %.not.i.i58.i.i.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i58.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.an
  %i.jg = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728
  %i.jh = extractvalue { i64, i32 } %i.jg, 1
  %i.ji = icmp eq i32 %i.jh, 125
  br i1 %i.ji, label %.thread.thread.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4729
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4730
  %i.jj = load i64, ptr %i.eb, align 8, !range !51, !noalias !4729, !noundef !14 ; 4 uses
  %i.jk = icmp eq i64 %i.jj, -2
  br i1 %i.jk, label %.loopexit78.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4729
  %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i = icmp eq i64 %i.jj, -1
  %i.jl = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jl, label %bb.ar, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jm = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jn = xor i64 %i.jm, 6878251652255869303
  %i.jo = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jp = load i32, ptr %i.jo, align 1
  %i.jq = zext i32 %i.jp to i64
  %i.jr = xor i64 %i.jq, 1701669236
  %i.js = or i64 %i.jn, %i.jr
  %i.jt = icmp ne i64 %i.js, 0                    ; 2 uses
  %i.ju = zext i1 %i.jt to i32                    ; 0 uses
  %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.jt to i8
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.jv = icmp eq i64 %i.jj, 0
  br i1 %i.jv, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4731
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  br i1 %i.jl, label %bb.au, label %.thread33.peel.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.jw = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jx = xor i64 %i.jw, 6878251652255869303
  %i.jy = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jz = load i32, ptr %i.jy, align 1
  %i.ka = zext i32 %i.jz to i64
  %i.kb = xor i64 %i.ka, 1701669236
  %i.kc = or i64 %i.jx, %i.kb
  %i.kd = icmp ne i64 %i.kc, 0                    ; 2 uses
  %i.ke = zext i1 %i.kd to i32                    ; 0 uses
  %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.kd to i8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  %.sroa.5.0.ph.peel.i.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.as ], [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i ], [ %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.au ]
  %cond.peel.i.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.ph.peel.i.i.i.i.i.i.i, 0
  br i1 %cond.peel.i.i.i.i.i.i.i, label %bb.az, label %.thread33.peel.i.i.i.i.i.i.i

.thread33.peel.i.i.i.i.i.i.i:                     ; preds = %bb.av, %bb.at
  %i.kf = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4732, !inline_history !0 ; 2 uses
  %.not.i.i17.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i17.peel.i.i.i.i.i.i.i, label %bb.aw, label %.loopexit.i.i.i.i.i.i

bb.aw:                                            ; preds = %.thread33.peel.i.i.i.i.i.i.i
  %i.kg = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4732, !inline_history !0 ; 2 uses
  %i.kh = extractvalue { i64, ptr } %i.kg, 0
  %i.ki = trunc nuw i64 %i.kh to i1
  br i1 %i.ki, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kj = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4732, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.kk = extractvalue { i64, ptr } %i.kg, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i = phi ptr [ %i.kj, %bb.ax ], [ %i.kk, %bb.ay ] ; 2 uses
  %.not15.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i, null
  br i1 %.not15.peel.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.av
  %i.kl = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4733 ; 2 uses
  %.not.i.i18.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i18.peel.i.i.i.i.i.i.i, label %bb.ba, label %.loopexit.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.km = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4733 ; 2 uses
  %i.kn = extractvalue { i64, ptr } %i.km, 0
  %i.ko = trunc nuw i64 %i.kn to i1
  br i1 %i.ko, label %.loopexit80.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !4734
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4735
  %i.kp = load i8, ptr %i.ec, align 8, !range !28, !noalias !4734, !noundef !14 ; 2 uses
  %i.kq = icmp eq i8 %i.kp, 2
  br i1 %i.kq, label %.loopexit81.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !4734
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i
  %.sroa.04.1.peel.i.i.i.i.i.i.i = phi i8 [ %i.kp, %bb.bc ], [ 2, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i ]
  %i.kr = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728 ; 2 uses
  %.not.i.i.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.peel.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %bb.bd, %bb.bx
  %.sroa.04.060.i.i.i.i.i.i.i = phi i8 [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.04.1.peel.i.i.i.i.i.i.i, %bb.bd ] ; 4 uses
  %i.ks = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728
  %i.kt = extractvalue { i64, i32 } %i.ks, 1
  %i.ku = icmp eq i32 %i.kt, 125
  br i1 %i.ku, label %.thread.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.peel.next.i.i.i.i.i.i.i
  %i.kv = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4728 ; 2 uses
  %i.kw = extractvalue { i64, ptr } %i.kv, 0
  %i.kx = trunc nuw i64 %i.kw to i1
  br i1 %i.kx, label %.loopexit77.i.i.i.i.i.i.i, label %bb.bm

bb.bf:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4729
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4730
  %i.ky = load i64, ptr %i.eb, align 8, !range !51, !noalias !4729, !noundef !14 ; 4 uses
  %i.kz = icmp eq i64 %i.ky, -2
  br i1 %i.kz, label %.loopexit78.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4729
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ky, -1
  %i.la = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.la, label %bb.bi, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.lb = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.lc = xor i64 %i.lb, 6878251652255869303
  %i.ld = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.le = load i32, ptr %i.ld, align 1
  %i.lf = zext i32 %i.le to i64
  %i.lg = xor i64 %i.lf, 1701669236
  %i.lh = or i64 %i.lc, %i.lg
  %i.li = icmp ne i64 %i.lh, 0                    ; 2 uses
  %i.lj = zext i1 %i.li to i32                    ; 0 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.li to i8
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi ], [ 1, %bb.bh ] ; 2 uses
  %i.lk = icmp eq i64 %i.ky, 0
  br i1 %i.lk, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4731
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bg
  br i1 %i.la, label %bb.bl, label %.thread33.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ll = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.lm = xor i64 %i.ll, 6878251652255869303
  %i.ln = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lo = load i32, ptr %i.ln, align 1
  %i.lp = zext i32 %i.lo to i64
  %i.lq = xor i64 %i.lp, 1701669236
  %i.lr = or i64 %i.lm, %i.lq
  %i.ls = icmp ne i64 %i.lr, 0                    ; 2 uses
  %i.lt = zext i1 %i.ls to i32                    ; 0 uses
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.ls to i8
  br label %bb.bo

.loopexit77.i.i.i.i.i.i.i:                        ; preds = %bb.be
  %i.lu = extractvalue { i64, ptr } %i.kv, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.be
  %i.lv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %bb.bn, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.lw = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728
  %i.lx = extractvalue { i64, i32 } %i.lw, 1
  %i.ly = icmp eq i32 %i.lx, 125
  br i1 %i.ly, label %.thread.i.i.i.i.i.i.i, label %bb.bf

.loopexit78.i.i.i.i.i.i.i:                        ; preds = %bb.ao, %bb.bf
  %i.lz = load ptr, ptr %i.cs, align 8, !noalias !4729, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4729
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.an, %bb.bx, %bb.bm, %.loopexit78.i.i.i.i.i.i.i, %.loopexit77.i.i.i.i.i.i.i
  %.sroa.921.0.i.i.i.i.i.i.i = phi ptr [ %i.lu, %.loopexit77.i.i.i.i.i.i.i ], [ %i.lz, %.loopexit78.i.i.i.i.i.i.i ], [ %i.mq, %bb.bx ], [ %i.lv, %bb.bm ], [ %i.jf, %bb.an ], [ %i.kr, %bb.bd ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.921.0.i.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bl, %bb.bj, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bj ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ]
  %cond.i.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.ph.i.i.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i.i, label %bb.bs, label %.thread33.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bn, %.peel.next.i.i.i.i.i.i.i
  %.not13.i.i.i.i.i.i.i = icmp eq i8 %.sroa.04.060.i.i.i.i.i.i.i, 2
  br i1 %.not13.i.i.i.i.i.i.i, label %.thread.thread.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i

.thread.thread.i.i.i.i.i.i.i:                     ; preds = %.thread.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i

.thread33.i.i.i.i.i.i.i:                          ; preds = %bb.bo, %bb.bk
  %i.ma = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4732, !inline_history !0 ; 2 uses
  %.not.i.i17.i.i.i.i.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i17.i.i.i.i.i.i.i, label %bb.bp, label %.loopexit.i.i.i.i.i.i

bb.bp:                                            ; preds = %.thread33.i.i.i.i.i.i.i
  %i.mb = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4732, !inline_history !0 ; 2 uses
  %i.mc = extractvalue { i64, ptr } %i.mb, 0
  %i.md = trunc nuw i64 %i.mc to i1
  br i1 %i.md, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.me = extractvalue { i64, ptr } %i.mb, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.mf = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4732, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.br ], [ %i.me, %bb.bq ] ; 2 uses
  %.not15.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i.i, label %bb.bx, label %.loopexit.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bo
  %.not14.i.i.i.i.i.i.i = icmp eq i8 %.sroa.04.060.i.i.i.i.i.i.i, 2
  br i1 %.not14.i.i.i.i.i.i.i, label %bb.bt, label %.loopexit79.i.i.i.i.i.i.i, !prof !20

bb.bt:                                            ; preds = %bb.bs
  %i.mg = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4733 ; 2 uses
  %.not.i.i18.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i18.i.i.i.i.i.i.i, label %bb.bu, label %.loopexit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mh = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4733 ; 2 uses
  %i.mi = extractvalue { i64, ptr } %i.mh, 0
  %i.mj = trunc nuw i64 %i.mi to i1
  br i1 %i.mj, label %.loopexit80.i.i.i.i.i.i.i, label %bb.bv

.loopexit80.i.i.i.i.i.i.i:                        ; preds = %bb.ba, %bb.bu
  %.lcssa66.i.i.i.i.i.i.i = phi { i64, ptr } [ %i.mh, %bb.bu ], [ %i.km, %bb.ba ]
  %i.mk = extractvalue { i64, ptr } %.lcssa66.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !4734
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4735
  %i.ml = load i8, ptr %i.ec, align 8, !range !28, !noalias !4734, !noundef !14 ; 2 uses
  %i.mm = icmp eq i8 %i.ml, 2
  br i1 %i.mm, label %.loopexit81.i.i.i.i.i.i.i, label %bb.bw

.loopexit81.i.i.i.i.i.i.i:                        ; preds = %bb.bb, %bb.bv
  %i.mn = load ptr, ptr %i.cr, align 8, !noalias !4734, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !4734
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit79.i.i.i.i.i.i.i:                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !4736
  store ptr @147, ptr %i.cq, align 8, !noalias !4737
  %i.mo = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 12, ptr %i.mo, align 8, !noalias !4737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !4737
  store ptr %i.cq, ptr %i.cp, align 8, !noalias !4737
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4737
  %i.mp = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.cp) #30, !noalias !4732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !4737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !4736
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.az, %bb.bt, %.loopexit81.i.i.i.i.i.i.i, %.loopexit80.i.i.i.i.i.i.i
  %.sroa.724.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.mk, %.loopexit80.i.i.i.i.i.i.i ], [ %i.mn, %.loopexit81.i.i.i.i.i.i.i ], [ %i.mg, %bb.bt ], [ %i.kl, %bb.az ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.724.0.ph.i.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !4734
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i.i.i = phi i8 [ %i.ml, %bb.bw ], [ %.sroa.04.060.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ]
  %i.mq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i, !llvm.loop !4196

.loopexit.i.i.i.i.i.i:                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i, %.thread33.peel.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %.thread33.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %.loopexit79.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i.i = phi ptr [ %.sroa.724.0.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.921.0.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i ], [ %i.mp, %.loopexit79.i.i.i.i.i.i.i ], [ %i.ma, %.thread33.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i ], [ %i.kf, %.thread33.peel.i.i.i.i.i.i.i ]
  %.in3686 = extractvalue { i64, ptr } %i.jc, 1
  %i.mr = ptrtoint ptr %.in3686 to i64
  %i.ms = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.5.0.ph.i.i.i.i.i.i, i64 noundef %i.mr) #30, !noalias !4727
  br label %.loopexit190

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i: ; preds = %.thread.thread.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i = phi i8 [ %.sroa.04.060.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ 0, %.thread.thread.i.i.i.i.i.i.i ]
  %i.mt = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4727 ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not13.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %.loopexit190

bb.by:                                            ; preds = %.thread144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr @154, ptr %i.co, align 8, !noalias !4738
  %i.mu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 6, ptr %i.mu, align 8, !noalias !4738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !4738
  store ptr %i.co, ptr %i.cn, align 8, !noalias !4738
  %.sroa.42.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i86, align 8, !noalias !4738
  %i.mv = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.cn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !4738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.loopexit190.split.loop.exit3619:                 ; preds = %bb.am
  %i.mw = extractvalue { i64, ptr } %i.jc, 1
  br label %.loopexit190

.loopexit190:                                     ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i, %bb.al, %bb.ai, %.loopexit190.split.loop.exit3619, %bb.ak, %.loopexit.i.i.i.i.i.i
  %.sroa.7111.0.ph = phi ptr [ %i.ms, %.loopexit.i.i.i.i.i.i ], [ %i.ja, %bb.ak ], [ %i.mw, %.loopexit190.split.loop.exit3619 ], [ %i.jb, %bb.al ], [ %i.mt, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.iw, %bb.ai ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7111.0.ph) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.bz:                                            ; preds = %.thread148
  %i.mx = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4739 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i87, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.my = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4739 ; 2 uses
  %i.mz = extractvalue { i64, ptr } %i.my, 0
  %i.na = trunc nuw i64 %i.mz to i1
  br i1 %i.na, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nb = extractvalue { i64, ptr } %i.my, 1
  br label %.loopexit

bb.cc:                                            ; preds = %bb.ca
  %i.nc = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4740 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i88, label %bb.cd, label %.loopexit

bb.cd:                                            ; preds = %bb.cc
  %i.nd = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 91, i8 noundef 0, i8 noundef 20) #30, !noalias !4740 ; 3 uses
  %i.ne = extractvalue { i64, ptr } %i.nd, 0
  %i.nf = trunc nuw i64 %i.ne to i1
  br i1 %i.nf, label %.loopexit.split.loop.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !4741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !4742
  store i64 0, ptr %i.cl, align 8, !noalias !4742
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !noalias !4742
  store i64 0, ptr %i.df, align 8, !noalias !4742
  %i.ng = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743 ; 2 uses
  %.not.i.i1898.i.i.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i1898.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ce
  %i.nh = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743
  %i.ni = extractvalue { i64, i32 } %i.nh, 1
  %i.nj = icmp eq i32 %i.ni, 93
  br i1 %i.nj, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i, label %.lr.ph.i.i.i.i

_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4742
  br label %bb.mr

bb.cf:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i
  %i.nk = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743
  %i.nl = extractvalue { i64, i32 } %i.nk, 1
  %i.nm = icmp eq i32 %i.nl, 93
  br i1 %i.nm, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.cf
  %.sroa.2.01899.i.i1697.i.i.i.i = phi i1 [ false, %bb.cf ], [ true, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.4.0.copyload.i1696.i.i.i.i = phi ptr [ %i.asf, %bb.cf ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i1695.i.i.i.i = phi i64 [ %i.ash, %bb.cf ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  br i1 %.sroa.2.01899.i.i1697.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nn = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 0, i8 noundef 14) #30, !noalias !4743 ; 2 uses
  %i.no = extractvalue { i64, ptr } %i.nn, 0
  %i.np = trunc nuw i64 %i.no to i1
  br i1 %i.np, label %bb.mn, label %bb.mo

bb.ch:                                            ; preds = %bb.mp, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i)
  %i.nq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4744 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ci, label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !4745
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef 9) #30, !noalias !4744
  %i.nr = load i32, ptr %i.dg, align 8, !range !52, !noalias !4745, !noundef !14 ; 2 uses
  %i.ns = icmp eq i32 %i.nr, -1
  br i1 %i.ns, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nt = load ptr, ptr %i.ck, align 8, !noalias !4745, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !4745
  br label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.nu = load i64, ptr %i.ck, align 8, !noalias !4745, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !4745
  switch i32 %i.nr, label %bb.cl [
    i32 123, label %bb.cm
    i32 34, label %bb.ls
    i32 39, label %bb.ls
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.nv = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer6err_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %i.nu, i8 noundef 22) #30, !noalias !4744
  br label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.nw = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4744 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !4747
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4748
  %i.nx = load i64, ptr %i.dh, align 8, !range !51, !noalias !4747, !noundef !14 ; 10 uses
  %i.ny = icmp eq i64 %i.nx, -2
  br i1 %i.ny, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.nz = load ptr, ptr %i.cj, align 8, !noalias !4747, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !4747
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !noalias !4747
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4747, !nonnull !14, !noundef !14 ; 16 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4747 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !4747
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nx, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 7, label %bb.cq
    i64 4, label %bb.cr
    i64 6, label %bb.cs
  ], !prof !4749

bb.cq:                                            ; preds = %bb.cp
  %i.oa = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ob = xor i32 %i.oa, 1936617315
  %i.oc = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.od = load i32, ptr %i.oc, align 1
  %i.oe = xor i32 %i.od, 1701605235
  %i.of = or i32 %i.ob, %i.oe
  %i.og = icmp ne i32 %i.of, 0
  %i.oh = zext i1 %i.og to i32
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.oj = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ok = icmp ne i32 %i.oj, 1701603686
  %i.ol = zext i1 %i.ok to i32
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cp
  %i.on = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.oo = xor i32 %i.on, 1819507059
  %i.op = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.oq = load i16, ptr %i.op, align 1
  %i.or = zext i16 %i.oq to i32
  %i.os = xor i32 %i.or, 26479
  %i.ot = or i32 %i.oo, %i.os
  %i.ou = icmp ne i32 %i.ot, 0
  %i.ov = zext i1 %i.ou to i32
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.ox = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @151, i64 noundef 3) #30, !noalias !4750 ; 2 uses
  %i.oy = icmp eq i64 %i.nx, 0
  br i1 %i.oy, label %.loopexit55.i.i.i.i.i.i, label %bb.ct

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i: ; preds = %bb.cs
  %i.oz = icmp eq i64 %i.nx, 0
  br i1 %i.oz, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i, label %bb.cu

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i: ; preds = %bb.cq
  %i.pa = icmp eq i64 %i.nx, 0
  br i1 %i.pa, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i, label %bb.cv

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i: ; preds = %bb.cr
  %i.pb = icmp eq i64 %i.nx, 0
  br i1 %i.pb, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i, label %bb.cw

bb.ct:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4751
  br label %.loopexit55.i.i.i.i.i.i

bb.cu:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4751
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i

bb.cv:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4751
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i

bb.cw:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4751
end_hunk_1
begin_hunk_2_@_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_:bb.a
  %.sroa.5.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.es ], [ %.sroa.5.1.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ] ; 3 uses
  %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.es ], [ %.sroa.011.1.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dy ] ; 5 uses
  %i.te = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4756
  %i.tf = extractvalue { i64, i32 } %i.te, 1
  %i.tg = icmp eq i32 %i.tf, 125
  br i1 %i.tg, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.th = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4756 ; 2 uses
  %i.ti = extractvalue { i64, ptr } %i.th, 0
  %i.tj = trunc nuw i64 %i.ti to i1
  br i1 %i.tj, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.el

bb.ea:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !4757
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4758
  %i.tk = load i64, ptr %i.dr, align 8, !range !51, !noalias !4757, !noundef !14 ; 8 uses
  %i.tl = icmp eq i64 %i.tk, -2
  br i1 %i.tl, label %.loopexit126.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4757, !nonnull !14, !noundef !14 ; 11 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4757 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !4757
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tk, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ei, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.ed
    i64 6, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.tm = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.tn = xor i32 %i.tm, 1702258028
  %i.to = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = zext i8 %i.tp to i32
  %i.tr = xor i32 %i.tq, 108
  %i.ts = or i32 %i.tn, %i.tr
  %i.tt = icmp ne i32 %i.ts, 0
  %i.tu = zext i1 %i.tt to i32
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.tw = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.tx = xor i32 %i.tw, 1836216166
  %i.ty = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.tz = load i16, ptr %i.ty, align 1
  %i.ua = zext i16 %i.tz to i32
  %i.ub = xor i32 %i.ua, 29793
  %i.uc = or i32 %i.tx, %i.ub
  %i.ud = icmp ne i32 %i.uc, 0
  %i.ue = zext i1 %i.ud to i32
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee
  %i.ug = icmp eq i64 %i.tk, 0
  br i1 %i.ug, label %.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.uh = icmp eq i64 %i.tk, 0
  br i1 %i.uh, label %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eg

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ed
  %i.ui = icmp eq i64 %i.tk, 0
  br i1 %i.ui, label %.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eh

bb.ef:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.tk, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4759
  br label %.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eg:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.tk, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4759
  br label %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eh:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.tk, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4759
  br label %.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eb
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.ej
    i64 6, label %bb.ek
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.uj = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.uk = xor i32 %i.uj, 1702258028
  %i.ul = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.um = load i8, ptr %i.ul, align 1
  %i.un = zext i8 %i.um to i32
  %i.uo = xor i32 %i.un, 108
  %i.up = or i32 %i.uk, %i.uo
  %i.uq = icmp ne i32 %i.up, 0
  %i.ur = zext i1 %i.uq to i32
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.ut = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.uu = xor i32 %i.ut, 1836216166
  %i.uv = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.uw = load i16, ptr %i.uv, align 1
  %i.ux = zext i16 %i.uw to i32
  %i.uy = xor i32 %i.ux, 29793
  %i.uz = or i32 %i.uu, %i.uy
  %i.va = icmp ne i32 %i.uz, 0
  %i.vb = zext i1 %i.va to i32
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.dz
  %i.vd = extractvalue { i64, ptr } %i.th, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.dz
  %i.ve = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4756 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ve, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.em, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.vf = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4756
  %i.vg = extractvalue { i64, i32 } %i.vf, 1
  %i.vh = icmp eq i32 %i.vg, 125
  br i1 %i.vh, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ea

.loopexit126.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.ea
  %i.vi = load ptr, ptr %i.cg, align 8, !noalias !4757, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !4757
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dy, %bb.dh, %bb.es, %bb.el, %.loopexit126.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.937.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vi, %.loopexit126.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wa, %bb.es ], [ %i.ve, %bb.el ], [ %i.td, %bb.dy ], [ %i.qt, %bb.dh ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.937.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.em, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.04.095.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %..sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %.sroa.04.095.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %..sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 undef, i32 %.sroa.5.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vj = zext i32 %..sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.vk = zext i8 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.vl = shl nuw nsw i64 %i.vk, 32
  %i.vm = or disjoint i64 %i.vl, %i.vj
  br label %bb.ev

.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.ej, %bb.eh, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.04.095.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.ek, %bb.ef, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.et, label %.loopexit128.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eg, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB8_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vn = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4761, !inline_history !0 ; 2 uses
  %.not.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.en, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vo = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4761, !inline_history !0 ; 2 uses
  %i.vp = extractvalue { i64, ptr } %i.vo, 0
  %i.vq = trunc nuw i64 %i.vp to i1
  br i1 %i.vq, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.vr = extractvalue { i64, ptr } %i.vo, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.vs = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4761, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ep, %bb.eo
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vs, %bb.ep ], [ %i.vr, %bb.eo ] ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.es, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !4760
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionmEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ci, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4761
  %i.vt = load i32, ptr %i.ci, align 8, !range !13, !noalias !4760, !noundef !14
  %i.vu = trunc nuw i32 %i.vt to i1
  br i1 %i.vu, label %.loopexit131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er

.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !4760
  store ptr @153, ptr %i.cf, align 8, !noalias !4762
  %i.vv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 5, ptr %i.vv, align 8, !noalias !4762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !4762
  store ptr %i.cf, ptr %i.ce, align 8, !noalias !4762
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4762
  %i.vw = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.ce) #30, !noalias !4761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !4762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !4760
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread48.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eq
  %i.vx = load ptr, ptr %i.du, align 8, !noalias !4760, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !4760
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.vy = load i32, ptr %i.dt, align 4, !range !13, !noalias !4760, !noundef !14
  %i.vz = load i32, ptr %i.du, align 8, !noalias !4760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !4760
  br label %bb.es

bb.es:                                            ; preds = %bb.eu, %bb.er, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.er ], [ %i.wh, %bb.eu ], [ %.sroa.011.093.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.vz, %bb.er ], [ %.sroa.5.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eu ], [ %.sroa.5.094.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.vy, %bb.er ], [ %.sroa.04.095.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eu ], [ %.sroa.04.095.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.wa = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4756 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4306

bb.et:                                            ; preds = %.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !4760
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEB1B_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ch, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4761
  %i.wb = load i8, ptr %i.ch, align 8, !range !19, !noalias !4760, !noundef !14
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %.loopexit129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eu

.loopexit128.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !4760
  store ptr @154, ptr %i.cd, align 8, !noalias !4763
  %i.wd = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 6, ptr %i.wd, align 8, !noalias !4763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !4763
  store ptr %i.cd, ptr %i.cc, align 8, !noalias !4763
  %.sroa.42.0..sroa_idx.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4763
  %i.we = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.cc) #30, !noalias !4761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !4760
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread53.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.et
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !noalias !4760, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !4760
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.wh = load i8, ptr %i.ds, align 1, !range !28, !noalias !4760, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !4760
  br label %bb.es

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread57.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit128.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.we, %.loopexit128.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.937.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtB1B_22LogConsoleWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vx, %.loopexit131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vn, %.thread57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wg, %.loopexit129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vw, %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sx, %.thread57.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.in1911.i.i.i.i.i.i = extractvalue { i64, ptr } %i.qq, 1
  %i.wi = ptrtoint ptr %.in1911.i.i.i.i.i.i to i64
  %i.wj = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wi) #30, !noalias !4755
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %..sroa.04.0149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %..sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.12.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vm, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 8589934592, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.wk = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4755 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lr, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.dd
  %i.wl = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4754 ; 2 uses
  %.not.i.i.i.i.i.i21.i.i.i.i.i.i.jt1.i.i.i.i.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i.i.i21.i.i.i.i.i.i.jt1.i.i.i.i.i.i, label %bb.ex, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.ew
  %i.wm = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !4764 ; 3 uses
  %i.wn = extractvalue { i64, ptr } %i.wm, 0
  %i.wo = trunc nuw i64 %i.wn to i1
  br i1 %i.wo, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1782.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.wp = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4765 ; 2 uses
  %.not.i.i846.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wp, null
  br i1 %.not.i.i846.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.ey, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.05.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ey ] ; 16 uses
  %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5.1.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 14 uses
  %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.012.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ey ] ; 16 uses
  %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.031.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ey ] ; 12 uses
  %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.066.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ey ] ; 16 uses
  %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.569.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 14 uses
  %.sroa.10.0856.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ey ]
  %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0171.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ey ] ; 35 uses
  %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 34 uses
  %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 13 uses
  %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0175.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -2, %bb.ey ] ; 35 uses
  %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9179.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 34 uses
  %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 14 uses
  %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0180.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -2, %bb.ey ] ; 35 uses
  %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9184.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 33 uses
  %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13185.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ] ; 14 uses
  %i.wq = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4765
  %i.wr = extractvalue { i64, i32 } %i.wq, 1
  %i.ws = icmp eq i32 %i.wr, 125
  br i1 %i.ws, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.10.0856.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wt = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4765 ; 2 uses
  %i.wu = extractvalue { i64, ptr } %i.wt, 0
  %i.wv = trunc nuw i64 %i.wu to i1
  br i1 %i.wv, label %bb.fm, label %bb.fn

bb.fb:                                            ; preds = %bb.fo, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !4766
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4767
  %i.ww = load i64, ptr %i.di, align 8, !range !51, !noalias !4766, !noundef !14 ; 3 uses
  %i.wx = icmp eq i64 %i.ww, -2
  br i1 %i.wx, label %bb.fp, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4766, !nonnull !14, !noundef !14 ; 14 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !4766
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk [
    i64 5, label %bb.fd
    i64 6, label %bb.fe
    i64 9, label %bb.ff
    i64 8, label %bb.fg
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.wy = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.wz = xor i32 %i.wy, 1702258028
  %i.xa = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = zext i8 %i.xb to i32
  %i.xd = xor i32 %i.xc, 108
  %i.xe = or i32 %i.wz, %i.xd
  %i.xf = icmp ne i32 %i.xe, 0
  %i.xg = zext i1 %i.xf to i32
  %i.xh = icmp eq i32 %i.xg, 0
  br i1 %i.xh, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk

bb.fe:                                            ; preds = %bb.fc
  %i.xi = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.xj = xor i32 %i.xi, 1836216166
  %i.xk = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.xl = load i16, ptr %i.xk, align 1
  %i.xm = zext i16 %i.xl to i32
  %i.xn = xor i32 %i.xm, 29793
  %i.xo = or i32 %i.xj, %i.xn
  %i.xp = icmp ne i32 %i.xo, 0
  %i.xq = zext i1 %i.xp to i32
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fh

bb.ff:                                            ; preds = %bb.fc
  %i.xs = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.xt = xor i64 %i.xs, 8245937412991248740
  %i.xu = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.xv = load i8, ptr %i.xu, align 1
  %i.xw = zext i8 %i.xv to i64
  %i.xx = xor i64 %i.xw, 121
  %i.xy = or i64 %i.xt, %i.xx
  %i.xz = icmp ne i64 %i.xy, 0
  %i.ya = zext i1 %i.xz to i32
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fj

bb.fg:                                            ; preds = %bb.fc
  %i.yc = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.yd = icmp ne i64 %i.yc, 7957695015159099250
  %i.ye = zext i1 %i.yd to i32
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk

bb.fh:                                            ; preds = %bb.fe
  %i.yg = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.yh = xor i32 %i.yg, 1717924464
  %i.yi = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.yj = load i16, ptr %i.yi, align 1
  %i.yk = zext i16 %i.yj to i32
  %i.yl = xor i32 %i.yk, 30825
  %i.ym = or i32 %i.yh, %i.yl
  %i.yn = icmp ne i32 %i.ym, 0
  %i.yo = zext i1 %i.yn to i32
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.yq = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.yr = xor i32 %i.yq, 1717990771
  %i.ys = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.yt = load i16, ptr %i.ys, align 1
  %i.yu = zext i16 %i.yt to i32
  %i.yv = xor i32 %i.yu, 30825
  %i.yw = or i32 %i.yr, %i.yv
  %i.yx = icmp ne i32 %i.yw, 0
  %i.yy = zext i1 %i.yx to i32
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk

bb.fj:                                            ; preds = %bb.ff
  %i.za = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.zb = xor i64 %i.za, 7308332183724777837
  %i.zc = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.zd = load i8, ptr %i.zc, align 1
  %i.ze = zext i8 %i.zd to i64
  %i.zf = xor i64 %i.ze, 115
  %i.zg = or i64 %i.zb, %i.zf
  %i.zh = icmp ne i64 %i.zg, 0
  %i.zi = zext i1 %i.zh to i32
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fg, %bb.fd, %bb.fc
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 5, %bb.fi ], [ 7, %bb.fk ], [ 4, %bb.fh ], [ 3, %bb.fg ], [ 2, %bb.ff ], [ 1, %bb.fe ], [ 0, %bb.fd ], [ 6, %bb.fj ]
  %i.zk = icmp sgt i64 %i.ww, 0
  br i1 %i.zk, label %bb.fl, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ww, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4768
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fa
  %i.zl = extractvalue { i64, ptr } %i.wt, 1
  br label %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fa
  %i.zm = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4765 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zm, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fo, label %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.zn = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4765
  %i.zo = extractvalue { i64, i32 } %i.zn, 1
  %i.zp = icmp eq i32 %i.zo, 125
  br i1 %i.zp, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fb

bb.fp:                                            ; preds = %bb.fb
  %i.zq = load ptr, ptr %i.bw, align 8, !noalias !4766, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !4766
  br label %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ey, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn, %bb.fp, %bb.fm
  %.sroa.9184.0811.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.9184.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ]
  %.sroa.0180.0768.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.0180.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -2, %bb.ey ]
  %.sroa.9179.0691.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.9179.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ]
  %.sroa.0175.0647.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.0175.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -2, %bb.ey ]
  %.sroa.11.0569.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.11.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ey ]
  %.sroa.0171.0525.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn ], [ %.sroa.0171.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ey ]
  %.sroa.9188.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zq, %bb.fp ], [ %i.zl, %bb.fm ], [ %i.zm, %bb.fn ], [ %i.aae, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wp, %bb.ey ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9188.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fl, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB8_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  switch i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i8 7, label %bb.fx
    i8 0, label %bb.fq
    i8 1, label %bb.fr
    i8 2, label %bb.fs
    i8 3, label %bb.ft
    i8 4, label %bb.fu
    i8 5, label %bb.fv
    i8 6, label %bb.fw
  ]

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fo, %.lr.ph.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i
  %.not111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ir, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtBb_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.fq:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not123.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not123.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gb, label %bb.gc, !prof !20

bb.fr:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gf, label %bb.gg, !prof !20

bb.fs:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gj, label %bb.gu, !prof !20

bb.ft:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gv, label %bb.ih, !prof !20

bb.fu:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not119.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not119.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ii, label %bb.ij, !prof !20

bb.fv:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.il, label %bb.im, !prof !20

bb.fw:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.in, label %bb.io, !prof !20

bb.fx:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zr = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4769, !inline_history !0 ; 2 uses
  %.not.i.i142.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zr, null
  br i1 %.not.i.i142.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fy, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.zs = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4769, !inline_history !0 ; 2 uses
  %i.zt = extractvalue { i64, ptr } %i.zs, 0
  %i.zu = trunc nuw i64 %i.zt to i1
  br i1 %i.zu, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.zv = extractvalue { i64, ptr } %i.zs, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i

bb.ga:                                            ; preds = %bb.fy
  %i.zw = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4769, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ga, %bb.fz
  %.sroa.0.0.i.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zw, %bb.ga ], [ %i.zv, %bb.fz ] ; 2 uses
  %.not116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gb:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !4770
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionmEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cb, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4769
  %i.zx = load i32, ptr %i.cb, align 8, !range !13, !noalias !4770, !noundef !14
  %i.zy = trunc nuw i32 %i.zx to i1
  br i1 %i.zy, label %bb.gd, label %bb.ge

bb.gc:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !4770
  store ptr @153, ptr %i.bv, align 8, !noalias !4771
  %i.zz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 5, ptr %i.zz, align 8, !noalias !4771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !4771
  store ptr %i.bv, ptr %i.bu, align 8, !noalias !4771
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4771
  %i.aaa = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bu) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !4771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.aab = load ptr, ptr %i.dq, align 8, !noalias !4770, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ge:                                            ; preds = %bb.gb
  %i.aac = load i32, ptr %i.dp, align 4, !range !13, !noalias !4770, !noundef !14
  %i.aad = load i32, ptr %i.dq, align 8, !noalias !4770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.iq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if, %bb.ie, %bb.id, %bb.gt, %bb.gq, %bb.go, %bb.gi, %bb.ge, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13185.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5108.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.9184.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.0180.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5105.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.9179.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.0175.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ 0, %bb.gq ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.11.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ inttoptr (i64 1 to ptr), %bb.gq ], [ %i.aav, %bb.gt ] ; 2 uses
  %.sroa.0171.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %i.aar, %bb.go ], [ 0, %bb.gq ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ] ; 2 uses
  %.sroa.569.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahp, %bb.iq ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.066.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahk, %bb.iq ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.031.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.5.1.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.if ], [ 1, %bb.ie ], [ 0, %bb.id ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.012.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %i.aal, %bb.gi ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.5.1.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aad, %bb.ge ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %.sroa.05.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aac, %bb.ge ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gi ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.if ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ie ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gt ]
  %i.aae = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4765 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !4770
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEB1B_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ca, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4769
  %i.aaf = load i8, ptr %i.ca, align 8, !range !19, !noalias !4770, !noundef !14
  %i.aag = trunc nuw i8 %i.aaf to i1
  br i1 %i.aag, label %bb.gh, label %bb.gi

bb.gg:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !4770
  store ptr @154, ptr %i.bt, align 8, !noalias !4772
  %i.aah = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 6, ptr %i.aah, align 8, !noalias !4772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !4772
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !4772
  %.sroa.42.0..sroa_idx.i143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4772
  %i.aai = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bs) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !4772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gh:                                            ; preds = %bb.gf
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !noalias !4770, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gf
  %i.aal = load i8, ptr %i.do, align 1, !range !28, !noalias !4770, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gj:                                            ; preds = %bb.fs
  %i.aam = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4773 ; 2 uses
  %.not.i.i144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aam, null
  br i1 %.not.i.i144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gk, label %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %bb.gj
  %i.aan = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4773 ; 2 uses
  %i.aao = extractvalue { i64, ptr } %i.aan, 0
  %i.aap = trunc nuw i64 %i.aao to i1
  br i1 %i.aap, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aaq = extractvalue { i64, ptr } %i.aan, 1
  br label %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !4774
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4775
  %i.aar = load i64, ptr %i.dn, align 8, !range !51, !noalias !4774, !noundef !14 ; 3 uses
  %i.aas = icmp eq i64 %i.aar, -2
  br i1 %i.aas, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.aat = load ptr, ptr %i.br, align 8, !noalias !4774, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4774
  br label %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gm
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4774 ; 3 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4774 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4774
  %.not.i.i.i.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aar, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gp, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gp:                                            ; preds = %bb.go
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gs, label %bb.gq, !prof !39

bb.gq:                                            ; preds = %bb.gp
  %i.aau = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aau, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4776
  %i.aav = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #30, !noalias !4776 ; 3 uses
  %i.aaw = icmp eq ptr %i.aav, null
  br i1 %i.aaw, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr, %bb.gp
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.gr ], [ 0, %bb.gp ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #34, !noalias !4777
  unreachable

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aav, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !4778
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !4770
  store ptr @157, ptr %i.bq, align 8, !noalias !4779
  %i.aax = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 9, ptr %i.aax, align 8, !noalias !4779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !4779
  store ptr %i.bq, ptr %i.bp, align 8, !noalias !4779
  %.sroa.42.0..sroa_idx.i149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4779
  %i.aay = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bp) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !4779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gj, %bb.gn, %bb.gl
  %.sroa.8.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aaq, %bb.gl ], [ %i.aat, %bb.gn ], [ %i.aam, %bb.gj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gv:                                            ; preds = %bb.ft
  %i.aaz = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4780 ; 2 uses
  %.not.i.i150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gw, label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gw:                                            ; preds = %bb.gv
  %i.aba = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4780 ; 2 uses
  %i.abb = extractvalue { i64, ptr } %i.aba, 0
  %i.abc = trunc nuw i64 %i.abb to i1
  br i1 %i.abc, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.abd = extractvalue { i64, ptr } %i.aba, 1
  br label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gw
  %i.abe = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4781 ; 2 uses
  %.not.i.i.i.i.i152.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abe, null
  br i1 %.not.i.i.i.i.i152.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gz, label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !4782
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef 9) #30, !noalias !4781
  %i.abf = load i32, ptr %i.dk, align 8, !range !52, !noalias !4782, !noundef !14 ; 2 uses
  %i.abg = icmp eq i32 %i.abf, -1
  br i1 %i.abg, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.abh = load ptr, ptr %i.bo, align 8, !noalias !4782, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !4782
  br label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.abi = load i64, ptr %i.bo, align 8, !noalias !4782, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !4782
  switch i32 %i.abf, label %bb.hc [
    i32 123, label %bb.hd
    i32 34, label %bb.ht
    i32 39, label %bb.ht
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.abj = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer6err_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %i.abi, i8 noundef 22) #30, !noalias !4781
  br label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hb
  %i.abk = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4781 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4783
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4784
  %i.abl = load i64, ptr %i.dm, align 8, !range !51, !noalias !4783, !noundef !14 ; 4 uses
  %i.abm = icmp eq i64 %i.abl, -2
  br i1 %i.abm, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.abn = load ptr, ptr %i.bn, align 8, !noalias !4783, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4783
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !noalias !4783
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4783, !nonnull !14, !noundef !14 ; 15 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4783 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4783
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abl, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hm, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hk [
    i64 5, label %bb.hh
    i64 6, label %bb.hi
  ], !prof !4785

bb.hh:                                            ; preds = %bb.hg
  %i.abo = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.abp = xor i32 %i.abo, 1702258030
  %i.abq = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.abr = load i8, ptr %i.abq, align 1
  %i.abs = zext i8 %i.abr to i32
  %i.abt = xor i32 %i.abs, 114
  %i.abu = or i32 %i.abp, %i.abt
  %i.abv = icmp ne i32 %i.abu, 0
  %i.abw = zext i1 %i.abv to i32
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.aby = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.abz = xor i32 %i.aby, 1920298856
  %i.aca = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.acb = load i16, ptr %i.aca, align 1
  %i.acc = zext i16 %i.acb to i32
  %i.acd = xor i32 %i.acc, 31084
  %i.ace = or i32 %i.abz, %i.acd
  %i.acf = icmp ne i32 %i.ace, 0
  %i.acg = zext i1 %i.acf to i32
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  %i.aci = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.acj = xor i32 %i.aci, 1818845540
  %i.ack = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.acl = load i8, ptr %i.ack, align 1
  %i.acm = zext i8 %i.acl to i32
  %i.acn = xor i32 %i.acm, 121
  %i.aco = or i32 %i.acj, %i.acn
  %i.acp = icmp ne i32 %i.aco, 0
  %i.acq = zext i1 %i.acp to i32
  %i.acr = icmp eq i32 %i.acq, 0
  br i1 %i.acr, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hk, !prof !20

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hg
  %i.acs = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @166, i64 noundef 3) #30, !noalias !4786
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk, %bb.hj, %bb.hi, %bb.hh
  %.sroa.1210.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acs, %bb.hk ], [ undef, %bb.hh ], [ undef, %bb.hi ], [ undef, %bb.hj ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.hk ], [ 0, %bb.hh ], [ 1, %bb.hi ], [ 2, %bb.hj ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.hk ], [ false, %bb.hh ], [ false, %bb.hi ], [ false, %bb.hj ]
  %i.act = icmp eq i64 %i.abl, 0
  br i1 %i.act, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.abl, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4787
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hf
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.hn
    i64 6, label %bb.ho
  ], !prof !4785

bb.hn:                                            ; preds = %bb.hm
  %i.acu = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.acv = xor i32 %i.acu, 1702258030
  %i.acw = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.acx = load i8, ptr %i.acw, align 1
  %i.acy = zext i8 %i.acx to i32
  %i.acz = xor i32 %i.acy, 114
  %i.ada = or i32 %i.acv, %i.acz
  %i.adb = icmp ne i32 %i.ada, 0
  %i.adc = zext i1 %i.adb to i32
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.hq, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.ade = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.adf = xor i32 %i.ade, 1920298856
  %i.adg = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.adh = load i16, ptr %i.adg, align 1
  %i.adi = zext i16 %i.adh to i32
  %i.adj = xor i32 %i.adi, 31084
  %i.adk = or i32 %i.adf, %i.adj
  %i.adl = icmp ne i32 %i.adk, 0
  %i.adm = zext i1 %i.adl to i32
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.hq, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hp:                                            ; preds = %bb.hn
  %i.ado = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.adp = xor i32 %i.ado, 1818845540
  %i.adq = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.adr = load i8, ptr %i.adq, align 1
  %i.ads = zext i8 %i.adr to i32
  %i.adt = xor i32 %i.ads, 121
  %i.adu = or i32 %i.adp, %i.adt
  %i.adv = icmp ne i32 %i.adu, 0
  %i.adw = zext i1 %i.adv to i32
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %bb.hq, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hp, %bb.ho, %bb.hm
  %i.ady = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @166, i64 noundef 3) #30, !noalias !4788
  br label %.loopexit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hl, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hq

.loopexit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1210.020.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ady, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.1210.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1210.020.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.adz = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.1210.020.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !4784
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hq:                                            ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hp, %bb.ho, %bb.hn
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.hn ], [ 1, %bb.ho ], [ 2, %bb.hp ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aea = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4789 ; 2 uses
  %.not.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hq
  %i.aeb = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4789 ; 2 uses
  %i.aec = extractvalue { i64, ptr } %i.aeb, 0
  %i.aed = trunc nuw i64 %i.aec to i1
  br i1 %i.aed, label %bb.hs, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hr
  %i.aee = extractvalue { i64, ptr } %i.aeb, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr
  %i.aef = call noundef align 8 ptr @_RNvXs5_NtCseuwcdgGPBeX_5json52deNtB5_13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4790 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit224.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hq, %bb.hs, %.loopexit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.he
  %.sroa.811.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.adz, %.loopexit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abn, %bb.he ], [ %i.aee, %bb.hs ], [ %i.aea, %bb.hq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.811.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit224.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hb, %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4791
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4792
  %i.aeg = load i64, ptr %i.dl, align 8, !range !51, !noalias !4791, !noundef !14 ; 4 uses
  %i.aeh = icmp eq i64 %i.aeg, -2
  br i1 %i.aeh, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aei = load ptr, ptr %i.bm, align 8, !noalias !4791, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4791
  br label %bb.ig

bb.hv:                                            ; preds = %bb.ht
  %.sroa.02.0.copyload.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !noalias !4791
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4791, !nonnull !14, !noundef !14 ; 15 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4791 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4791
  %.not.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeg, -1
  br i1 %.not.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ic, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia [
    i64 5, label %bb.hx
    i64 6, label %bb.hy
  ], !prof !4785

bb.hx:                                            ; preds = %bb.hw
  %i.aej = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aek = xor i32 %i.aej, 1702258030
  %i.ael = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aem = load i8, ptr %i.ael, align 1
  %i.aen = zext i8 %i.aem to i32
  %i.aeo = xor i32 %i.aen, 114
  %i.aep = or i32 %i.aek, %i.aeo
  %i.aeq = icmp ne i32 %i.aep, 0
  %i.aer = zext i1 %i.aeq to i32
  %i.aes = icmp eq i32 %i.aer, 0
  br i1 %i.aes, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.aet = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aeu = xor i32 %i.aet, 1920298856
  %i.aev = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aew = load i16, ptr %i.aev, align 1
  %i.aex = zext i16 %i.aew to i32
  %i.aey = xor i32 %i.aex, 31084
  %i.aez = or i32 %i.aeu, %i.aey
  %i.afa = icmp ne i32 %i.aez, 0
  %i.afb = zext i1 %i.afa to i32
  %i.afc = icmp eq i32 %i.afb, 0
  br i1 %i.afc, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.afd = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.afe = xor i32 %i.afd, 1818845540
  %i.aff = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.afg = load i8, ptr %i.aff, align 1
  %i.afh = zext i8 %i.afg to i32
  %i.afi = xor i32 %i.afh, 121
  %i.afj = or i32 %i.afe, %i.afi
  %i.afk = icmp ne i32 %i.afj, 0
  %i.afl = zext i1 %i.afk to i32
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia, !prof !20

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hw
  %i.afn = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @166, i64 noundef 3) #30, !noalias !4793
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hx
  %.sroa.1210.1.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afn, %bb.ia ], [ undef, %bb.hx ], [ undef, %bb.hy ], [ undef, %bb.hz ]
  %.sroa.5.1.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ia ], [ 0, %bb.hx ], [ 1, %bb.hy ], [ 2, %bb.hz ]
  %.sink.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ia ], [ false, %bb.hx ], [ false, %bb.hy ], [ false, %bb.hz ]
  %i.afo = icmp eq i64 %i.aeg, 0
  br i1 %i.afo, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aeg, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4794
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.hv
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.id
    i64 6, label %bb.ie
  ], !prof !4785

bb.id:                                            ; preds = %bb.ic
  %i.afp = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.afq = xor i32 %i.afp, 1702258030
  %i.afr = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.afs = load i8, ptr %i.afr, align 1
  %i.aft = zext i8 %i.afs to i32
  %i.afu = xor i32 %i.aft, 114
  %i.afv = or i32 %i.afq, %i.afu
  %i.afw = icmp ne i32 %i.afv, 0
  %i.afx = zext i1 %i.afw to i32
  %i.afy = icmp eq i32 %i.afx, 0
  br i1 %i.afy, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.afz = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aga = xor i32 %i.afz, 1920298856
  %i.agb = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.agc = load i16, ptr %i.agb, align 1
  %i.agd = zext i16 %i.agc to i32
  %i.age = xor i32 %i.agd, 31084
  %i.agf = or i32 %i.aga, %i.age
  %i.agg = icmp ne i32 %i.agf, 0
  %i.agh = zext i1 %i.agg to i32
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.if:                                            ; preds = %bb.id
  %i.agj = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.agk = xor i32 %i.agj, 1818845540
  %i.agl = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.agm = load i8, ptr %i.agl, align 1
  %i.agn = zext i8 %i.agm to i32
  %i.ago = xor i32 %i.agn, 121
  %i.agp = or i32 %i.agk, %i.ago
  %i.agq = icmp ne i32 %i.agp, 0
  %i.agr = zext i1 %i.agq to i32
  %i.ags = icmp eq i32 %i.agr, 0
  br i1 %i.ags, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.if, %bb.ie, %bb.ic
  %i.agt = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @166, i64 noundef 3) #30, !noalias !4795
  br label %.loopexit222.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ib, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB8_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit222.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit222.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1210.020.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agt, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.1210.1.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1210.020.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.agu = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.1210.020.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !4792
  br label %bb.ig

.loopexit224.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.811.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.agv = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.abi) #30, !noalias !4781
  br label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtB1H_11LogRotationNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4781 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agw, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %.loopexit222.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hu
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agu, %.loopexit222.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aei, %bb.hu ]
  %i.agx = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.abi) #30, !noalias !4781
  br label %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ih:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4770
  store ptr @158, ptr %i.bl, align 8, !noalias !4796
  %i.agy = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 8, ptr %i.agy, align 8, !noalias !4796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4796
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !4796
  %.sroa.42.0..sroa_idx.i155.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i155.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4796
  %i.agz = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bk) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !4796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gy, %bb.gv, %bb.ig, %.loopexit224.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hc, %bb.ha, %bb.gx
  %.sroa.8194.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abd, %bb.gx ], [ %i.agv, %.loopexit224.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abj, %bb.hc ], [ %i.abh, %bb.ha ], [ %i.agx, %bb.ig ], [ %i.aaz, %bb.gv ], [ %i.abe, %bb.gy ], [ %i.agw, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBb_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8194.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !4770
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bz, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4769
  %i.aha = load i64, ptr %i.bz, align 8, !range !51, !noalias !4770, !noundef !14 ; 2 uses
  %i.ahb = icmp eq i64 %i.aha, -2
  %i.ahc = load ptr, ptr %.sroa.4104.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4770 ; 2 uses
  br i1 %i.ahb, label %bb.ik, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ij:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4770
  store ptr @159, ptr %i.bj, align 8, !noalias !4797
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 6, ptr %i.ahd, align 8, !noalias !4797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !4797
  store ptr %i.bj, ptr %i.bi, align 8, !noalias !4797
  %.sroa.42.0..sroa_idx.i156.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i156.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4797
  %i.ahe = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bi) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ii
  %.sroa.5105.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !4770
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.by, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4769
  %i.ahf = load i64, ptr %i.by, align 8, !range !51, !noalias !4770, !noundef !14 ; 2 uses
  %i.ahg = icmp eq i64 %i.ahf, -2
  %i.ahh = load ptr, ptr %.sroa.4107.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4770 ; 2 uses
  br i1 %i.ahg, label %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.im:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4770
  store ptr @160, ptr %i.bh, align 8, !noalias !4798
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 6, ptr %i.ahi, align 8, !noalias !4798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !4798
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !4798
  %.sroa.42.0..sroa_idx.i159.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i159.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4798
  %i.ahj = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.bg) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !4798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !4770
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit162.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.il
  %.sroa.5108.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5108.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.in:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !4770
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionjEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bx, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4769
  %i.ahk = load i64, ptr %i.bx, align 8, !range !32, !noalias !4770, !noundef !14 ; 2 uses
  %i.ahl = icmp eq i64 %i.ahk, 2
  br i1 %i.ahl, label %bb.ip, label %bb.iq

bb.io:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !4770
  store ptr @161, ptr %i.bf, align 8, !noalias !4799
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 9, ptr %i.ahm, align 8, !noalias !4799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !4799
  store ptr %i.bf, ptr %i.be, align 8, !noalias !4799
  %.sroa.42.0..sroa_idx.i163.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i163.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4799
  %i.ahn = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.be) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ip:                                            ; preds = %bb.in
  %i.aho = load ptr, ptr %i.dj, align 8, !noalias !4770, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.in
  %i.ahp = load i64, ptr %i.dj, align 8, !noalias !4770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11LogRotationEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtBb_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.sroa.386.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr undef, ptr %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.084.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -1, i64 %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.not114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.sroa.390.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr undef, ptr %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.088.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -1, i64 %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ahq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4764 ; 3 uses
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahq, null
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iw

bb.ir:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.thread203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !4770
  store ptr @157, ptr %i.bd, align 8, !noalias !4770
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 9, ptr %i.ahr, align 8, !noalias !4770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4770
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !4770
  %.sroa.42.0..sroa_idx.i164.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i164.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4770
  %i.ahs = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @896, ptr noundef nonnull %i.bc) #30, !noalias !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !4770
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx, %bb.ir, %bb.ip, %bb.io, %bb.im, %bb.ik, %bb.ij, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu, %bb.gh, %bb.gg, %bb.gd, %bb.gc, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9188.0.ph.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9188.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahs, %bb.ir ], [ %i.aho, %bb.ip ], [ %i.ahn, %bb.io ], [ %i.ahj, %bb.im ], [ %i.ahc, %bb.ik ], [ %i.ahe, %bb.ij ], [ %.sroa.8194.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agz, %bb.ih ], [ %.sroa.8.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aay, %bb.gu ], [ %i.aak, %bb.gh ], [ %i.aai, %bb.gg ], [ %i.aab, %bb.gd ], [ %i.aaa, %bb.gc ], [ %i.zr, %bb.fx ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9184.0803.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9184.0811.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ik ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.9184.0848.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0180.0760.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0180.0768.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ik ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.0180.0849.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9179.0683.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9179.0691.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ik ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0175.0639.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0175.0647.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ -2, %bb.ik ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0561.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.0569.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ik ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0171.0517.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0171.0525.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ir ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.io ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.im ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ik ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit221.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ih ], [ -1, %.loopexit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aht = icmp sgt i64 %.sroa.0180.0760.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aht, label %bb.is, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.is:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9184.0803.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9184.0803.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0180.0760.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4800
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.is, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.626.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9188.0.ph.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is ], [ %.sroa.9188.0.ph.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahh, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9179.0682.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9179.0683.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is ], [ %.sroa.9179.0683.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9179.0851.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0175.0638.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0175.0639.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is ], [ %.sroa.0175.0639.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0175.0852.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0560.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.0561.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is ], [ %.sroa.11.0561.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0171.0516.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0171.0517.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.is ], [ %.sroa.0171.0517.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.in.i.i.i.i.i.i = extractvalue { i64, ptr } %i.wm, 1
  %i.ahu = ptrtoint ptr %.in.i.i.i.i.i.i to i64
  %i.ahv = icmp sgt i64 %.sroa.0175.0638.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahv, label %bb.it, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit170.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.it:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9179.0682.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9179.0682.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0175.0638.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4801
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit170.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit170.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.it, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahw = icmp sgt i64 %.sroa.0171.0516.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahw, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit170.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0560.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0560.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0171.0516.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4802
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit170.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahx = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.626.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahu) #30, !noalias !4764
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtBb_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahy = icmp eq i64 %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4803
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ix, %bb.iw
  %.sroa.084.0.i.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.084.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.084.0.i.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.iy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.386.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.386.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.084.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4804
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.iy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.088.0.i.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.088.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.088.0.i.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iz, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.iz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.390.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.390.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.088.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4805
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtBb_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not115.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not115.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.569.0857.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahz = inttoptr i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %.sroa.390.sroa.2.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.13185.0847.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.386.sroa.2.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.13.0850.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %..sroa.031.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i8 %.sroa.031.0859.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not109.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %..sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not109.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %.sroa.05.0862.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %..sroa.5.0.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not109.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 undef, i32 %.sroa.5.0861.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.079.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.012.0860.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ahz, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4746, !noalias !4806
  store i64 %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5709, align 8, !alias.scope !4746, !noalias !4806
  %.sroa.27.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %.sroa.27.sroa.3.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.14.0853.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.30.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.084.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %.sroa.30.sroa.3.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.084.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not115.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.066.0858.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ja:                                            ; preds = %bb.db
  %i.aia = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4754 ; 2 uses
  %.not.i.i.i.i.i.i21.i.i.i.i.i.i.jt2.i.i.i.i.i.i = icmp eq ptr %i.aia, null
  br i1 %.not.i.i.i.i.i.i21.i.i.i.i.i.i.jt2.i.i.i.i.i.i, label %bb.jb, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %bb.ja
  %i.aib = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !4807 ; 3 uses
  %i.aic = extractvalue { i64, ptr } %i.aib, 0
  %i.aid = trunc nuw i64 %i.aic to i1
  br i1 %i.aid, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1788.i.i.i.i.i.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aie = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4808 ; 2 uses
  %.not.i.i367.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aie, null
  br i1 %.not.i.i367.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.jc, %bb.kh
  %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.04.1.i.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ 2, %bb.jc ] ; 8 uses
  %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5.1.i.i.i.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ undef, %bb.jc ] ; 6 uses
  %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.1.i.i.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ -1, %bb.jc ] ; 8 uses
  %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.030.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ 2, %bb.jc ] ; 7 uses
  %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.533.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ undef, %bb.jc ] ; 5 uses
  %.sroa.7.0371.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.kh ], [ true, %bb.jc ]
  %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.086.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ -2, %bb.jc ] ; 20 uses
  %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ undef, %bb.jc ] ; 18 uses
  %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.1.i.i.i.i.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ undef, %bb.jc ] ; 6 uses
  %i.aif = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4808
  %i.aig = extractvalue { i64, i32 } %i.aif, 1
  %i.aih = icmp eq i32 %i.aig, 125
  br i1 %i.aih, label %.thread.i.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.7.0371.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aii = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4808 ; 2 uses
  %i.aij = extractvalue { i64, ptr } %i.aii, 0
  %i.aik = trunc nuw i64 %i.aij to i1
  br i1 %i.aik, label %bb.jw, label %bb.jx

bb.jf:                                            ; preds = %bb.jy, %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !4809
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4810
  %i.ail = load i64, ptr %i.dv, align 8, !range !51, !noalias !4809, !noundef !14 ; 12 uses
  %i.aim = icmp eq i64 %i.ail, -2
  br i1 %i.aim, label %bb.jz, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4809, !nonnull !14, !noundef !14 ; 17 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4809 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4809
  %.not.i.i.i.i.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ail, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jr, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.ji
    i64 6, label %bb.jj
    i64 8, label %bb.jk
  ]

bb.ji:                                            ; preds = %bb.jh
  %i.ain = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aio = xor i32 %i.ain, 1702258028
  %i.aip = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aiq = load i8, ptr %i.aip, align 1
  %i.air = zext i8 %i.aiq to i32
  %i.ais = xor i32 %i.air, 108
  %i.ait = or i32 %i.aio, %i.ais
  %i.aiu = icmp ne i32 %i.ait, 0
  %i.aiv = zext i1 %i.aiu to i32
  %i.aiw = icmp eq i32 %i.aiv, 0
  br i1 %i.aiw, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jj:                                            ; preds = %bb.jh
  %i.aix = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aiy = xor i32 %i.aix, 1836216166
  %i.aiz = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aja = load i16, ptr %i.aiz, align 1
  %i.ajb = zext i16 %i.aja to i32
  %i.ajc = xor i32 %i.ajb, 29793
  %i.ajd = or i32 %i.aiy, %i.ajc
  %i.aje = icmp ne i32 %i.ajd, 0
  %i.ajf = zext i1 %i.aje to i32
  %i.ajg = icmp eq i32 %i.ajf, 0
  br i1 %i.ajg, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jk:                                            ; preds = %bb.jh
  %i.ajh = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aji = icmp ne i64 %i.ajh, 8751735924676977769
  %i.ajj = zext i1 %i.aji to i32
  %i.ajk = icmp eq i32 %i.ajj, 0
  br i1 %i.ajk, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ajl = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ajm = icmp ne i64 %i.ajl, 8751735890233221478
  %i.ajn = zext i1 %i.ajm to i32
  %i.ajo = icmp eq i32 %i.ajn, 0
  br i1 %i.ajo, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jl
  %i.ajp = icmp eq i64 %i.ail, 0
  br i1 %i.ajp, label %.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jm

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ji
  %i.ajq = icmp eq i64 %i.ail, 0
  br i1 %i.ajq, label %.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jn

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jj
  %i.ajr = icmp eq i64 %i.ail, 0
  br i1 %i.ajr, label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jo

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jl, %bb.jj, %bb.ji, %bb.jh
  %i.ajs = icmp eq i64 %i.ail, 0
  br i1 %i.ajs, label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jp

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jk
  %i.ajt = icmp eq i64 %i.ail, 0
  br i1 %i.ajt, label %.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jq

bb.jm:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4811
  br label %.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jn:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4811
  br label %.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jo:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4811
  br label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jp:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4811
  br label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jq:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ail, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4811
  br label %.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jg
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.js
    i64 6, label %bb.jt
    i64 8, label %bb.ju
  ]

bb.js:                                            ; preds = %bb.jr
  %i.aju = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ajv = xor i32 %i.aju, 1702258028
  %i.ajw = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.ajx = load i8, ptr %i.ajw, align 1
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = xor i32 %i.ajy, 108
  %i.aka = or i32 %i.ajv, %i.ajz
  %i.akb = icmp ne i32 %i.aka, 0
  %i.akc = zext i1 %i.akb to i32
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jt:                                            ; preds = %bb.jr
  %i.ake = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.akf = xor i32 %i.ake, 1836216166
  %i.akg = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.akh = load i16, ptr %i.akg, align 1
  %i.aki = zext i16 %i.akh to i32
  %i.akj = xor i32 %i.aki, 29793
  %i.akk = or i32 %i.akf, %i.akj
  %i.akl = icmp ne i32 %i.akk, 0
  %i.akm = zext i1 %i.akl to i32
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ju:                                            ; preds = %bb.jr
  %i.ako = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.akp = icmp ne i64 %i.ako, 8751735924676977769
  %i.akq = zext i1 %i.akp to i32
  %i.akr = icmp eq i32 %i.akq, 0
  br i1 %i.akr, label %.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aks = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.akt = icmp ne i64 %i.aks, 8751735890233221478
  %i.aku = zext i1 %i.akt to i32
  %i.akv = icmp eq i32 %i.aku, 0
  br i1 %i.akv, label %.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jw:                                            ; preds = %bb.je
  %i.akw = extractvalue { i64, ptr } %i.aii, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.je
  %i.akx = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4808 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.akx, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jy, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.aky = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4808
  %i.akz = extractvalue { i64, i32 } %i.aky, 1
  %i.ala = icmp eq i32 %i.akz, 125
  br i1 %i.ala, label %.thread.i.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jf

bb.jz:                                            ; preds = %bb.jf
  %i.alb = load ptr, ptr %i.ay, align 8, !noalias !4809, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4809
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jc, %bb.kh, %bb.jx, %bb.jz, %bb.jw
  %.sroa.9.0340.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jw ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jz ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jx ], [ %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ undef, %bb.jc ]
  %.sroa.086.0312.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jw ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jz ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jx ], [ %.sroa.086.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kh ], [ -2, %bb.jc ]
  %.sroa.992.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.akw, %bb.jw ], [ %i.alb, %bb.jz ], [ %i.akx, %bb.jx ], [ %i.alq, %bb.kh ], [ %i.aie, %bb.jc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.992.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.jy, %.lr.ph.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i
  %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.sroa.625.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr undef, ptr %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -1, i64 %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.alc = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4807 ; 3 uses
  %.not20.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.alc, null
  br i1 %.not20.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lp

.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.js, %bb.jn, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not67.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not67.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kd, label %bb.ke, !prof !20

.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jt, %bb.jo, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not66.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not66.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ki, label %bb.kj, !prof !20

.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ju, %bb.jq, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not65.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not65.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.km, label %bb.kn, !prof !20

.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jv, %bb.jm, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not64.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not64.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ko, label %bb.lm, !prof !20

.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jv, %bb.jt, %bb.js, %bb.jr, %bb.jp, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB8_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1n_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ald = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4812, !inline_history !0 ; 2 uses
  %.not.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ald, null
  br i1 %.not.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ka, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.ka:                                            ; preds = %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ale = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4812, !inline_history !0 ; 2 uses
  %i.alf = extractvalue { i64, ptr } %i.ale, 0
  %i.alg = trunc nuw i64 %i.alf to i1
  br i1 %i.alg, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.alh = extractvalue { i64, ptr } %i.ale, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i

bb.kc:                                            ; preds = %bb.ka
  %i.ali = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4812, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kc, %bb.kb
  %.sroa.0.0.i.i.i.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ali, %bb.kc ], [ %i.alh, %bb.kb ] ; 2 uses
  %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kh, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.kd:                                            ; preds = %.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !4813
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionmEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.bb, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4812
  %i.alj = load i32, ptr %i.bb, align 8, !range !13, !noalias !4813, !noundef !14
  %i.alk = trunc nuw i32 %i.alj to i1
  br i1 %i.alk, label %bb.kf, label %bb.kg

bb.ke:                                            ; preds = %.thread105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4813
  store ptr @153, ptr %i.ax, align 8, !noalias !4814
  %i.all = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 5, ptr %i.all, align 8, !noalias !4814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4814
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !4814
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4814
  %i.alm = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.aw) #30, !noalias !4812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.kf:                                            ; preds = %bb.kd
  %i.aln = load ptr, ptr %i.ea, align 8, !noalias !4813, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.kg:                                            ; preds = %bb.kd
  %i.alo = load i32, ptr %i.dz, align 4, !range !13, !noalias !4813, !noundef !14
  %i.alp = load i32, ptr %i.ea, align 8, !noalias !4813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4813
  br label %bb.kh

bb.kh:                                            ; preds = %bb.lj, %bb.kv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl, %bb.kg, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.1.i.i.i.i.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %.sroa.558.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %i.ama, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ] ; 2 uses
  %.sroa.086.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %i.aly, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ] ; 2 uses
  %.sroa.533.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aoj, %bb.lj ], [ 0, %bb.kv ]
  %.sroa.030.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.lj ], [ 0, %bb.kv ]
  %.sroa.011.1.i.i.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kg ], [ %i.alx, %bb.kl ], [ %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %.sroa.5.1.i.i.i.i.i.i.i36.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.alp, %bb.kg ], [ %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %.sroa.04.1.i.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.alo, %bb.kg ], [ %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kl ], [ %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lj ], [ %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %i.alq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4808 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.alq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ki:                                            ; preds = %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4813
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEB1B_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ba, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4812
  %i.alr = load i8, ptr %i.ba, align 8, !range !19, !noalias !4813, !noundef !14
  %i.als = trunc nuw i8 %i.alr to i1
  br i1 %i.als, label %bb.kk, label %bb.kl

bb.kj:                                            ; preds = %.thread110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4813
  store ptr @154, ptr %i.av, align 8, !noalias !4815
  %i.alt = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 6, ptr %i.alt, align 8, !noalias !4815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !4815
  store ptr %i.av, ptr %i.au, align 8, !noalias !4815
  %.sroa.42.0..sroa_idx.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4815
  %i.alu = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.au) #30, !noalias !4812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !4815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.kk:                                            ; preds = %bb.ki
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8, !noalias !4813, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

bb.kl:                                            ; preds = %bb.ki
  %i.alx = load i8, ptr %i.dy, align 1, !range !28, !noalias !4813, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4813
  br label %bb.kh

bb.km:                                            ; preds = %.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4813
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.az, ptr nonnull align 8 dereferenceable(56) %1) #35, !noalias !4812
  %i.aly = load i64, ptr %i.az, align 8, !range !51, !noalias !4813, !noundef !14 ; 2 uses
  %i.alz = icmp eq i64 %i.aly, -2
  %i.ama = load ptr, ptr %.sroa.457.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4813 ; 2 uses
  br i1 %i.alz, label %.thread133.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i

bb.kn:                                            ; preds = %.thread114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !4813
  store ptr @168, ptr %i.at, align 8, !noalias !4816
  %i.amb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 8, ptr %i.amb, align 8, !noalias !4816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4816
  store ptr %i.at, ptr %i.as, align 8, !noalias !4816
  %.sroa.42.0..sroa_idx.i78.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i78.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4816
  %i.amc = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.as) #30, !noalias !4812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

.thread133.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4813
  br label %bb.lo

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.km
  %.sroa.558.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.558.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4813
  br label %bb.kh

bb.ko:                                            ; preds = %.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.amd = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4817 ; 2 uses
  %.not.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.amd, null
  br i1 %.not.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kp, label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.kp:                                            ; preds = %bb.ko
  %i.ame = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4817 ; 2 uses
  %i.amf = extractvalue { i64, ptr } %i.ame, 0
  %i.amg = trunc nuw i64 %i.amf to i1
  br i1 %i.amg, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.amh = extractvalue { i64, ptr } %i.ame, 1
  br label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.kr:                                            ; preds = %bb.kp
  %i.ami = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4818 ; 2 uses
  %.not.i.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ami, null
  br i1 %.not.i.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ks, label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4819
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef 9) #30, !noalias !4818
  %i.amj = load i32, ptr %i.dw, align 8, !range !52, !noalias !4819, !noundef !14 ; 2 uses
  %i.amk = icmp eq i32 %i.amj, -1
  br i1 %i.amk, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.aml = load ptr, ptr %i.ar, align 8, !noalias !4819, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4819
  br label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ku:                                            ; preds = %bb.ks
  %i.amm = load i64, ptr %i.ar, align 8, !noalias !4819, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4819
  %i.amn = icmp eq i32 %i.amj, 110
  br i1 %i.amn, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.amo = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4818 ; 2 uses
  %i.amp = extractvalue { i64, ptr } %i.amo, 0
  %i.amq = trunc nuw i64 %i.amp to i1
  br i1 %i.amq, label %bb.lk, label %bb.kh

bb.kw:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4820
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_number(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4821
  %i.amr = load i64, ptr %i.dx, align 16, !range !42, !noalias !4820, !noundef !14 ; 2 uses
  %i.ams = icmp eq i64 %i.amr, -1
  br i1 %i.ams, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.amt = load ptr, ptr %i.aq, align 16, !noalias !4820, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4820
  br label %bb.ll

bb.ky:                                            ; preds = %bb.kw
  %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 16, !noalias !4820
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4820
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !4820 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4820
  switch i64 %i.amr, label %default.unreachable [
    i64 0, label %bb.kz
    i64 1, label %bb.la
    i64 2, label %bb.lb
  ]

bb.kz:                                            ; preds = %bb.ky
  %i.amu = icmp ugt i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 18446744073709551615
  br i1 %i.amu, label %bb.le, label %bb.lc

bb.la:                                            ; preds = %bb.ky
  %i.amv = add i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i128 %i.amv, -18446744073709551616
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lh, label %bb.lg

bb.lb:                                            ; preds = %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4822
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store double %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.amw, align 8, !noalias !4822
  store i8 3, ptr %i.ap, align 8, !noalias !4822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4822
  store ptr %i.a, ptr %i.ao, align 8, !noalias !4823
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @181, ptr %i.amx, align 8, !noalias !4823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4823
  store ptr %i.ap, ptr %i.an, align 8, !noalias !4823
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4823
  %i.amy = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.amy, align 8, !noalias !4823
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4823
  %i.amz = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.an) #30, !noalias !4824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4822
  br label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.lc:                                            ; preds = %bb.kz
  %i.ana = trunc nuw i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.anb = icmp ugt i64 %i.ana, 2147483647
  br i1 %i.anb, label %bb.ld, label %bb.lj, !prof !23

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4825
  %i.anc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ana, ptr %i.anc, align 8, !noalias !4825
  store i8 1, ptr %i.am, align 8, !noalias !4825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4825
  store ptr %i.a, ptr %i.al, align 8, !noalias !4826
  %i.and = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @181, ptr %i.and, align 8, !noalias !4826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4826
  store ptr %i.am, ptr %i.ak, align 8, !noalias !4826
  %.sroa.42.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4826
  %i.ane = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.ane, align 8, !noalias !4826
  %.sroa.46.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4826
  %i.anf = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @895, ptr noundef nonnull %i.ak) #30, !noalias !4827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4825
  br label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.le:                                            ; preds = %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4820
  store i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 16, !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.ai, i8 0, i64 57, i1 false), !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4828
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !4828
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 57, ptr %i.ang, align 8, !noalias !4828
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.anh, align 8, !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4828
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !4828
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4828
  %i.ani = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @196, ptr noundef nonnull %i.ag) #30, !noalias !4829
  br i1 %i.ani, label %bb.lf, label %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.lf:                                            ; preds = %bb.le
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #37, !noalias !4829
  unreachable

_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4828
  %i.anj = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #30, !noalias !4829 ; 2 uses
  %i.ank = extractvalue { ptr, i64 } %i.anj, 0
  %i.anl = extractvalue { ptr, i64 } %i.anj, 1
  %i.anm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ank, ptr %i.anm, align 8, !noalias !4828
  %i.ann = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.anl, ptr %i.ann, align 8, !noalias !4828
  store i8 17, ptr %i.af, align 8, !noalias !4828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4828
  store ptr %i.a, ptr %i.ae, align 8, !noalias !4830
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @181, ptr %i.ano, align 8, !noalias !4830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4830
  store ptr %i.af, ptr %i.ad, align 8, !noalias !4830
  %.sroa.42.0..sroa_idx.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4830
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.anp, align 8, !noalias !4830
  %.sroa.46.0..sroa_idx.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4830
  %i.anq = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.ad) #30, !noalias !4829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4820
  br label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.lg:                                            ; preds = %bb.la
  %i.anr = trunc nsw i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ans = add i64 %i.anr, -2147483648
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ans, -4294967296
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lj, !prof !54

_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4831
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.anr, ptr %i.ant, align 8, !noalias !4831
  store i8 2, ptr %i.ac, align 8, !noalias !4831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4831
  store ptr %i.a, ptr %i.ab, align 8, !noalias !4832
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @181, ptr %i.anu, align 8, !noalias !4832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4832
  store ptr %i.ac, ptr %i.aa, align 8, !noalias !4832
  %.sroa.42.0..sroa_idx.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4832
  %i.anv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.anv, align 8, !noalias !4832
  %.sroa.46.0..sroa_idx.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4832
  %i.anw = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @895, ptr noundef nonnull %i.aa) #30, !noalias !4833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4831
  br label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.lh:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4820
  store i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.z, align 16, !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4834
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.y, i8 0, i64 58, i1 false), !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4834
  store ptr %i.y, ptr %i.x, align 8, !noalias !4834
  %i.anx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 58, ptr %i.anx, align 8, !noalias !4834
  %i.any = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.any, align 8, !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4834
  store ptr %i.z, ptr %i.w, align 8, !noalias !4834
  %.sroa.43.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4834
  %i.anz = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @192, ptr noundef nonnull %i.w) #30, !noalias !4835
  br i1 %i.anz, label %bb.li, label %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !23

bb.li:                                            ; preds = %bb.lh
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #37, !noalias !4835
  unreachable

_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4834
  %i.aoa = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #30, !noalias !4835 ; 2 uses
  %i.aob = extractvalue { ptr, i64 } %i.aoa, 0
  %i.aoc = extractvalue { ptr, i64 } %i.aoa, 1
  %i.aod = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.aob, ptr %i.aod, align 8, !noalias !4834
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.aoc, ptr %i.aoe, align 8, !noalias !4834
  store i8 17, ptr %i.v, align 8, !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4834
  store ptr %i.a, ptr %i.u, align 8, !noalias !4836
  %i.aof = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @181, ptr %i.aof, align 8, !noalias !4836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4836
  store ptr %i.v, ptr %i.t, align 8, !noalias !4836
  %.sroa.42.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4836
  %i.aog = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.aog, align 8, !noalias !4836
  %.sroa.46.0..sroa_idx.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4836
  %i.aoh = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.t) #30, !noalias !4835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4820
  br label %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ld, %bb.lb
  %.sroa.11.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.anw, %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.anf, %bb.ld ], [ %i.aoh, %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.amz, %bb.lb ], [ %i.anq, %_RINvYNtNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aoi = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.11.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !4821
  br label %bb.ll

bb.lj:                                            ; preds = %bb.lg, %bb.lc
  %i.aoj = trunc i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %bb.kh

bb.lk:                                            ; preds = %bb.kv
  %i.aok = extractvalue { i64, ptr } %i.amo, 1
  br label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.ll:                                            ; preds = %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kx
  %.sroa.9.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amt, %bb.kx ], [ %i.aoi, %_RINvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aol = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.9.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.amm) #30, !noalias !4818
  br label %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i

bb.lm:                                            ; preds = %.thread118.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4813
  store ptr @169, ptr %i.s, align 8, !noalias !4837
  %i.aom = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 8, ptr %i.aom, align 8, !noalias !4837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4837
  store ptr %i.s, ptr %i.r, align 8, !noalias !4837
  %.sroa.42.0..sroa_idx.i82.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i82.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4837
  %i.aon = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.r) #30, !noalias !4812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4813
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kr, %bb.ko, %bb.ll, %bb.lk, %bb.kt, %bb.kq
  %.sroa.795.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aml, %bb.kt ], [ %i.amh, %bb.kq ], [ %i.aol, %bb.ll ], [ %i.aok, %bb.lk ], [ %i.ami, %bb.kr ], [ %i.amd, %bb.ko ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.795.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lm, %bb.kn, %bb.kk, %bb.kj, %bb.kf, %bb.ke, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.alm, %bb.ke ], [ %i.aln, %bb.kf ], [ %i.alu, %bb.kj ], [ %i.alw, %bb.kk ], [ %i.amc, %bb.kn ], [ %i.aon, %bb.lm ], [ %.sroa.795.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.992.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ald, %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0339.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ke ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kf ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kj ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kk ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kn ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lm ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0340.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0369.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.086.0311.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ke ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kf ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kj ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kk ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kn ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lm ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.086.0312.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtB1B_21LogSyslogWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.086.0370.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aoo = icmp sgt i64 %.sroa.086.0311.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aoo, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0339.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0339.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.086.0311.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4838
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i, %.thread133.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.625.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ama, %.thread133.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ln ] ; 2 uses
  %.in1917.i.i.i.i.i.i = extractvalue { i64, ptr } %i.aib, 1
  %i.aop = ptrtoint ptr %.in1917.i.i.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.625.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.aoq = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.625.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aop) #30, !noalias !4807
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.lp:                                            ; preds = %.thread.i.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.lq, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.625.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.625.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4839
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.lr:                                            ; preds = %bb.ev
  %i.aor = inttoptr i64 %.sroa.5.12.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  store i32 %..sroa.04.0149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4746, !noalias !4806
  store ptr %i.aor, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !alias.scope !4746, !noalias !4806
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.414.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4745
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.8..sroa.10.i.i.i.i.i.8..sroa.10.i.i.i.i.8..sroa.10.i.i.i.i.8..sroa.10.i.i.i.8..sroa.10.i.i.i.8..sroa.10.i.i.8..sroa.10.i.i.8..sroa.10.i.8..sroa.10.i.8..sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5710, align 8, !noalias !4745
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i
  %.not59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %..sroa.04.0.i.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %.sroa.04.0376.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %..sroa.5.0.i.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 undef, i32 %.sroa.5.0375.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %.sroa.044.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.011.0374.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %..sroa.030.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %.sroa.030.0373.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %..sroa.533.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 undef, i32 %.sroa.533.0372.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.13.0368.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4746, !noalias !4806
  store ptr %.sroa.625.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !alias.scope !4746, !noalias !4806
  %.sroa.33.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.044.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aos = inttoptr i64 %.sroa.33.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.aot = zext i32 %..sroa.5.0.i.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aou = zext i32 %..sroa.533.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aov = inttoptr i64 %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.aow = inttoptr i64 %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.aox = ptrtoint ptr %.sroa.625.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ls:                                            ; preds = %bb.ck, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4840
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4841
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aoz = load i64, ptr %i.aoy, align 8, !range !51, !noalias !4840, !noundef !14 ; 4 uses
  %i.apa = icmp eq i64 %i.aoz, -2
  br i1 %i.apa, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.apb = load ptr, ptr %i.q, align 8, !noalias !4840, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4840
  br label %bb.mm

bb.lu:                                            ; preds = %bb.ls
  %.sroa.02.0.copyload.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !4840
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4840, !nonnull !14, !noundef !14 ; 13 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4840 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4840
  %.not.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aoz, -1
  br i1 %.not.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i, label %bb.mb, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i, label %bb.lz [
    i64 7, label %bb.lw
    i64 4, label %bb.lx
    i64 6, label %bb.ly
  ], !prof !4749

bb.lw:                                            ; preds = %bb.lv
  %i.apc = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.apd = xor i32 %i.apc, 1936617315
  %i.ape = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.apf = load i32, ptr %i.ape, align 1
  %i.apg = xor i32 %i.apf, 1701605235
  %i.aph = or i32 %i.apd, %i.apg
  %i.api = icmp ne i32 %i.aph, 0
  %i.apj = zext i1 %i.api to i32
  %i.apk = icmp eq i32 %i.apj, 0
  br i1 %i.apk, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i, label %bb.lz

bb.lx:                                            ; preds = %bb.lv
  %i.apl = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.apm = icmp ne i32 %i.apl, 1701603686
  %i.apn = zext i1 %i.apm to i32
  %i.apo = icmp eq i32 %i.apn, 0
  br i1 %i.apo, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i, label %bb.lz

bb.ly:                                            ; preds = %bb.lv
  %i.app = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.apq = xor i32 %i.app, 1819507059
  %i.apr = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aps = load i16, ptr %i.apr, align 1
  %i.apt = zext i16 %i.aps to i32
  %i.apu = xor i32 %i.apt, 26479
  %i.apv = or i32 %i.apq, %i.apu
  %i.apw = icmp ne i32 %i.apv, 0
  %i.apx = zext i1 %i.apw to i32
  %i.apy = icmp eq i32 %i.apx, 0
  br i1 %i.apy, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i, label %bb.lz, !prof !20

bb.lz:                                            ; preds = %bb.ly, %bb.lx, %bb.lw, %bb.lv
  %i.apz = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @151, i64 noundef 3) #30, !noalias !4842
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.lz, %bb.ly, %bb.lx, %bb.lw
  %.sroa.1210.1.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.apz, %bb.lz ], [ undef, %bb.lx ], [ undef, %bb.lw ], [ undef, %bb.ly ]
  %.sroa.5.1.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.lz ], [ 1, %bb.lx ], [ 0, %bb.lw ], [ 2, %bb.ly ]
  %.sink.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.lz ], [ false, %bb.lx ], [ false, %bb.lw ], [ false, %bb.ly ]
  %i.aqa = icmp eq i64 %i.aoz, 0
  br i1 %i.aqa, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aoz, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4843
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i

bb.mb:                                            ; preds = %bb.lu
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i [
    i64 7, label %bb.mc
    i64 4, label %bb.md
    i64 6, label %bb.me
  ], !prof !4749

bb.mc:                                            ; preds = %bb.mb
  %i.aqb = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aqc = xor i32 %i.aqb, 1936617315
  %i.aqd = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.aqe = load i32, ptr %i.aqd, align 1
  %i.aqf = xor i32 %i.aqe, 1701605235
  %i.aqg = or i32 %i.aqc, %i.aqf
  %i.aqh = icmp ne i32 %i.aqg, 0
  %i.aqi = zext i1 %i.aqh to i32
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i

bb.md:                                            ; preds = %bb.mb
  %i.aqk = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aql = icmp ne i32 %i.aqk, 1701603686
  %i.aqm = zext i1 %i.aql to i32
  %i.aqn = icmp eq i32 %i.aqm, 0
  br i1 %i.aqn, label %.thread36.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i

bb.me:                                            ; preds = %bb.mb
  %i.aqo = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.aqp = xor i32 %i.aqo, 1819507059
  %i.aqq = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.aqr = load i16, ptr %i.aqq, align 1
  %i.aqs = zext i16 %i.aqr to i32
  %i.aqt = xor i32 %i.aqs, 26479
  %i.aqu = or i32 %i.aqp, %i.aqt
  %i.aqv = icmp ne i32 %i.aqu, 0
  %i.aqw = zext i1 %i.aqv to i32
  %i.aqx = icmp eq i32 %i.aqw, 0
  br i1 %i.aqx, label %.thread40.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.me, %bb.md, %bb.mc, %bb.mb
  %i.aqy = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @151, i64 noundef 3) #30, !noalias !4844
  br label %bb.mf

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ma, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB8_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1210.020.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aqy, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread16.i.i.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.1210.1.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1210.020.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.aqz = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.1210.020.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !4841
  br label %bb.mm

bb.mg:                                            ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i
  switch i8 %.sroa.5.1.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i8 1, label %.thread36.i.i.i.i.i.i.i.i.i.i.i.i
    i8 2, label %.thread40.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.mg, %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4845
  store i8 13, ptr %i.p, align 8, !noalias !4845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4845
  store ptr @184, ptr %i.o, align 8, !noalias !4846
  %i.ara = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @185, ptr %i.ara, align 8, !noalias !4846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4846
  store ptr %i.p, ptr %i.n, align 8, !noalias !4846
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4846
  %i.arb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.arb, align 8, !noalias !4846
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4846
  %i.arc = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.n) #30, !noalias !4847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4845
  br label %bb.mm

.thread36.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.mg, %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4848
  store i8 13, ptr %i.m, align 8, !noalias !4848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4848
  store ptr @184, ptr %i.l, align 8, !noalias !4849
  %i.ard = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @185, ptr %i.ard, align 8, !noalias !4849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4849
  store ptr %i.m, ptr %i.k, align 8, !noalias !4849
  %.sroa.42.0..sroa_idx.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4849
  %i.are = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.are, align 8, !noalias !4849
  %.sroa.46.0..sroa_idx.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4849
  %i.arf = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.k) #30, !noalias !4850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4848
  br label %bb.mm

.thread40.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.mg, %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4851
  store i8 13, ptr %i.j, align 8, !noalias !4851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4851
  store ptr @184, ptr %i.i, align 8, !noalias !4852
  %i.arg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @185, ptr %i.arg, align 8, !noalias !4852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4852
  store ptr %i.j, ptr %i.h, align 8, !noalias !4852
  %.sroa.42.0..sroa_idx.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4852
  %i.arh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.arh, align 8, !noalias !4852
  %.sroa.46.0..sroa_idx.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4852
  %i.ari = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.h) #30, !noalias !4853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4851
  br label %bb.mm

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1773.i.i.i.i.i.i: ; preds = %bb.dg
  %i.arj = extractvalue { i64, ptr } %i.qq, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1782.i.i.i.i.i.i: ; preds = %bb.ex
  %i.ark = extractvalue { i64, ptr } %i.wm, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1788.i.i.i.i.i.i: ; preds = %bb.jb
  %i.arl = extractvalue { i64, ptr } %i.aib, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ja, %bb.ew, %bb.ev, %bb.df, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1788.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1782.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1773.i.i.i.i.i.i, %bb.lq, %bb.lp, %bb.lo, %bb.iz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.iv, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.de, %.loopexit55.i.i.i.i.i.i, %bb.cn
  %.sroa.749.0103.i.sink2662.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahq, %bb.iz ], [ %i.qo, %bb.de ], [ %i.qa, %.loopexit55.i.i.i.i.i.i ], [ %i.nz, %bb.cn ], [ %i.ahx, %bb.iv ], [ %i.alc, %bb.lp ], [ %i.wj, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alc, %bb.lq ], [ %i.aoq, %bb.lo ], [ %i.arl, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1788.i.i.i.i.i.i ], [ %i.ark, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1782.i.i.i.i.i.i ], [ %i.arj, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.loopexit.split.loop.exit1773.i.i.i.i.i.i ], [ %i.aia, %bb.ja ], [ %i.qp, %bb.df ], [ %i.qb, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt2.i.i.i.i.i.i ], [ %i.wk, %bb.ev ], [ %i.wl, %bb.ew ], [ %i.qd, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt1.i.i.i.i.i.i ], [ %i.qc, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.jt0.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.749.0103.i.sink2662.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.arm = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.749.0103.i.sink2662.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nu) #30, !noalias !4744
  br label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lr, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.i.8..sroa.10.i.i.i.i.i.8..sroa.10.i.i.i.i.i.8..sroa.10.i.i.i.i.8..sroa.10.i.i.i.i.8..sroa.10.i.i.i.8..sroa.10.i.i.i.8..sroa.10.i.i.8..sroa.10.i.i.8..sroa.10.i.8..sroa.10.i.8..sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.lr ], [ %.sroa.0171.0855.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aox, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.414.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.lr ], [ %i.ahz, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aow, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.lr ], [ %.sroa.27.sroa.3.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aot, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.27.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.lr ], [ %.sroa.27.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %..sroa.04.0.i.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.30.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.lr ], [ %.sroa.30.sroa.3.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aou, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.30.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.lr ], [ %.sroa.30.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %..sroa.030.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.lr ], [ %.sroa.386.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aos, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.lr ], [ %..sroa.031.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.41.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.lr ], [ %.sroa.079.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.40.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.lr ], [ %..sroa.5.0.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.39.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.lr ], [ %..sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.38.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.lr ], [ %.sroa.390.sroa.2.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.37.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.lr ], [ %.sroa.390.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.36.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.lr ], [ %.sroa.088.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.35.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.lr ], [ %.sroa.386.sroa.2.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.25.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.lr ], [ %.sroa.11.0854.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aov, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.lr ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config19LogFileWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess15newtype_variantNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEB1Q_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.30.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.30.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.30.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.30.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.30.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.30.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.30.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.arn = ptrtoint ptr %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aro = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !4744 ; 5 uses
  %.not16.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aro, null
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEB1D_.exit.i.i.i.i.i.i, label %bb.mh

bb.mh:                                            ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.arp = icmp ne i64 %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.assume(i1 %i.arp)
  %i.arq = add nsw i64 %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.arr = icmp samesign ugt i64 %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ars = select i1 %i.arr, i64 %i.arq, i64 1
  switch i64 %i.ars, label %bb.mi [
    i64 0, label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i
    i64 1, label %bb.mj
  ]

bb.mi:                                            ; preds = %bb.mh
  %i.art = icmp sgt ptr %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i, null
  %i.aru = inttoptr i64 %.sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br i1 %i.art, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEBF_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEBF_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mi
  %.sink4.i.sroa.phi.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.37.0.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aru, %bb.mi ]
  %.sink.i36.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.36.0.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arn, %bb.mi ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink4.i.sroa.phi.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sink.i36.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4854
  br label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

bb.mj:                                            ; preds = %bb.mh
  %i.arv = icmp eq i64 %.sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.arv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4855
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.mk, %bb.mj
  %.sroa.30.sroa.0.0.insert.insert.off.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.30.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch38.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.30.sroa.0.0.insert.insert.off.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch38.i.i.i.i.i.i.i.i.i.i.i, label %bb.ml, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ml:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.30.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4856
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ml, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.36.0.off.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.36.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.36.0.off.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEBF_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

bb.mm:                                            ; preds = %.thread40.i.i.i.i.i.i.i.i.i.i.i.i, %.thread36.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mf, %bb.lt
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ari, %.thread40.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arf, %.thread36.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arc, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aqz, %bb.mf ], [ %i.apb, %bb.lt ]
  %i.arw = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.nu) #30, !noalias !4744
  br label %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i

_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.mm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEBF_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mi, %bb.mh, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cl, %bb.cj
  %.sroa.11.0.ph.in.i.i.i.i.i.i.i.i = phi ptr [ %i.nt, %bb.cj ], [ %i.arw, %bb.mm ], [ %i.aro, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aro, %bb.mh ], [ %i.aro, %bb.mi ], [ %i.aro, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config21LogSyslogWriterConfigEBF_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.arm, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtB1H_15LogWriterConfigNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nv, %bb.cl ], [ %i.nq, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i)
  br label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

bb.mn:                                            ; preds = %bb.cg
  %i.arx = extractvalue { i64, ptr } %i.nn, 1
  br label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

bb.mo:                                            ; preds = %bb.cg
  %i.ary = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i = icmp eq ptr %i.ary, null
  br i1 %.not25.i.i.i.i.i.i.i.i, label %bb.mp, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

bb.mp:                                            ; preds = %bb.mo
  %i.arz = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743
  %i.asa = extractvalue { i64, i32 } %i.arz, 1
  %i.asb = icmp eq i32 %i.asa, 93
  br i1 %i.asb, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, label %bb.ch

_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i: ; preds = %bb.ce, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i, %bb.mo, %bb.mn, %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i
  %.sroa.12.0.ph.in.i.i.i.i.i.i = phi ptr [ %.sroa.11.0.ph.in.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs2d6kDCn68sB_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtB6_15DeserializeSeed11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB1n_.exit.thread.i.i.i.i.i.i.i.i ], [ %i.arx, %bb.mn ], [ %i.ary, %bb.mo ], [ %i.asi, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i ], [ %i.ng, %bb.ce ]
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl) #30, !noalias !4857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4742
  br label %.loopexit189

_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEB1D_.exit.i.i.i.i.i.i: ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBb_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i)
  %.sroa.27.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.27.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.27.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.27.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.27.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.27.sroa.3.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.27.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4858)
  %i.asc = load i64, ptr %i.df, align 8, !alias.scope !4858, !noalias !4859, !noundef !14 ; 3 uses
  %i.asd = load i64, ptr %i.cl, align 8, !range !16, !alias.scope !4858, !noalias !4859, !noundef !14
  %i.ase = icmp eq i64 %i.asc, %i.asd
  br i1 %i.ase, label %bb.mq, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i

bb.mq:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEB1D_.exit.i.i.i.i.i.i
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl) #36, !noalias !4860
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigE8push_mutBJ_.exit.i.i.i.i.i.i: ; preds = %bb.mq, %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEB1D_.exit.i.i.i.i.i.i
  %i.asf = load ptr, ptr %i.de, align 8, !alias.scope !4858, !noalias !4859, !nonnull !14, !noundef !14 ; 3 uses
  %i.asg = getelementptr inbounds nuw [104 x i8], ptr %i.asf, i64 %i.asc ; 15 uses
  store i64 %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.asg, align 8, !noalias !4861
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  store i64 %i.arn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  store i64 %.sroa.10.8..sroa.10.8..sroa.515.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  store ptr %.sroa.25.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 32
  store i64 %.sroa.27.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 40
  store i64 %.sroa.30.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 48
  store ptr %.sroa.33.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 56
  store i64 %.sroa.35.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 64
  store i64 %.sroa.36.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.1211.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 72
  store ptr %.sroa.37.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1211.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 80
  store i64 %.sroa.38.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 88
  store i32 %.sroa.39.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 92
  store i32 %.sroa.40.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4861
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 96
  store i8 %.sroa.41.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4861
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 97
  store i8 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4861
  %i.ash = add i64 %i.asc, 1                      ; 3 uses
  store i64 %i.ash, ptr %i.df, align 8, !noalias !4742
  %i.asi = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4743 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cf, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i: ; preds = %bb.mp, %bb.cf
  %.sroa.9.0.copyload.i.lcssa.ph.i.i.i.i = phi i64 [ %i.ash, %bb.cf ], [ %.sroa.9.0.copyload.i1695.i.i.i.i, %bb.mp ]
  %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i = phi ptr [ %i.asf, %bb.cf ], [ %.sroa.4.0.copyload.i1696.i.i.i.i, %bb.mp ] ; 2 uses
  %.sroa.0.0.copyload.i.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !4862 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4742
  %i.asj = icmp eq i64 %.sroa.0.0.copyload.i.pre.i.i.i.i, -1
  br i1 %i.asj, label %.loopexit189, label %bb.mr

.loopexit189:                                     ; preds = %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i
  %.sroa.4.029.i.i.i.i.i = phi ptr [ %.sroa.12.0.ph.in.i.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.in = extractvalue { i64, ptr } %i.nd, 1
  %i.ask = ptrtoint ptr %.in to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.029.i.i.i.i.i) ]
  %i.asl = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.4.029.i.i.i.i.i, i64 noundef %i.ask) #30, !noalias !4740
  br label %bb.mt

bb.mr:                                            ; preds = %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i
  %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i = phi i64 [ 0, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.9.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i3278.i.i.i.i = phi i64 [ 0, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.0.0.copyload.i.pre.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.sroa.0.0.copyload.i3278.i.i.i.i, ptr %i.cm, align 8, !noalias !4741
  store ptr %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4741
  store i64 %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4741
  %i.asm = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 93, i8 noundef 0, i8 noundef 12) #30, !noalias !4740 ; 2 uses
  %.not21.i.i.i.i.i = icmp eq ptr %i.asm, null
  br i1 %.not21.i.i.i.i.i, label %bb.mv, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm) #30, !noalias !4740
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %.loopexit189
  %.sroa.11.0 = phi ptr [ %i.asm, %bb.ms ], [ %i.asl, %.loopexit189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4741
  br label %.loopexit

bb.mu:                                            ; preds = %.thread148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @177, ptr %i.g, align 8, !noalias !4863
  %i.asn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 7, ptr %i.asn, align 8, !noalias !4863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4863
  store ptr %i.g, ptr %i.f, align 8, !noalias !4863
  %.sroa.42.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i89, align 8, !noalias !4863
  %i.aso = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.loopexit.split.loop.exit:                        ; preds = %bb.cd
  %i.asp = extractvalue { i64, ptr } %i.nd, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bz, %bb.cc, %.loopexit.split.loop.exit, %bb.cb, %bb.mt
  %.sroa.11.1.ph = phi ptr [ %.sroa.11.0, %bb.mt ], [ %i.nb, %bb.cb ], [ %i.asp, %.loopexit.split.loop.exit ], [ %i.mx, %bb.bz ], [ %i.nc, %bb.cc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.ph) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.mv:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4741
  %i.asq = load i64, ptr %i.cz, align 8, !range !24, !alias.scope !4864, !noundef !14
  %i.asr = icmp eq i64 %i.asq, -1
  br i1 %i.asr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit: ; preds = %bb.mv, %bb.mw
  store i64 %.sroa.0.0.copyload.i3278.i.i.i.i, ptr %i.cz, align 8
  store ptr %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i, ptr %.sroa.627.0..sroa_idx, align 8
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.mx:                                            ; preds = %.thread152
  %i.ass = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4865 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.ass, null
  br i1 %.not.i.i90, label %bb.my, label %.thread175

bb.my:                                            ; preds = %bb.mx
  %i.ast = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4865 ; 2 uses
  %i.asu = extractvalue { i64, ptr } %i.ast, 0
  %i.asv = trunc nuw i64 %i.asu to i1
  br i1 %i.asv, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.asw = extractvalue { i64, ptr } %i.ast, 1
  br label %.thread175

bb.na:                                            ; preds = %bb.my
  %i.asx = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4866 ; 2 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.asx, null
  br i1 %.not.i.i.i.i.i91, label %bb.nb, label %.thread175

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4867
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef 9) #30, !noalias !4866
  %i.asy = load i32, ptr %i.dc, align 8, !range !52, !noalias !4867, !noundef !14 ; 2 uses
  %i.asz = icmp eq i32 %i.asy, -1
  br i1 %i.asz, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.ata = load ptr, ptr %i.e, align 8, !noalias !4867, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4867
  br label %.thread175

bb.nd:                                            ; preds = %bb.nb
  %i.atb = load i64, ptr %i.e, align 8, !noalias !4867, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4867
  %i.atc = icmp eq i32 %i.asy, 110
  br i1 %i.atc, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.atd = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4866 ; 2 uses
  %i.ate = extractvalue { i64, ptr } %i.atd, 0
  %i.atf = trunc nuw i64 %i.ate to i1
  br i1 %i.atf, label %bb.nm, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4868
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4869
  %i.atg = load i64, ptr %i.dd, align 8, !range !51, !noalias !4868, !noundef !14 ; 3 uses
  %i.ath = icmp eq i64 %i.atg, -2
  br i1 %i.ath, label %bb.nn, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4868 ; 3 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4868 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4868
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.atg, -1
  br i1 %.not.i.i.i.i.i.i.i.i92, label %bb.nh, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i95 = icmp slt i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i95, label %bb.nk, label %bb.ni, !prof !39

bb.ni:                                            ; preds = %bb.nh
  %i.ati = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.ati, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4870
  %i.atj = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #30, !noalias !4870 ; 3 uses
  %i.atk = icmp eq ptr %i.atj, null
  br i1 %i.atk, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj, %bb.nh
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.nj ], [ 0, %bb.nh ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i) #34, !noalias !4871
  unreachable

bb.nl:                                            ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atj, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i1 false), !noalias !4872
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nm:                                            ; preds = %bb.ne
  %i.atl = extractvalue { i64, ptr } %i.atd, 1
  br label %.thread175

bb.nn:                                            ; preds = %bb.nf
  %i.atm = load ptr, ptr %i.d, align 8, !noalias !4868, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4868
  %i.atn = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %i.atm, i64 noundef %i.atb) #30, !noalias !4866
  br label %.thread175

bb.no:                                            ; preds = %.thread152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @178, ptr %i.c, align 8, !noalias !4873
  %i.ato = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 11, ptr %i.ato, align 8, !noalias !4873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4873
  store ptr %i.c, ptr %i.b, align 8, !noalias !4873
  %.sroa.42.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i96, align 8, !noalias !4873
  %i.atp = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.thread175:                                       ; preds = %bb.mx, %bb.na, %bb.nn, %bb.nm, %bb.nc, %bb.mz
  %.sroa.11114.0.ph = phi ptr [ %i.ata, %bb.nc ], [ %i.atn, %bb.nn ], [ %i.asw, %bb.mz ], [ %i.atl, %bb.nm ], [ %i.asx, %bb.na ], [ %i.ass, %bb.mx ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11114.0.ph) ]
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11114.0.ph, ptr %i.atq, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %.thread156, %bb.ag, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %bb.by, %.loopexit190, %bb.mu, %.loopexit, %bb.no, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit
  %.sink9314 = phi ptr [ %i.ir, %bb.ag ], [ %i.is, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %i.mv, %bb.by ], [ %.sroa.7111.0.ph, %.loopexit190 ], [ %i.aso, %bb.mu ], [ %.sroa.11.1.ph, %.loopexit ], [ %i.atp, %bb.no ], [ %.sroa.9107.0, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.0.0.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.ie, %.thread156 ]
  %.sroa.10.03257 = phi ptr [ %.sroa.10.03648, %bb.ag ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %.sroa.10.03648, %bb.by ], [ %.sroa.10.03648, %.loopexit190 ], [ %.sroa.10.03648, %bb.mu ], [ %.sroa.10.03648, %.loopexit ], [ %.sroa.10.03648, %bb.no ], [ %.sroa.10.03258, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.10.03648, %.thread156 ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %.sroa.0103.03094 = phi i64 [ %.sroa.0103.03649, %bb.ag ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %.sroa.0103.03649, %bb.by ], [ %.sroa.0103.03649, %.loopexit190 ], [ %.sroa.0103.03649, %bb.mu ], [ %.sroa.0103.03649, %.loopexit ], [ %.sroa.0103.03649, %bb.no ], [ %.sroa.0103.03095, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.0103.03649, %.thread156 ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink9314, ptr %i.atr, align 8
  store i64 -1, ptr %0, align 8
  %i.ats = icmp sgt i64 %.sroa.0103.03094, 0
  br i1 %i.ats, label %bb.np, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

bb.np:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.03257) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.03257, i64 noundef %.sroa.0103.03094, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4874
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99: ; preds = %.thread175, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %bb.np
  %i.att = load i64, ptr %i.cz, align 8, !range !24, !alias.scope !4875, !noundef !14
  %i.atu = icmp eq i64 %i.att, -1
  br i1 %i.atu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100, label %bb.nq

bb.nq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100

bb.nr:                                            ; preds = %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  store i64 %.sroa.0103.03649, ptr %.sroa.049.sroa.8.0..sroa_idx123, align 8
  %.sroa.049.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.03648, ptr %.sroa.049.sroa.10.0..sroa_idx, align 8
  %.sroa.049.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.13.03647, ptr %.sroa.049.sroa.12.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.045.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.047.0, ptr %.sroa.12.0..sroa_idx, align 4
  br i1 %.not65.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split

bb.ns:                                            ; preds = %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  store i64 -1, ptr %.sroa.049.sroa.8.0..sroa_idx123, align 8
  %.sroa.10.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.045.0, ptr %.sroa.10.0..sroa_idx51, align 8
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.047.0, ptr %.sroa.12.0..sroa_idx53, align 4
  br i1 %.not65.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split: ; preds = %bb.nr, %bb.ns
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split, %bb.nr, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100: ; preds = %bb.nq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [58 x i8], align 1                ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [57 x i8], align 1                ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4905
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_number(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4904
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !range !42, !noalias !4905, !noundef !14 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.y, align 16, !noalias !4905, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4905
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4904, !noalias !4906
  br label %_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBR_5implsmNtBR_11Deserialize11deserialize16PrimitiveVisitorECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.08.0.copyload.i = load i64, ptr %i.y, align 16, !noalias !4905
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6.sroa.0.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4905
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.6.sroa.4.0.copyload.i = load i128, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 16, !noalias !4905 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4905
  switch i64 %i.aa, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i128 %.sroa.6.sroa.4.0.copyload.i, 18446744073709551615
  br i1 %i.ae, label %bb.i, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = add i128 %.sroa.6.sroa.4.0.copyload.i, -9223372036854775808
  %or.cond.i = icmp ult i128 %i.af, -18446744073709551616
  br i1 %or.cond.i, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4907
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %.sroa.6.sroa.0.0.copyload.i, ptr %i.ag, align 8, !noalias !4907
  store i8 3, ptr %i.x, align 8, !noalias !4907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4907
  store ptr %i.a, ptr %i.w, align 8, !noalias !4908
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @179, ptr %i.ah, align 8, !noalias !4908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4908
  store ptr %i.x, ptr %i.v, align 8, !noalias !4908
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4908
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.ai, align 8, !noalias !4908
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !4908
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.v) #30, !noalias !4909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4907
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.g:                                             ; preds = %bb.d
  %i.ak = trunc nuw i128 %.sroa.6.sroa.4.0.copyload.i to i64 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 4294967295
  br i1 %i.al, label %bb.h, label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i, !prof !23

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4910
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !4910
  store i8 1, ptr %i.u, align 8, !noalias !4910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4910
  store ptr %i.a, ptr %i.t, align 8, !noalias !4911
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @179, ptr %i.an, align 8, !noalias !4911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4911
  store ptr %i.u, ptr %i.s, align 8, !noalias !4911
  %.sroa.42.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i13.i, align 8, !noalias !4911
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.ao, align 8, !noalias !4911
  %.sroa.46.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i14.i, align 8, !noalias !4911
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @895, ptr noundef nonnull %i.s) #30, !noalias !4912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4910
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4905
  store i128 %.sroa.6.sroa.4.0.copyload.i, ptr %i.r, align 16, !noalias !4913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4913
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.q, i8 0, i64 57, i1 false), !noalias !4913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4913
  store ptr %i.q, ptr %i.p, align 8, !noalias !4913
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 57, ptr %i.aq, align 8, !noalias !4913
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.ar, align 8, !noalias !4913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4913
  store ptr %i.r, ptr %i.o, align 8, !noalias !4913
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !4913
  %i.as = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @196, ptr noundef nonnull %i.o) #30, !noalias !4914
  br i1 %i.as, label %bb.j, label %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #37, !noalias !4914
  unreachable

_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4913
  %i.at = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #30, !noalias !4914 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !noalias !4913
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !noalias !4913
  store i8 17, ptr %i.n, align 8, !noalias !4913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4913
  store ptr %i.a, ptr %i.m, align 8, !noalias !4915
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @179, ptr %i.ay, align 8, !noalias !4915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4915
  store ptr %i.n, ptr %i.l, align 8, !noalias !4915
  %.sroa.42.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i15.i, align 8, !noalias !4915
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.az, align 8, !noalias !4915
  %.sroa.46.0..sroa_idx.i.i16.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i16.i, align 8, !noalias !4915
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.l) #30, !noalias !4914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4905
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.k:                                             ; preds = %bb.e
  %i.bb = trunc nsw i128 %.sroa.6.sroa.4.0.copyload.i to i64 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 4294967295
  br i1 %i.bc, label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i, label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i, !prof !54

_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4916
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !noalias !4916
  store i8 2, ptr %i.k, align 8, !noalias !4916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4916
  store ptr %i.a, ptr %i.j, align 8, !noalias !4917
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @179, ptr %i.be, align 8, !noalias !4917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4917
  store ptr %i.k, ptr %i.i, align 8, !noalias !4917
  %.sroa.42.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i18.i, align 8, !noalias !4917
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bf, align 8, !noalias !4917
  %.sroa.46.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i19.i, align 8, !noalias !4917
  %i.bg = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @895, ptr noundef nonnull %i.i) #30, !noalias !4918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4916
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4905
  store i128 %.sroa.6.sroa.4.0.copyload.i, ptr %i.h, align 16, !noalias !4919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.g, i8 0, i64 58, i1 false), !noalias !4919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4919
  store ptr %i.g, ptr %i.f, align 8, !noalias !4919
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 58, ptr %i.bh, align 8, !noalias !4919
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bi, align 8, !noalias !4919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4919
  store ptr %i.h, ptr %i.e, align 8, !noalias !4919
  %.sroa.43.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i20.i, align 8, !noalias !4919
  %i.bj = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @192, ptr noundef nonnull %i.e) #30, !noalias !4920
  br i1 %i.bj, label %bb.m, label %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #37, !noalias !4920
  unreachable

_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4919
  %i.bk = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #30, !noalias !4920 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !noalias !4919
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !noalias !4919
  store i8 17, ptr %i.d, align 8, !noalias !4919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4919
  store ptr %i.a, ptr %i.c, align 8, !noalias !4921
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @179, ptr %i.bp, align 8, !noalias !4921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4921
  store ptr %i.d, ptr %i.b, align 8, !noalias !4921
  %.sroa.42.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i21.i, align 8, !noalias !4921
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bq, align 8, !noalias !4921
  %.sroa.46.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i22.i, align 8, !noalias !4921
  %i.br = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.b) #30, !noalias !4920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4905
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i, %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.h, %bb.f
  %.sroa.11.026.i = phi ptr [ %i.bg, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread32.i ], [ %i.ap, %bb.h ], [ %i.br, %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.aj, %bb.f ], [ %i.ba, %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %i.bs = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.11.026.i, i64 noundef %.sroa.08.0.copyload.i) #30, !noalias !4904
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !4904, !noalias !4906
  br label %_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBR_5implsmNtBR_11Deserialize11deserialize16PrimitiveVisitorECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i: ; preds = %bb.k, %bb.g
  %i.bu = trunc i128 %.sroa.6.sroa.4.0.copyload.i to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !alias.scope !4904, !noalias !4906
  br label %_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBR_5implsmNtBR_11Deserialize11deserialize16PrimitiveVisitorECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBR_5implsmNtBR_11Deserialize11deserialize16PrimitiveVisitorECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i
  %storemerge36.i = phi i32 [ 1, %bb.b ], [ 0, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i ], [ 1, %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ]
  store i32 %storemerge36.i, ptr %0, align 8, !alias.scope !4904, !noalias !4906
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 6 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4944
  %i.f = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 1) #30, !noalias !4944 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #34, !noalias !4945
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !4946
  br label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.e, %bb.b
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.f:                                             ; preds = %bb.a
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1) #30
  br label %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.f, %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %.sroa.4.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4947
  %i.h = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !4947 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %_RINvMs2_NtCseuwcdgGPBeX_5json55errorNtB6_5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !17

bb.g:                                             ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #34, !noalias !4947
  unreachable

_RINvMs2_NtCseuwcdgGPBeX_5json55errorNtB6_5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.h
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4976)
  %i.c = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !4976 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !alias.scope !4976
  store i64 -2, ptr %0, align 8, !alias.scope !4976
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4976 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !4976
  store i64 -2, ptr %0, align 8, !alias.scope !4976
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  %i.j = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !4980 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !4980, !noalias !4981
  store i64 -2, ptr %0, align 8, !alias.scope !4980, !noalias !4981
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4982
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i8 noundef 9) #30, !noalias !4980
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !52, !noalias !4982, !noundef !14 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.b, align 8, !noalias !4982, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4982
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !4980, !noalias !4981
  store i64 -2, ptr %0, align 8, !alias.scope !4980, !noalias !4981
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !noalias !4982, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4982
  %i.r = icmp eq i32 %i.m, 110
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !4980 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.r, label %bb.t

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4983
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !4984
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !51, !noalias !4983, !noundef !14 ; 3 uses
  %i.x = icmp eq i64 %i.w, -2
  br i1 %i.x, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4983 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4983 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4983
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m
  %i.y = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4985
  %i.z = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #30, !noalias !4985 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.m ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i) #34, !noalias !4986
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, i1 false), !noalias !4987
  br label %bb.t

bb.r:                                             ; preds = %bb.j
  %i.ab = extractvalue { i64, ptr } %i.s, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !4980, !noalias !4981
  store i64 -2, ptr %0, align 8, !alias.scope !4980, !noalias !4981
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.a, align 8, !noalias !4983, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4983
  %i.ae = tail call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %i.ad, i64 noundef %i.q) #30, !noalias !4980
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !4980, !noalias !4981
  store i64 -2, ptr %0, align 8, !alias.scope !4980, !noalias !4981
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.t:                                             ; preds = %bb.q, %bb.n, %bb.l, %bb.j
  %.sroa.11.0.ph.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.l ], [ 0, %bb.n ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.q ], [ undef, %bb.j ]
  %.sroa.8.0.ph.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.n ], [ %i.z, %bb.q ], [ undef, %bb.j ]
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.w, %bb.l ], [ 0, %bb.n ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.q ], [ -1, %bb.j ]
  store i64 %.sroa.0.0.ph.i.i.i.i, ptr %0, align 8, !alias.scope !4980, !noalias !4981
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4980, !noalias !4981
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.ph.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4980, !noalias !4981
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionjEECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nonnull %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [58 x i8], align 1                ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [57 x i8], align 1                ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 16               ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  %i.x = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5018 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !5018
  store i64 2, ptr %0, align 8, !alias.scope !5018
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.a
  %i.z = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5018 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = extractvalue { i64, ptr } %i.z, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !5018
  store i64 2, ptr %0, align 8, !alias.scope !5018
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5021)
  %i.ae = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5022 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !5022, !noalias !5023
  store i64 2, ptr %0, align 8, !alias.scope !5022, !noalias !5023
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5024
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i8 noundef 9) #30, !noalias !5022
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !range !52, !noalias !5024, !noundef !14 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.w, align 8, !noalias !5024, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5024
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !5022, !noalias !5023
  store i64 2, ptr %0, align 8, !alias.scope !5022, !noalias !5023
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.i:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.w, align 8, !noalias !5024, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5024
  %i.am = icmp eq i32 %i.ah, 110
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5022 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.v, label %bb.x

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5025
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_number(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5026
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ar = load i64, ptr %i.aq, align 16, !range !42, !noalias !5025, !noundef !14 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.v, align 16, !noalias !5025, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5025
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %.sroa.012.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.v, align 16, !noalias !5025
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !5025
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i = load i128, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !5025 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5025
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.au = icmp ugt i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i, 18446744073709551615
  br i1 %i.au, label %bb.q, label %.thread28.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.av = add i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  %or.cond.i.i.i.i.i.i.i = icmp ult i128 %i.av, -18446744073709551616
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5025
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.aw, align 8, !noalias !5025
  store i8 3, ptr %i.u, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5025
  store ptr %i.a, ptr %i.t, align 8, !noalias !5027
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @180, ptr %i.ax, align 8, !noalias !5027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5027
  store ptr %i.u, ptr %i.s, align 8, !noalias !5027
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5027
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.ay, align 8, !noalias !5027
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5027
  %i.az = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.s) #30, !noalias !5026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5025
  br label %.thread.i.i.i.i.i.i.i

.thread28.i.i.i.i.i.i.i:                          ; preds = %bb.n
  %i.ba = trunc nuw i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i to i64
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5025
  store i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %i.r, align 16, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.q, i8 0, i64 57, i1 false), !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5025
  store ptr %i.q, ptr %i.p, align 8, !noalias !5025
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 57, ptr %i.bb, align 8, !noalias !5025
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.bc, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5025
  store ptr %i.r, ptr %i.o, align 8, !noalias !5025
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5025
  %i.bd = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @196, ptr noundef nonnull %i.o) #30, !noalias !5026
  br i1 %i.bd, label %bb.r, label %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, !prof !23

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #37, !noalias !5026
  unreachable

_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5025
  %i.be = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #30, !noalias !5026 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !noalias !5025
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.bg, ptr %i.bi, align 8, !noalias !5025
  store i8 17, ptr %i.n, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5025
  store ptr %i.a, ptr %i.m, align 8, !noalias !5028
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @180, ptr %i.bj, align 8, !noalias !5028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5028
  store ptr %i.n, ptr %i.l, align 8, !noalias !5028
  %.sroa.42.0..sroa_idx.i.i17.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i17.i.i.i.i.i.i.i, align 8, !noalias !5028
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.bk, align 8, !noalias !5028
  %.sroa.46.0..sroa_idx.i.i18.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i18.i.i.i.i.i.i.i, align 8, !noalias !5028
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.l) #30, !noalias !5026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5025
  br label %.thread.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bm = trunc nsw i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.x, label %.thread32.i.i.i.i.i.i.i, !prof !20

.thread32.i.i.i.i.i.i.i:                          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5025
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bm, ptr %i.bo, align 8, !noalias !5025
  store i8 2, ptr %i.k, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5025
  store ptr %i.a, ptr %i.j, align 8, !noalias !5029
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @180, ptr %i.bp, align 8, !noalias !5029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5029
  store ptr %i.k, ptr %i.i, align 8, !noalias !5029
  %.sroa.42.0..sroa_idx.i.i19.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i19.i.i.i.i.i.i.i, align 8, !noalias !5029
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bq, align 8, !noalias !5029
  %.sroa.46.0..sroa_idx.i.i20.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i20.i.i.i.i.i.i.i, align 8, !noalias !5029
  %i.br = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @895, ptr noundef nonnull %i.i) #30, !noalias !5026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5025
  br label %.thread.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5025
  store i128 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %i.h, align 16, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.g, i8 0, i64 58, i1 false), !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5025
  store ptr %i.g, ptr %i.f, align 8, !noalias !5025
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 58, ptr %i.bs, align 8, !noalias !5025
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bt, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5025
  store ptr %i.h, ptr %i.e, align 8, !noalias !5025
  %.sroa.43.0..sroa_idx.i21.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i21.i.i.i.i.i.i.i, align 8, !noalias !5025
  %i.bu = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @193, ptr noundef nonnull @192, ptr noundef nonnull %i.e) #30, !noalias !5026
  br i1 %i.bu, label %bb.u, label %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, !prof !23

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #37, !noalias !5026
  unreachable

_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5025
  %i.bv = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #30, !noalias !5026 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bw, ptr %i.by, align 8, !noalias !5025
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bx, ptr %i.bz, align 8, !noalias !5025
  store i8 17, ptr %i.d, align 8, !noalias !5025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5025
  store ptr %i.a, ptr %i.c, align 8, !noalias !5030
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @180, ptr %i.ca, align 8, !noalias !5030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5030
  store ptr %i.d, ptr %i.b, align 8, !noalias !5030
  %.sroa.42.0..sroa_idx.i.i22.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i22.i.i.i.i.i.i.i, align 8, !noalias !5030
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.cb, align 8, !noalias !5030
  %.sroa.46.0..sroa_idx.i.i23.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i23.i.i.i.i.i.i.i, align 8, !noalias !5030
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.b) #30, !noalias !5026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5025
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %.thread32.i.i.i.i.i.i.i, %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %bb.p
  %.sroa.8.0.in27.i.i.i.i.i.i.i = phi ptr [ %i.br, %.thread32.i.i.i.i.i.i.i ], [ %i.az, %bb.p ], [ %i.cc, %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_i128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ], [ %i.bl, %_RINvYNtNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ]
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %.sroa.8.0.in27.i.i.i.i.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i.i.i.i.i) #30, !noalias !5026
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.ce = extractvalue { i64, ptr } %i.an, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !5022, !noalias !5023
  store i64 2, ptr %0, align 8, !alias.scope !5022, !noalias !5023
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.w:                                             ; preds = %.thread.i.i.i.i.i.i.i, %bb.l
  %.sroa.4.1.in.i.i.ph.i.i.i.i.i = phi ptr [ %i.cd, %.thread.i.i.i.i.i.i.i ], [ %i.at, %bb.l ]
  %i.cg = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %.sroa.4.1.in.i.i.ph.i.i.i.i.i, i64 noundef %i.al) #30, !noalias !5022
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !5022, !noalias !5023
  store i64 2, ptr %0, align 8, !alias.scope !5022, !noalias !5023
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.x:                                             ; preds = %bb.s, %.thread28.i.i.i.i.i.i.i, %bb.j
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ %i.bm, %bb.s ], [ %i.ba, %.thread28.i.i.i.i.i.i.i ], [ undef, %bb.j ]
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ 1, %bb.s ], [ 1, %.thread28.i.i.i.i.i.i.i ], [ 0, %bb.j ]
  store i64 %.sroa.0.0.ph.i.i.i.i, ptr %0, align 8, !alias.scope !5022, !noalias !5023
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph.i.i.i.i, ptr %i.ci, align 8, !alias.scope !5022, !noalias !5023
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionjEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.v, %bb.w, %bb.x
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionmEECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr nonnull %.0.val) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5045)
  %i.c = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5045 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !alias.scope !5045
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5045 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !5045
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5048)
  %i.j = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5049 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !5049, !noalias !5050
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5051
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i8 noundef 9) #30, !noalias !5049
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !52, !noalias !5051, !noundef !14 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.b, align 8, !noalias !5051, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5051
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !5049, !noalias !5050
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !noalias !5051, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5051
  %i.r = icmp eq i32 %i.m, 110
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5049 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.l, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5052
  call fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35, !noalias !5053
  %i.v = load i32, ptr %i.a, align 8, !range !13, !noalias !5052, !noundef !14
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = extractvalue { i64, ptr } %i.s, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !5049, !noalias !5050
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !5052, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5052
  br label %.thread.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !5052, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5052
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %i.ac, i64 noundef %i.q) #30, !noalias !5049
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !5049, !noalias !5050
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

.thread.i.i.i.i:                                  ; preds = %bb.m, %bb.j
  %.sroa.6.012.i.i.i.i = phi i32 [ 1, %bb.m ], [ 0, %bb.j ]
  %.sroa.9.011.i.i.i.i = phi i32 [ %i.aa, %bb.m ], [ undef, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.012.i.i.i.i, ptr %i.af, align 4, !alias.scope !5049, !noalias !5050
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.9.011.i.i.i.i, ptr %i.ag, align 8, !alias.scope !5049, !noalias !5050
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtB1N_6option6OptionmEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.l, %bb.n, %.thread.i.i.i.i
  %.sink.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.l ], [ 0, %.thread.i.i.i.i ], [ 1, %bb.n ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !5045
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEB1B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nonnull %.0.val) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5118)
  %i.f = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5118 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !5118
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5118 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.h, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !5118
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5122)
  %i.m = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5123 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !5123, !noalias !5124
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !5123 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = trunc nuw i64 %i.p to i1
end_hunk_2
begin_hunk_3_@_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEB1B_:bb.a
  br i1 %i.bx, label %.loopexit86.i.i.i.i.i.i, label %bb.ak

bb.ad:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5126
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5127
  %i.by = load i64, ptr %i.v, align 8, !range !51, !noalias !5126, !noundef !14 ; 4 uses
  %i.bz = icmp eq i64 %i.by, -2
  br i1 %i.bz, label %.loopexit87.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5126, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5126
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.by, -1
  %i.ca = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ca, label %bb.ag, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cb = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.cc = xor i64 %i.cb, 6878251652255869303
  %i.cd = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = xor i64 %i.cf, 1701669236
  %i.ch = or i64 %i.cc, %i.cg
  %i.ci = icmp ne i64 %i.ch, 0                    ; 2 uses
  %i.cj = zext i1 %i.ci to i32                    ; 0 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.ci to i8
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ], [ 1, %bb.af ] ; 2 uses
  %i.ck = icmp eq i64 %i.by, 0
  br i1 %i.ck, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5128
  br label %bb.am

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.ca, label %bb.aj, label %.thread34.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.cl = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.cm = xor i64 %i.cl, 6878251652255869303
  %i.cn = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = xor i64 %i.cp, 1701669236
  %i.cr = or i64 %i.cm, %i.cq
  %i.cs = icmp ne i64 %i.cr, 0                    ; 2 uses
  %i.ct = zext i1 %i.cs to i32                    ; 0 uses
  %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.cs to i8
  br label %bb.am

.loopexit86.i.i.i.i.i.i:                          ; preds = %bb.ac
  %i.cu = extractvalue { i64, ptr } %i.bv, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ac
  %i.cv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5125 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not22.i.i.i.i.i.i.i.i, label %bb.al, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cw = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5125
  %i.cx = extractvalue { i64, i32 } %i.cw, 1
  %i.cy = icmp eq i32 %i.cx, 125
  br i1 %i.cy, label %.thread.i.i.i.i.i.i, label %bb.ad

.loopexit87.i.i.i.i.i.i:                          ; preds = %bb.ad, %bb.j
  %i.cz = load ptr, ptr %i.e, align 8, !noalias !5126, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5126
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %bb.ak, %.loopexit87.i.i.i.i.i.i, %.loopexit86.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i, %bb.i
  %.sroa.922.0.i.i.i.i.i.i = phi ptr [ %i.cu, %.loopexit86.i.i.i.i.i.i ], [ %i.cz, %.loopexit87.i.i.i.i.i.i ], [ %i.u, %bb.i ], [ %i.br, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i ], [ %i.eb, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.cv, %bb.ak ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.922.0.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i

bb.am:                                            ; preds = %bb.aj, %bb.ah, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB8_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select.i.i8.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %cond.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.ph.i.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i, label %bb.aq, label %.thread34.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.al, %.peel.next.i.i.i.i.i.i
  %.not13.i.i.i.i.i.i = icmp eq i8 %.sroa.04.065.i.i.i.i.i.i, -1
  br i1 %.not13.i.i.i.i.i.i, label %.thread.thread.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBb_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i

.thread.thread.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBb_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i

.thread34.i.i.i.i.i.i:                            ; preds = %bb.am, %bb.ai
  %i.da = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5129, !inline_history !0 ; 2 uses
  %.not.i.i17.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i17.i.i.i.i.i.i, label %bb.an, label %.loopexit.i.i.i.i.i

bb.an:                                            ; preds = %.thread34.i.i.i.i.i.i
  %i.db = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5129, !inline_history !0 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.de = extractvalue { i64, ptr } %i.db, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.df = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5129, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %bb.ap ], [ %i.de, %bb.ao ] ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.am
  %.not14.i.i.i.i.i.i = icmp eq i8 %.sroa.04.065.i.i.i.i.i.i, -1
  br i1 %.not14.i.i.i.i.i.i, label %bb.ar, label %.loopexit88.i.i.i.i.i.i, !prof !20

bb.ar:                                            ; preds = %bb.aq
  %i.dg = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5130 ; 2 uses
  %.not.i.i18.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i18.i.i.i.i.i.i, label %bb.as, label %.loopexit.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.dh = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5130 ; 2 uses
  %i.di = extractvalue { i64, ptr } %i.dh, 0
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %.loopexit89.i.i.i.i.i.i, label %bb.at

.loopexit89.i.i.i.i.i.i:                          ; preds = %bb.as, %bb.v
  %.lcssa68.i.i.i.i.i.i = phi { i64, ptr } [ %i.be, %bb.v ], [ %i.dh, %bb.as ]
  %i.dk = extractvalue { i64, ptr } %.lcssa68.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.dl = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5131 ; 2 uses
  %.not.i.i.i.i.i20.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i20.i.i.i.i.i.i, label %bb.au, label %.loopexit.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5132
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i8 noundef 9) #30, !noalias !5131
  %i.dm = load i32, ptr %i.w, align 8, !range !52, !noalias !5132, !noundef !14 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %.loopexit90.i.i.i.i.i.i, label %bb.av

.loopexit90.i.i.i.i.i.i:                          ; preds = %bb.au, %bb.x
  %i.do = load ptr, ptr %i.d, align 8, !noalias !5132, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5132
  br label %.loopexit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.dp = load i64, ptr %i.d, align 8, !noalias !5132, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5132
  %i.dq = icmp eq i32 %i.dm, 110
  br i1 %i.dq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dr = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5131 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %.loopexit92.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5133
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5134
  %i.du = load i8, ptr %i.x, align 8, !range !28, !noalias !5133, !noundef !14 ; 2 uses
  %i.dv = icmp eq i8 %i.du, 2
  br i1 %i.dv, label %.loopexit91.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5133
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

.loopexit92.i.i.i.i.i.i:                          ; preds = %bb.aw, %bb.ab
  %.lcssa74.i.i.i.i.i.i = phi { i64, ptr } [ %i.bo, %bb.ab ], [ %i.dr, %bb.aw ]
  %i.dw = extractvalue { i64, ptr } %.lcssa74.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

.loopexit91.i.i.i.i.i.i:                          ; preds = %bb.ax, %bb.z
  %.lcssa72.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.z ], [ %i.dp, %bb.ax ]
  %i.dx = load ptr, ptr %i.c, align 8, !noalias !5133, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5133
  %i.dy = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %i.dx, i64 noundef %.lcssa72.i.i.i.i.i.i) #30, !noalias !5131
  br label %.loopexit.i.i.i.i.i.i

.loopexit88.i.i.i.i.i.i:                          ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5135
  store ptr @147, ptr %i.b, align 8, !noalias !5136
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 12, ptr %i.dz, align 8, !noalias !5136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5136
  store ptr %i.b, ptr %i.a, align 8, !noalias !5136
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !5136
  %i.ea = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.a) #30, !noalias !5129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5135
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.at, %bb.ar, %.loopexit91.i.i.i.i.i.i, %.loopexit92.i.i.i.i.i.i, %.loopexit90.i.i.i.i.i.i, %.loopexit89.i.i.i.i.i.i, %bb.w, %bb.u
  %.sroa.725.0.ph.i.i.i.i.i.i = phi ptr [ %i.do, %.loopexit90.i.i.i.i.i.i ], [ %i.dy, %.loopexit91.i.i.i.i.i.i ], [ %i.dk, %.loopexit89.i.i.i.i.i.i ], [ %i.dw, %.loopexit92.i.i.i.i.i.i ], [ %i.bd, %bb.u ], [ %i.bh, %bb.w ], [ %i.dg, %bb.ar ], [ %i.dl, %bb.at ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.725.0.ph.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionbEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.ay, %bb.aw, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i.i = phi i8 [ %.sroa.04.065.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.du, %bb.ay ], [ 2, %bb.aw ]
  %i.eb = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #30, !noalias !5125 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i, !llvm.loop !5117

.loopexit.i.i.i.i.i:                              ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %.loopexit88.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i, %.thread34.peel.i.i.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i = phi ptr [ %.sroa.725.0.ph.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.922.0.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtB1B_23LogFormatConfigOverrideNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.peel.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i ], [ %i.ax, %.thread34.peel.i.i.i.i.i.i ], [ %i.ea, %.loopexit88.i.i.i.i.i.i ], [ %i.da, %.thread34.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ]
  %i.ec = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 %.sroa.5.0.ph.i.i.i.i.i, i64 noundef %i.r) #30, !noalias !5123
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !5123, !noalias !5124
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBb_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i: ; preds = %.thread.thread.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i = phi i8 [ %.sroa.04.065.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ 2, %.thread.thread.i.i.i.i.i.i ]
  %i.ee = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !5123 ; 2 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not13.i.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBb_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !alias.scope !5123, !noalias !5124
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

bb.ba:                                            ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBb_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.3.0.i.i.i.i.i, ptr %i.eg, align 1, !alias.scope !5123, !noalias !5124
  br label %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit

_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsat9HgdBb3qc_16shadowsocks_rust6config23LogFormatConfigOverrideEEB2u_.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %.loopexit.i.i.i.i.i, %bb.az, %bb.ba
  %.sink.i = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %.loopexit.i.i.i.i.i ], [ 1, %bb.az ], [ 0, %bb.ba ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !5118
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs1kwRxRulhfk_12tracing_core4span2IdECsat9HgdBb3qc_16shadowsocks_rust(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !5149
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5149
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5149
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5149
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5149
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5149
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5149
  %.val.i = load i64, ptr %0, align 8, !range !55, !noalias !5150, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5151
  store i64 %.val.i, ptr %i.a, align 8, !noalias !5151
  call fastcc void @_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5151
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !5152
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5152
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5152 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5152
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5152, !noundef !14
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5152, !noundef !14
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierECsat9HgdBb3qc_16shadowsocks_rust(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = xor i64 %.0.val, 8317987319222330741
  %i.e = xor i64 %.8.val, 7237128888997146477
  %i.f = xor i64 %.0.val, 7816392313619706465
  %i.g = xor i64 %.8.val, 8387220255154660723
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !5169
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5169
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %i.e, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5169
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %i.g, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5169
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !5169
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !5169
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5169
  %.val.i = load ptr, ptr %0, align 8, !noalias !5170, !nonnull !14, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !noalias !5170, !nonnull !14, !align !27, !noundef !14
  %i.i = ptrtoint ptr %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5171
  store i64 %i.i, ptr %i.b, align 8, !noalias !5171
  call fastcc void @_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5171
  %i.j = ptrtoint ptr %.val1.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5172
  store i64 %i.j, ptr %i.a, align 8, !noalias !5172
  call fastcc void @_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5172
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !alias.scope !5173
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5173
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !5173 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5173
  %i.k = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !5173, !noundef !14
  %i.l = shl i64 %i.k, 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5173, !noundef !14
  %i.o = or i64 %i.l, %i.n                        ; 2 uses
  %i.p = xor i64 %i.o, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.q = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.r = add i64 %i.p, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.t = xor i64 %i.s, %i.q                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 16)
  %i.v = xor i64 %i.u, %i.r                       ; 3 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32)
  %i.x = add i64 %i.r, %i.t                       ; 3 uses
  %i.y = add i64 %i.v, %i.w                       ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 17)
end_hunk_3
begin_hunk_4_@_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust6configNtB2_6Config13load_from_str:bb.a
bb.s:                                             ; preds = %bb.f
  %i.cm = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5425 ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not22.i.i.i.i.i.i.i, label %bb.t, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cn = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5425
  %i.co = extractvalue { i64, i32 } %i.cn, 1
  %i.cp = icmp eq i32 %i.co, 125
  br i1 %i.cp, label %.thread.i.i.i.i.i, label %bb.g

bb.u:                                             ; preds = %bb.g
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.cq = load ptr, ptr %i.p, align 8, !noalias !5426, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5426
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i, %bb.s
  %.lcssa1519.sink.i.i.i.i.i = phi ptr [ %i.am, %bb.s ], [ %i.dx, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i ]
  %.lcssa491.ph.i.i.i.i.i = phi i64 [ %i.an, %bb.s ], [ %i.dy, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i ]
  %.sroa.988.0.ph.ph.i.i.i.i.i = phi ptr [ %i.cm, %bb.s ], [ %i.dz, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i ]
  store ptr %.lcssa1519.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i, %bb.c
  %.lcssa491.i.i.i.i.i = phi i64 [ -1, %bb.c ], [ %.lcssa491.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i ] ; 2 uses
  %.sroa.988.0.ph.i.i.i.i.i = phi ptr [ %i.ae, %bb.c ], [ %.sroa.988.0.ph.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i ]
  store i64 %.lcssa491.i.i.i.i.i, ptr %i.r, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.i.i.i.i.i, %bb.u, %bb.r
  %i.cr = phi i64 [ %i.an, %bb.r ], [ %i.an, %bb.u ], [ %.lcssa491.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.i.i.i.i.i ]
  %.sroa.988.0.i.i.i.i.i = phi ptr [ %i.cl, %bb.r ], [ %i.cq, %bb.u ], [ %.sroa.988.0.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.988.0.i.i.i.i.i) ]
  br label %bb.cy

.thread.i.i.i.i.i:                                ; preds = %bb.t, %bb.d
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5424
  call void @llvm.experimental.noalias.scope.decl(metadata !5429)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5430
  %i.cs = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !5430 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.v, label %_RNvXs8_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_6ConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i.i.i.i, !prof !17

bb.v:                                             ; preds = %.thread.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34, !noalias !5430
  unreachable

_RNvXs8_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_6ConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i
  store i64 2, ptr %i.cs, align 8, !noalias !5430
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !5430
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i8 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !5430
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store i64 1, ptr %i.cu, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.5.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 1, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i.i, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.72.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i32 0, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !5429, !noalias !5424
  store i64 0, ptr %i.q, align 8, !alias.scope !5429, !noalias !5424
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5429, !noalias !5424
  %.not70.i.i.i.i.i = icmp eq i64 %i.an, -1
  %.not71.i.i.i.i.i = icmp eq i64 %.sroa.014.0535.i.i.i.i.i, 2 ; 3 uses
  %.sroa.849.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5424
  %.sroa.038.0.i.i.i.i.i = select i1 %.not71.i.i.i.i.i, i64 0, i64 %.sroa.014.0535.i.i.i.i.i ; 3 uses
  %.sroa.642.0.i.i.i.i.i = select i1 %.not71.i.i.i.i.i, ptr undef, ptr %.sroa.7.sroa.0.0534.i.i.i.i.i ; 3 uses
  %.sroa.849.0.i.i.i.i.i = select i1 %.not71.i.i.i.i.i, i64 %.sroa.849.0.copyload.i.i.i.i.i, i64 %.sroa.7.sroa.3.0533.i.i.i.i.i
  br i1 %.not70.i.i.i.i.i, label %bb.dc, label %bb.db

.thread100.i.i.i.i.i:                             ; preds = %bb.p, %bb.n, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB8_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i
  %.not75.i.i.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not75.i.i.i.i.i, label %bb.z, label %.thread1069.i.i.i.i.i, !prof !20

.thread105.i.i.i.i.i:                             ; preds = %bb.q, %bb.l, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB8_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i
  %.not74.i.i.i.i.i = icmp eq i64 %.sroa.014.0535.i.i.i.i.i, 2
  br i1 %.not74.i.i.i.i.i, label %bb.aj, label %bb.cx, !prof !20

.thread109.i.i.i.i.i:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB8_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i
  %i.cv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5431, !inline_history !0 ; 2 uses
  %.not.i.i78.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i78.i.i.i.i.i, label %bb.w, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i

bb.w:                                             ; preds = %.thread109.i.i.i.i.i
  %i.cw = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5431, !inline_history !0 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = extractvalue { i64, ptr } %i.cw, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.da = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5431, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.da, %bb.y ], [ %i.cz, %bb.x ] ; 2 uses
  %.not73.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %.not73.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i

bb.z:                                             ; preds = %.thread100.i.i.i.i.i
  %i.db = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5432 ; 2 uses
  %.not.i.i79.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i79.i.i.i.i.i, label %bb.aa, label %.thread1068.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dc = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5432 ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.df = extractvalue { i64, ptr } %i.dc, 1
  br label %.thread1068.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5433
  %i.dg = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5434 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dh = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !5434 ; 3 uses
  %i.di = extractvalue { i64, ptr } %i.dh, 0
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.loopexit.split.loop.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5435
  call fastcc void @_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #35
  %i.dk = load i64, ptr %i.n, align 8, !range !24, !noalias !5435, !noundef !14 ; 3 uses
  %i.dl = icmp eq i64 %i.dk, -1
  %i.dm = load ptr, ptr %i.al, align 8, !noalias !5435 ; 3 uses
  br i1 %i.dl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = extractvalue { i64, ptr } %i.dh, 1
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %i.dm, i64 noundef %i.do) #30, !noalias !5434
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !5435
  store i64 %i.dk, ptr %i.o, align 8, !noalias !5435
  store ptr %i.dm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5435
  %i.dq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !5434 ; 3 uses
  %.not20.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !5436)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.o) #30, !noalias !5434
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dr, align 8, !range !24, !alias.scope !5436, !noalias !5435, !noundef !14 ; 2 uses
  %i.ds = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ds, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !5436, !noalias !5435, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5437
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %.sroa.1290.1.i.i.i.i.i = phi ptr [ %i.dp, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5435
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.loopexit.split.loop.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.du = extractvalue { i64, ptr } %i.dh, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i: ; preds = %bb.ac, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.loopexit.split.loop.exit.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1290.0.ph.i.i.i.i.i = phi ptr [ %.sroa.1290.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEBF_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.du, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.dg, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5433
  br label %.thread1068.i.i.i.i.i

.thread1069.i.i.i.i.i:                            ; preds = %.thread100.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5424
  store ptr @144, ptr %i.m, align 8, !noalias !5438
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 3, ptr %i.dv, align 8, !noalias !5438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5438
  store ptr %i.m, ptr %i.l, align 8, !noalias !5438
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5438
  %i.dw = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.l) #30, !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5424
  br label %bb.cz

.thread1068.i.i.i.i.i:                            ; preds = %bb.z, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i, %bb.ab
  %.sroa.1290.2118.i.i.i.i.i = phi ptr [ %.sroa.1290.0.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEB1B_.exit.thread120.i.i.i.i.i ], [ %i.df, %bb.ab ], [ %i.db, %bb.z ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1290.2118.i.i.i.i.i) ]
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.613.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5433
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i: ; preds = %bb.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %i.dx = phi ptr [ %i.dm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i ], [ %i.am, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.am, %bb.cw ] ; 2 uses
  %i.dy = phi i64 [ %i.dk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i ], [ %i.an, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.an, %bb.cw ] ; 2 uses
  %.sroa.7.sroa.3.1.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.3.0533.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i ], [ %.sroa.7.sroa.3.0533.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %.sroa.20.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i, %bb.cw ]
  %.sroa.7.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0534.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i ], [ %.sroa.7.sroa.0.0534.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.lc, %bb.cw ]
  %.sroa.014.1.i.i.i.i.i = phi i64 [ %.sroa.014.0535.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsat9HgdBb3qc_16shadowsocks_rust6config9LogConfigEEB11_.exit.i.i.i.i.i ], [ %.sroa.014.0535.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.cw ]
  %i.dz = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5425 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.loopexit.sink.split.i.i.i.i.i

bb.aj:                                            ; preds = %.thread105.i.i.i.i.i
  %i.ea = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5439 ; 2 uses
  %.not.i.i80.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i80.i.i.i.i.i, label %bb.ak, label %.loopexit.split.loop.exit458.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.eb = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5439 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.ee = extractvalue { i64, ptr } %i.eb, 1
  br label %.loopexit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ef = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5440 ; 2 uses
  %.not.i.i.i.i.i.i81.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i81.i.i.i.i.i, label %bb.an, label %.loopexit.split.loop.exit462.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.eg = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !5440 ; 3 uses
  %i.eh = extractvalue { i64, ptr } %i.eg, 0
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %.loopexit.split.loop.exit460.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5441 ; 2 uses
  %.not.i.i186.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i186.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit127.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ao, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ao ] ; 8 uses
  %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.ao ] ; 6 uses
  %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ao ] ; 5 uses
  %.sroa.5.045187.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ao ]
  %i.ek = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5441
  %i.el = extractvalue { i64, i32 } %i.ek, 1
  %i.em = icmp eq i32 %i.el, 125
  br i1 %i.em, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.5.045187.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !5441 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.bc, label %bb.bd

bb.ar:                                            ; preds = %bb.be, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5442
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5443
  %i.eq = load i64, ptr %i.ag, align 8, !range !51, !noalias !5442, !noundef !14 ; 8 uses
  %i.er = icmp eq i64 %i.eq, -2
  br i1 %i.er, label %bb.bf, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5442, !nonnull !14, !noundef !14 ; 9 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5442 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5442
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 12, label %bb.au
    i64 4, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.es = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.et = xor i64 %i.es, 7160567712462303095
  %i.eu = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ev = load i32, ptr %i.eu, align 1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = xor i64 %i.ew, 1953396079
  %i.ey = or i64 %i.et, %i.ex
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fc = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fd = icmp ne i32 %i.fc, 1701080941
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.fg = icmp eq i64 %i.eq, 0
  br i1 %i.fg, label %.thread60.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.fh = icmp eq i64 %i.eq, 0
  br i1 %i.fh, label %.thread64.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.fi = icmp eq i64 %i.eq, 0
  br i1 %i.fi, label %.thread55.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay

bb.aw:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5444
  br label %.thread60.i.i.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5444
  br label %.thread64.i.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5444
  br label %.thread55.i.i.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.as
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread64.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 12, label %bb.ba
    i64 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fj = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fk = xor i64 %i.fj, 7160567712462303095
  %i.fl = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fm = load i32, ptr %i.fl, align 1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = xor i64 %i.fn, 1953396079
  %i.fp = or i64 %i.fk, %i.fo
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.thread55.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread64.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ft = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fu = icmp ne i32 %i.ft, 1701080941
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %.thread60.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread64.i.i.i.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.aq
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.fx = extractvalue { i64, ptr } %i.en, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.aq
  %i.fy = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5441 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.fz = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5441
  %i.ga = extractvalue { i64, i32 } %i.fz, 1
  %i.gb = icmp eq i32 %i.ga, 125
  br i1 %i.gb, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.bf:                                            ; preds = %bb.ar
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.gc = load ptr, ptr %i.j, align 8, !noalias !5442, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5442
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.939.0.i.i.i.i.i.i.i.ph.i.i.i.i.i = phi ptr [ %i.gq, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fy, %bb.bd ]
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit127.i.i.i.i.i: ; preds = %bb.ao
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit127.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %bb.bf, %bb.bc
  %.sroa.939.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fx, %bb.bc ], [ %i.gc, %bb.bf ], [ %.sroa.939.0.i.i.i.i.i.i.i.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ], [ %i.ej, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit127.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.939.0.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !5440 ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i, label %bb.cw, label %.loopexit.split.loop.exit.i.i.i.i.i

.thread55.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ba, %bb.ay, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0.i.i.i.i.i.i.i.i.i.i.i.i
  %.not29.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bk, !prof !20

.thread60.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bb, %bb.aw, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.cv, !prof !20

.thread64.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB8_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5445, !inline_history !0 ; 2 uses
  %.not.i.i32.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.bg:                                            ; preds = %.thread64.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5445, !inline_history !0 ; 2 uses
  %i.gg = extractvalue { i64, ptr } %i.gf, 0
  %i.gh = trunc nuw i64 %i.gg to i1
  br i1 %i.gh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gi = extractvalue { i64, ptr } %i.gf, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gj = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5445, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.bi ], [ %i.gi, %bb.bh ] ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.bj:                                            ; preds = %.thread55.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5446
  call fastcc void @_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionjEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.k, ptr nonnull align 8 dereferenceable(56) %i.u) #35, !noalias !5445
  %i.gk = load i64, ptr %i.k, align 8, !range !32, !noalias !5446, !noundef !14 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 2
  br i1 %i.gl, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %.thread55.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5446
  store ptr @174, ptr %i.i, align 8, !noalias !5447
  %i.gm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 12, ptr %i.gm, align 8, !noalias !5447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5447
  store ptr %i.i, ptr %i.h, align 8, !noalias !5447
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5447
  %i.gn = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.h) #30, !noalias !5445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5446
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.go = load ptr, ptr %i.ak, align 8, !noalias !5446, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5446
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.gp = load i64, ptr %i.ak, align 8, !noalias !5446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5446
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ct, %bb.bm, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ], [ %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ct ], [ 1, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gp, %bb.bm ], [ %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ct ], [ %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %bb.bm ], [ %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ct ], [ %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5441 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.bn:                                            ; preds = %.thread60.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5448 ; 2 uses
  %.not.i.i33.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i33.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo, label %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.gs = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5448 ; 2 uses
  %i.gt = extractvalue { i64, ptr } %i.gs, 0
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.gv = extractvalue { i64, ptr } %i.gs, 1
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.gw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5449 ; 2 uses
  %.not.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5450
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i8 noundef 9) #30, !noalias !5449
  %i.gx = load i32, ptr %i.ah, align 8, !range !52, !noalias !5450, !noundef !14 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, -1
  br i1 %i.gy, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.gz = load ptr, ptr %i.g, align 8, !noalias !5450, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5450
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ha = load i64, ptr %i.g, align 8, !noalias !5450, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5450
  switch i32 %i.gx, label %bb.bu [
    i32 123, label %bb.bv
    i32 34, label %bb.cj
    i32 39, label %bb.cj
  ]

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.hb = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer6err_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, i64 noundef %i.ha, i8 noundef 22) #30, !noalias !5449
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.hc = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5449 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5451
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5452
  %i.hd = load i64, ptr %i.aj, align 8, !range !51, !noalias !5451, !noundef !14 ; 4 uses
  %i.he = icmp eq i64 %i.hd, -2
  br i1 %i.he, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.hf = load ptr, ptr %i.f, align 8, !noalias !5451, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5451
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !5451
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5451, !nonnull !14, !noundef !14 ; 11 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5451 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5451
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cb [
    i64 13, label %bb.bz
    i64 12, label %bb.ca
  ], !prof !5453

bb.bz:                                            ; preds = %bb.by
  %i.hg = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.hh = xor i64 %i.hg, 8385532547453315443
  %i.hi = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  %i.hj = load i64, ptr %i.hi, align 1
  %i.hk = xor i64 %i.hj, 7233174018586861413
  %i.hl = or i64 %i.hh, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.hp = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.hq = xor i64 %i.hp, 7526745783772411245
  %i.hr = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hs = load i32, ptr %i.hr, align 1
  %i.ht = zext i32 %i.hs to i64
  %i.hu = xor i64 %i.ht, 1684104562
  %i.hv = or i64 %i.hq, %i.hu
  %i.hw = icmp ne i64 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cb, !prof !20

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.hz = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @172, i64 noundef 2) #30, !noalias !5454
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sroa.109.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %bb.cb ], [ undef, %bb.bz ], [ undef, %bb.ca ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.cb ], [ 0, %bb.bz ], [ 1, %bb.ca ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.cb ], [ false, %bb.bz ], [ false, %bb.ca ]
  %i.ia = icmp eq i64 %i.hd, 0
  br i1 %i.ia, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5455
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.bx
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 13, label %bb.ce
    i64 12, label %bb.cf
  ], !prof !5453

bb.ce:                                            ; preds = %bb.cd
  %i.ib = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ic = xor i64 %i.ib, 8385532547453315443
  %i.id = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  %i.ie = load i64, ptr %i.id, align 1
  %i.if = xor i64 %i.ie, 7233174018586861413
  %i.ig = or i64 %i.ic, %i.if
  %i.ih = icmp ne i64 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.cg, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ik = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.il = xor i64 %i.ik, 7526745783772411245
  %i.im = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.in = load i32, ptr %i.im, align 1
  %i.io = zext i32 %i.in to i64
  %i.ip = xor i64 %i.io, 1684104562
  %i.iq = or i64 %i.il, %i.ip
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.cg, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.iu = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @172, i64 noundef 2) #30, !noalias !5456
  br label %.loopexit76.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cc, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit76.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, label %bb.cg

.loopexit76.i.i.i.i.i.i.i.loopexit.i.i.i.i.i:     ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit76.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit76.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.loopexit76.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.109.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iu, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.109.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit76.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.109.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.iv = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.109.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !5452
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf, %bb.ce
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ce ], [ 1, %bb.cf ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5457 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ch, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.ix = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !5457 ; 2 uses
  %i.iy = extractvalue { i64, ptr } %i.ix, 0
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %bb.ci, label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.ja = extractvalue { i64, ptr } %i.ix, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %i.jb = call noundef align 8 ptr @_RNvXs5_NtCseuwcdgGPBeX_5json52deNtB5_13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5458 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit77.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %bb.cg
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %bb.ci, %.loopexit76.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bw
  %.sroa.87.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %.loopexit76.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hf, %bb.bw ], [ %i.ja, %bb.ci ], [ %i.iw, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.87.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit77.i.i.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5459
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5460
  %i.jc = load i64, ptr %i.ai, align 8, !range !51, !noalias !5459, !noundef !14 ; 4 uses
  %i.jd = icmp eq i64 %i.jc, -2
  br i1 %i.jd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.je = load ptr, ptr %i.e, align 8, !noalias !5459, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5459
  br label %bb.cu

bb.cl:                                            ; preds = %bb.cj
  %.sroa.02.0.copyload.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !5459
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5459, !nonnull !14, !noundef !14 ; 11 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5459 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5459
  %.not.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jc, -1
  br i1 %.not.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp [
    i64 13, label %bb.cn
    i64 12, label %bb.co
  ], !prof !5453

bb.cn:                                            ; preds = %bb.cm
  %i.jf = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.jg = xor i64 %i.jf, 8385532547453315443
  %i.jh = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  %i.ji = load i64, ptr %i.jh, align 1
  %i.jj = xor i64 %i.ji, 7233174018586861413
  %i.jk = or i64 %i.jg, %i.jj
  %i.jl = icmp ne i64 %i.jk, 0
  %i.jm = zext i1 %i.jl to i32
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.jo = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.jp = xor i64 %i.jo, 7526745783772411245
  %i.jq = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jr = load i32, ptr %i.jq, align 1
  %i.js = zext i32 %i.jr to i64
  %i.jt = xor i64 %i.js, 1684104562
  %i.ju = or i64 %i.jp, %i.jt
  %i.jv = icmp ne i64 %i.ju, 0
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, !prof !20

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %i.jy = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @172, i64 noundef 2) #30, !noalias !5461
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %bb.cn
  %.sroa.109.1.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jy, %bb.cp ], [ undef, %bb.cn ], [ undef, %bb.co ]
  %cond.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ undef, %bb.cp ], [ true, %bb.cn ], [ false, %bb.co ]
  %.sink.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.cp ], [ false, %bb.cn ], [ false, %bb.co ]
  %i.jz = icmp eq i64 %i.jc, 0
  br i1 %i.jz, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5462
  br label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cl
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 13, label %bb.cs
    i64 12, label %bb.ct
  ], !prof !5453

bb.cs:                                            ; preds = %bb.cr
  %i.ka = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.kb = xor i64 %i.ka, 8385532547453315443
  %i.kc = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  %i.kd = load i64, ptr %i.kc, align 1
  %i.ke = xor i64 %i.kd, 7233174018586861413
  %i.kf = or i64 %i.kb, %i.ke
  %i.kg = icmp ne i64 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.kj = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.kk = xor i64 %i.kj, 7526745783772411245
  %i.kl = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.km = load i32, ptr %i.kl, align 1
  %i.kn = zext i32 %i.km to i64
  %i.ko = xor i64 %i.kn, 1684104562
  %i.kp = or i64 %i.kk, %i.ko
  %i.kq = icmp ne i64 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !20

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs, %bb.cr
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.kt = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @172, i64 noundef 2) #30, !noalias !5463
  br label %.loopexit75.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cq, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB8_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sink.i.i.i.i.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit75.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit75.i.i.i.i.i.i.i.loopexit.i.i.i.i.i:     ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit75.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit75.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.loopexit75.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.109.019.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kt, %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.thread15.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.109.1.i.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit75.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.109.019.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.ku = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.109.019.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !5460
  br label %bb.cu

_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1f_7Visitor12visit_stringNtNtCseuwcdgGPBeX_5json55error5ErrorEBc_.exit.i.i.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %cond.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.thread14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de17UnitVariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1L_11RuntimeModeNtBP_11Deserialize11deserialize7___FieldEB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit77.i.i.i.i.i.i.i.loopexit.i.i.i.i.i:     ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit77.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit77.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.loopexit77.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.87.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jb, %.loopexit77.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ]
  %i.kv = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ha) #30, !noalias !5449
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de13VariantAccessNtNtCs2d6kDCn68sB_10serde_core2de10EnumAccess7variantNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtB1H_11RuntimeModeNtBL_11Deserialize11deserialize7___FieldEB1J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.kw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !5449 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config11RuntimeModeEB1B_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i

bb.cu:                                            ; preds = %.loopexit75.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ck
  %.sroa.56.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ku, %.loopexit75.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.je, %bb.ck ]
  %i.kx = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.56.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ha) #30, !noalias !5449
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %.thread60.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5446
  store ptr @175, ptr %i.d, align 8, !noalias !5464
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.ky, align 8, !noalias !5464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5464
  store ptr %i.d, ptr %i.c, align 8, !noalias !5464
  %.sroa.42.0..sroa_idx.i36.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i36.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5464
  %i.kz = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.c) #30, !noalias !5445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5446
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i:       ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq, %bb.bn
  %.sroa.842.0.ph.i.i.i.i.i.i.i.ph.i.i.i.i.i = phi ptr [ %i.gr, %bb.bn ], [ %i.gw, %bb.bq ], [ %i.kw, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBb_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1g_7Visitor10visit_enumNtNtCseuwcdgGPBeX_5json52de13VariantAccessEBd_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %bb.cu, %.loopexit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu, %bb.bs, %bb.bp
  %.sroa.842.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %bb.bp ], [ %i.kv, %.loopexit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hb, %bb.bu ], [ %i.gz, %bb.bs ], [ %i.kx, %bb.cu ], [ %.sroa.842.0.ph.i.i.i.i.i.i.i.ph.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.842.0.ph.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.thread64.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.ph.in.i.i.i.i.i.i.ph.i.i.i.i.i = phi ptr [ %i.ge, %.thread64.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cv, %bb.bl, %bb.bk, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.ph.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kz, %bb.cv ], [ %.sroa.842.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.bk ], [ %i.go, %bb.bl ], [ %.sroa.939.0.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtB1B_13RuntimeConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.ph.in.i.i.i.i.i.i.ph.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ]
  %.in584.i.i.i.i.i = extractvalue { i64, ptr } %i.eg, 1
  %i.la = ptrtoint ptr %.in584.i.i.i.i.i to i64
  %i.lb = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.9.0.ph.in.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.la) #30, !noalias !5440
  %.pre.pre.i.i.i.i.i = load i64, ptr %i.r, align 8, !range !24, !alias.scope !5465, !noalias !5424
  br label %.loopexit.i.i.i.i.i

bb.cw:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.not26.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %.sroa.021.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 %.sroa.011.0188.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.20.16.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.021.0.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.5.0189.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lc = inttoptr i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i to ptr
  %spec.select.i.i.i.i.i = select i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.04.0190.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config13RuntimeConfigEB1B_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %.thread105.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5424
  store ptr @145, ptr %i.b, align 8, !noalias !5466
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 7, ptr %i.ld, align 8, !noalias !5466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5466
  store ptr %i.b, ptr %i.a, align 8, !noalias !5466
  %.sroa.42.0..sroa_idx.i82.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i82.i.i.i.i.i, align 8, !noalias !5466
  %i.le = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.a) #30, !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5424
  br label %bb.cy

.loopexit.split.loop.exit.i.i.i.i.i:              ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit.i.i.i.i.i

.loopexit.split.loop.exit458.i.i.i.i.i:           ; preds = %bb.aj
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit.i.i.i.i.i

.loopexit.split.loop.exit460.i.i.i.i.i:           ; preds = %bb.an
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  %i.lf = extractvalue { i64, ptr } %i.eg, 1
  br label %.loopexit.i.i.i.i.i

.loopexit.split.loop.exit462.i.i.i.i.i:           ; preds = %bb.am
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.split.loop.exit462.i.i.i.i.i, %.loopexit.split.loop.exit460.i.i.i.i.i, %.loopexit.split.loop.exit458.i.i.i.i.i, %.loopexit.split.loop.exit.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %.pre.i.i.i.i.i = phi i64 [ %i.an, %bb.al ], [ %.pre.pre.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %.loopexit.split.loop.exit460.i.i.i.i.i ], [ %i.an, %.loopexit.split.loop.exit458.i.i.i.i.i ], [ %i.an, %.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.an, %.loopexit.split.loop.exit462.i.i.i.i.i ]
  %.sroa.10.0.ph.i.i.i.i.i = phi ptr [ %i.ee, %bb.al ], [ %i.lb, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lf, %.loopexit.split.loop.exit460.i.i.i.i.i ], [ %i.ea, %.loopexit.split.loop.exit458.i.i.i.i.i ], [ %i.gd, %.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.ef, %.loopexit.split.loop.exit462.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.ph.i.i.i.i.i) ]
  br label %bb.cy

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %.thread109.i.i.i.i.i
  %.sroa.0.0.i.i115.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.cv, %.thread109.i.i.i.i.i ]
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5424
  store i64 %i.an, ptr %i.r, align 8, !noalias !5424
  br label %bb.cy

bb.cy:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.cx, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.le, %bb.cx ], [ %.sroa.10.0.ph.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %.sroa.0.0.i.i115.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i ], [ %.sroa.988.0.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i ] ; 2 uses
  %i.lg = phi i64 [ %i.an, %bb.cx ], [ %.pre.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %i.an, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i ], [ %i.cr, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB1B_6ConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5465)
  %i.lh = icmp eq i64 %i.lg, -1
  br i1 %i.lh, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread1069.i.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sink.i.i.i.i.i, %bb.cy ], [ %i.dw, %.thread1069.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5467)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.r) #30, !noalias !5431
  %i.li = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val.i.i83.i.i.i.i.i = load i64, ptr %i.li, align 8, !range !24, !alias.scope !5468, !noalias !5424, !noundef !14 ; 2 uses
  %i.lj = icmp sgt i64 %.val.i.i83.i.i.i.i.i, 0
  br i1 %i.lj, label %bb.da, label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val1.i.i84.i.i.i.i.i = load ptr, ptr %i.lk, align 8, !alias.scope !5468, !noalias !5424, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i84.i.i.i.i.i, i64 noundef %.val.i.i83.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5469
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i

bb.db:                                            ; preds = %_RNvXs8_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_6ConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !5423
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cu) #30, !noalias !5431
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i

bb.dc:                                            ; preds = %_RNvXs8_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_6ConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false), !noalias !5423
  br label %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy, %.thread1068.i.i.i.i.i
  %.sroa.7.1.ph.i.i.i.i = phi ptr [ %.sroa.1290.2118.i.i.i.i.i, %.thread1068.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.cz ], [ %.sroa.7.0.i.i.i.i, %bb.da ], [ %.sink.i.i.i.i.i, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5424
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.ph.i.i.i.i) ]
  %i.ll = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 %.sroa.7.1.ph.i.i.i.i, i64 noundef %i.ac) #30, !noalias !5422
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i

_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5424
  store i64 %.sroa.038.0.i.i.i.i.i, ptr %i.s, align 8, !noalias !5423
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.642.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5423
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 %.sroa.849.0.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !5423
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.17.i.i.i.i, i64 56, i1 false), !noalias !5423
  %i.lm = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30, !noalias !5422 ; 3 uses
  %.not20.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not20.i.i.i.i, label %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5470)
  call void @llvm.experimental.noalias.scope.decl(metadata !5471)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i.i) #30, !noalias !5422
  %i.ln = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.val.i.i.i.i.i.i = load i64, ptr %i.ln, align 8, !range !24, !alias.scope !5472, !noalias !5423, !noundef !14 ; 2 uses
  %i.lo = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.lo, label %bb.de, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.lp = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.lp, align 8, !alias.scope !5472, !noalias !5423, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5473
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i: ; preds = %bb.de, %bb.dd, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i
  %.sroa.10.0.i = phi ptr [ %i.lm, %bb.de ], [ %i.lm, %bb.dd ], [ %i.ll, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5423
  br label %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.thread.i

_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i, %bb.b, %bb.a
  %.sroa.10.1.ph.i = phi ptr [ %i.ab, %bb.b ], [ %.sroa.10.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBF_.exit.i.i.i.i ], [ %i.y, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.ph.i) ]
  br label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread

_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.i: ; preds = %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBb_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.513.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !5421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5423
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i.i.i)
  store i64 %.sroa.038.0.i.i.i.i.i, ptr %i.t, align 8, !noalias !5421
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.642.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5421
  %i.lq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5474 ; 3 uses
  %.not.i = icmp eq ptr %i.lq, null
  br i1 %.not.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5475)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !5476)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.lr) #30, !noalias !5474
  %i.ls = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val.i.i.i = load i64, ptr %i.ls, align 8, !range !24, !alias.scope !5477, !noalias !5421, !noundef !14 ; 2 uses
  %i.lt = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.lt, label %bb.dg, label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread

bb.dg:                                            ; preds = %bb.df
  %i.lu = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.val1.i.i.i = load ptr, ptr %i.lu, align 8, !alias.scope !5477, !noalias !5421, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5478
  br label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread

bb.dh:                                            ; preds = %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.i
  %i.lv = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u) #30, !noalias !5474 ; 2 uses
  %i.lw = extractvalue { i64, i32 } %i.lv, 1
  %.not23.i = icmp eq i32 %i.lw, -1
  br i1 %.not23.i, label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lx = extractvalue { i64, i32 } %i.lv, 0
  %i.ly = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer6err_at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, i64 noundef %i.lx, i8 noundef 30) #30, !noalias !5474 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5479)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.lz) #30, !noalias !5474
  %i.ma = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.val.i.i24.i = load i64, ptr %i.ma, align 8, !range !24, !alias.scope !5481, !noalias !5421, !noundef !14 ; 2 uses
  %i.mb = icmp sgt i64 %.val.i.i24.i, 0
  br i1 %i.mb, label %bb.dj, label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread

bb.dj:                                            ; preds = %bb.di
  %i.mc = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.val1.i.i25.i = load ptr, ptr %i.mc, align 8, !alias.scope !5481, !noalias !5421, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25.i, i64 noundef %.val.i.i24.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !5482
  br label %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread

_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread: ; preds = %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.thread.i, %bb.dj, %bb.di, %bb.dg, %bb.df
  %.sroa.8.0.ph = phi ptr [ %i.lq, %bb.df ], [ %i.lq, %bb.dg ], [ %i.ly, %bb.di ], [ %i.ly, %bb.dj ], [ %.sroa.10.1.ph.i, %_RINvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtB5_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerEB7_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5421
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.md, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0.ph, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.dk

_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit: ; preds = %bb.dh
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5421
  store i64 %.sroa.038.0.i.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.642.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit, %_RINvNtCseuwcdgGPBeX_5json52de8from_strNtNtCsat9HgdBb3qc_16shadowsocks_rust6config6ConfigEBE_.exit.thread
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCslDQ48jUgq5Q_12clap_builder5errorNtB2_5Error12invalid_utf8Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5485
  %i.b = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !5485 ; 46 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17
end_hunk_4
begin_hunk_5_@_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char:bb.a
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !11963
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !11963
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !11963
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !11963
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !11963
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !11963
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !11963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !11963
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !11963
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !11963
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !11963
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11973)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !11974, !noalias !11975, !noundef !14 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !16, !alias.scope !11974, !noalias !11975, !noundef !14
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #30, !noalias !11975
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !11976, !noalias !11975, !noundef !14 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !11976, !noalias !11975, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !11976
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !11976, !noalias !11975
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs2d6kDCn68sB_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs2d6kDCn68sB_10serde_core2deNtNvXs1c_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs1c_NtNtCs2d6kDCn68sB_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs2d6kDCn68sB_10serde_core2deNtNvXsR_NtB4_5implslNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsR_NtNtCs2d6kDCn68sB_10serde_core2de5implslNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !align !27, !noundef !14
  %i.g = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @306, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.a = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #30 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.d, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvXs_NtCsfS4ZeCxwza6_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtCsJovr8ELaM0_3log14SetLoggerErrorE4fromCsat9HgdBb3qc_16shadowsocks_rust() unnamed_addr #1 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = call noundef align 8 ptr @_RNvNtCsfS4ZeCxwza6_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @104) #30
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCsfS4ZeCxwza6_6anyhow5errorNtB5_5Error9constructNtCsJovr8ELaM0_3log14SetLoggerErrorECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b) #30
  ret ptr %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCsat9HgdBb3qc_16shadowsocks_rust7logging7tracingNtNtB8_6config22LogConsoleWriterConfigNtB4_9MakeLayer10make_layer(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.038.i = alloca [1784 x i8], align 8      ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !13, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = trunc nuw i32 %i.b to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.e, align 4
  %.val7 = load i32, ptr %i.c, align 8
  %.sroa.02.0 = select i1 %i.d, i32 %.val, i32 %.val7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !28, !noundef !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.i = load i8, ptr %i.h, align 4, !range !19, !noundef !14
  %.not = icmp eq i8 %i.g, 2
  %.sroa.05.0 = select i1 %.not, i8 %i.i, i8 %i.g
  %i.j = tail call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout() #30 ; 0 uses
  %i.k = tail call noundef i32 @isatty(i32 noundef 1) #30
  %.not8 = icmp eq i32 %i.k, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11997
  call void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @706, i64 noundef 8) #30, !noalias !11997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11998)
  %i.l = load i64, ptr %i.a, align 8, !range !31, !alias.scope !11998, !noalias !11997, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !11998, !noalias !11997 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !11998, !noalias !11997 ; 2 uses
  %i.o = icmp sgt i64 %.sroa.55.0.copyload.i.i.i, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %.sroa.03.0.copyload.i.i.i, 0
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !11998, !noalias !11997, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0.copyload.i.i.i, i64 noundef %.sroa.03.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11999
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = icmp eq i64 %.sroa.55.0.copyload.i.i.i, 0
  %i.r = zext i1 %i.q to i8
  br label %_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12000)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.i = load i64, ptr %i.s, align 8, !range !24, !alias.scope !12001, !noalias !11997, !noundef !14 ; 2 uses
  %i.t = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i.i.i.i, label %_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i.i.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !12001, !noalias !11997, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !12002
  br label %_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i.i.i.i, %bb.e, %bb.d
  %.sroa.0.07.i.i.i = phi i8 [ %i.r, %bb.d ], [ 1, %bb.e ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11997
  %spec.select.i = select i1 %.not8, i8 0, i8 %.sroa.0.07.i.i.i ; 2 uses
  %.not.i = icmp ne i32 %.sroa.02.0, 0
  %i.v = icmp ugt i32 %.sroa.02.0, 2
  %spec.select17.i = zext i1 %i.v to i8           ; 4 uses
  %.sroa.8.0.i = zext i1 %.not.i to i8            ; 6 uses
  %i.w = trunc nuw i8 %.sroa.05.0 to i1
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.x = tail call i32 @_RNvMs6_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crateINtB5_10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339E14local_rfc_3339() #30, !noalias !12003 ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !12004
  %i.y = tail call noundef dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !12004 ; 16 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 16) #34, !noalias !12004
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.f
  %i.aa = trunc i32 %i.x to i1
  %.sroa.413.0.extract.shift.i = lshr i32 %i.x, 8
  %.sroa.413.0.extract.trunc.i = trunc nuw i32 %.sroa.413.0.extract.shift.i to i24
  %.sroa.014.0.i = select i1 %i.aa, i24 0, i24 %.sroa.413.0.extract.trunc.i
  store i8 1, ptr %i.y, align 1, !noalias !12003
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %.sroa.8.0.i, ptr %.sroa.425.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 1, ptr %.sroa.526.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store i8 %.sroa.8.0.i, ptr %.sroa.627.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i8 %.sroa.8.0.i, ptr %.sroa.728.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  store i8 %spec.select17.i, ptr %.sroa.829.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.930.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  store i8 %spec.select17.i, ptr %.sroa.930.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1031.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  store i8 2, ptr %.sroa.1031.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i24 %.sroa.014.0.i, ptr %.sroa.1132.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  store i8 1, ptr %.sroa.1233.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 0, ptr %.sroa.1334.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  store i8 %spec.select.i, ptr %.sroa.1435.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  store i8 1, ptr %.sroa.1536.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 15
  store i8 0, ptr %.sroa.1637.0..sroa_idx.i, align 1, !noalias !12003
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs3_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !12005
  %i.ab = tail call noundef dereferenceable_or_null(13) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 13, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !12005 ; 15 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit25.i, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 13) #34, !noalias !12005
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit25.i: ; preds = %bb.h
  store i8 0, ptr %i.ab, align 1, !noalias !12003
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.8.0.i, ptr %.sroa.417.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 %.sroa.8.0.i, ptr %.sroa.718.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 %spec.select17.i, ptr %.sroa.819.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 %spec.select17.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1020.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store i8 2, ptr %.sroa.1020.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  store i8 0, ptr %.sroa.1221.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  store i8 %spec.select.i, ptr %.sroa.1322.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.1423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  store i8 1, ptr %.sroa.1423.0..sroa_idx.i, align 1, !noalias !12003
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !12003
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit25.i, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.3.0.i = phi ptr [ @122, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit25.i ], [ @121, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.ab, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit25.i ], [ %i.y, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.038.i), !noalias !12003
  call fastcc void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7logging7tracing15make_env_filter(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1784) %.sroa.038.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %.sroa.02.0) #30
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !12006
  %i.ad = tail call noundef align 8 dereferenceable_or_null(1808) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1808, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !12006 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %_RINvNtNtCsat9HgdBb3qc_16shadowsocks_rust7logging7tracing14make_fmt_layerNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEB6_.exit, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1808) #34, !noalias !12006
  unreachable

_RINvNtNtCsat9HgdBb3qc_16shadowsocks_rust7logging7tracing14make_fmt_layerNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEB6_.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %i.ad, ptr noundef nonnull align 8 dereferenceable(1784) %.sroa.038.i, i64 1784, i1 false)
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1784
  store ptr %.sroa.0.0.i, ptr %.sroa.439.0..sroa_idx.i, align 8
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1792
  store ptr %.sroa.3.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1800
  store i64 -1, ptr %.sroa.641.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.038.i), !noalias !12003
  %i.af = insertvalue { ptr, ptr } poison, ptr %i.ad, 0
  %i.ag = insertvalue { ptr, ptr } %i.af, ptr @118, 1
  ret { ptr, ptr } %i.ag
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_NtNtCsf3Ta7LF998c_4core2io5implsQINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB6_5write5WriteEL_EB1b_14write_vectoredCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !14, !align !27, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !14, !noalias !12010, !nonnull !14
  %i.e = tail call { i64, ptr } %i.d(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) #35, !inline_history !12009
  ret { i64, ptr } %i.e
}

end_hunk_5
begin_hunk_6_@_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write18write_all_vectoredCsat9HgdBb3qc_16shadowsocks_rust:bb.a

bb.o:                                             ; preds = %.split25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15947
  %i.bm = getelementptr i8, ptr %i.s, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  store ptr %i.bm, ptr %i.p, align 8, !alias.scope !15948, !noalias !15947
  store i8 3, ptr %i.a, align 8, !alias.scope !15948, !noalias !15947
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #30, !noalias !15947
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.thread.thread, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15947
  br label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.023 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.115, %bb.j ] ; 3 uses
  %.sroa.6.022 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.113, %bb.j ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.023, i64 noundef %.sroa.6.022) #30 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 12 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !29

default.unreachable:                              ; preds = %bb.c
  unreachable

.split:                                           ; preds = %bb.c
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !14, !noundef !14
  %i.o = call noundef zeroext i1 %i.n(i32 noundef %i.k) #30, !inline_history !8
  br i1 %i.o, label %.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split10:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !30, !noundef !14
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split9:                                          ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.f, i64 31
  %i.t = load i8, ptr %i.s, align 8, !range !30, !noundef !14
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %bb.i, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.c
  %i.v = lshr i64 %i.g, 32
  %i.w = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.v to i8
  %spec.select.i.i.i = select i1 %i.w, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.x = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.y, label %bb.h, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %.sroa.6.022, %i.g
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.022, i64 noundef %.sroa.6.022, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @893) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = sub nuw nsw i64 %.sroa.6.022, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 %i.g
  br label %bb.j

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.j, %bb.d, %.split10, %.split9, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @892, %bb.d ], [ %i.f, %.split10 ], [ %i.f, %.split9 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.j ]
  ret ptr %.sroa.07.1

.thread:                                          ; preds = %.split10, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15953
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.h:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15953
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.i:                                             ; preds = %.split9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15953
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !15954, !noalias !15953
  store i8 3, ptr %i.a, align 8, !alias.scope !15954, !noalias !15953
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #30, !noalias !15953
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15953
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.0.115 = phi ptr [ %.sroa.0.023, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.ac, %bb.g ]
  %.sroa.6.113 = phi i64 [ %.sroa.6.022, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.113, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15961
  store ptr %0, ptr %i.b, align 8, !noalias !15961
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !15961
  %i.d = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @134, ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  %i.e = load ptr, ptr %i.c, align 8, !noalias !15961, !noundef !14 ; 5 uses
  %.not.i5 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i5, label %bb.g, label %_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !23

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i5, label %_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15962
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.f
  ], !prof !29

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !15963, !noalias !15962
  store i8 3, ptr %i.a, align 8, !alias.scope !15963, !noalias !15962
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #30, !noalias !15964
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15962
  br label %_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.g:                                             ; preds = %bb.b
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @131, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #37
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15961
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCseuwcdgGPBeX_5json55error5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error15unknown_variantCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 2, 4) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCs2d6kDCn68sB_10serde_core2deNtB5_5OneOfNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.g = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @898, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsat9HgdBb3qc_16shadowsocks_rust.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @748, ptr noundef nonnull %1, ptr noundef nonnull %2) #30, !inline_history !15965
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @886, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @899, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @886, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @900, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit10record_f64Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store double %2, ptr %i.a, align 8
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @901) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit10record_i64Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @902) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit10record_u64Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit11record_boolCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 1
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @903) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit11record_i128Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @904) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit11record_u128Csat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i128 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  store i128 %2, ptr %i.a, align 16
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @905) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6format14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_bytesCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @_RNvXsb_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB5_14DefaultVisitorNtNtCs1kwRxRulhfk_12tracing_core5field5Visit12record_debug(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @906) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.023 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.115, %bb.j ] ; 3 uses
  %.sroa.6.022 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.113, %bb.j ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsq_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writerNtB5_12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.023, i64 noundef %.sroa.6.022) #30 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 12 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split10
    i64 1, label %.split9
  ], !prof !29

default.unreachable:                              ; preds = %bb.c
  unreachable

.split:                                           ; preds = %bb.c
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #30
end_hunk_6
