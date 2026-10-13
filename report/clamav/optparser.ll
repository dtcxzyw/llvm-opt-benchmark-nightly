Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/optparser?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0
@.str.731 = private unnamed_addr constant [688 x i8] c"This option affects the behaviour of LogInfected, LogClean and VirusAction\0Awhen a message with multiple recipients is scanned:\0AIf SupportMultipleRecipients is off (the default)\0Athen one single log entry is generated for the message and, in case the\0Amessage is determined to be malicious, the command indicated by VirusAction\0Ais executed just once. In both cases only the last recipient is reported.\0AIf SupportMultipleRecipients is on:\0Athen one line is logged for each recipient and the command indicated\0Aby VirusAction is also executed once for each recipient.\0A\0ANote: although it's probably a good idea to enable this option, the default value\0Ais currently set to off for legacy reasons.\00", align 1
@__clam_options = constant [357 x { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr }] [{ ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str, i8 104, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1023, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.3, i8 99, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr @.str.4, i32 2, i32 657, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.3, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr @.str.5, i32 2, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.3, i8 99, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr @.str.6, i32 2, i32 4, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.7, i8 86, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1023, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.8, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 299, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.9, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 41, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.10, i8 118, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 570, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.11, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.12, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.13, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 570, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.14, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 40, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.15, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.16, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.17, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 570, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.18, i8 100, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.19, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.20, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.21, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.22, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 16, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.23, i8 109, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 528, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.24, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 528, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.25, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 528, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.26, i8 122, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 536, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.27, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 8, ptr @.str.28, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.29, i8 100, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.30, i32 3, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.31, i8 114, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.32, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.33, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.34, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 1, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.36, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 1, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.37, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.38, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 24, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.39, i8 102, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 24, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.40, i8 105, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 536, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.41, i8 112, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 528, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.42, i8 119, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 528, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.43, i8 111, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.44, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 536, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.45, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 536, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.46, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 536, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.47, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.48, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.49, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.50, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.51, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.52, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.53, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.54, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.55, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.56, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.57, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.58, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.59, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.60, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.61, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.62, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.63, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.64, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.65, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.66, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.67, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.68, i8 98, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.69, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.70, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.71, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.72, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.73, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.74, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 3000, ptr null, i32 0, i32 32, ptr @.str.75, ptr @.str.76 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.77, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 233, ptr null, i32 0, i32 32, ptr @.str.78, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.79, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 32, ptr @.str.80, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.81, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.82, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.83, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.84, i8 117, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.85, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.86, i8 105, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.87, i8 108, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.30, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.88, i8 102, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.30, i32 2, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.89, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.90, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.91, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.92, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.93, i8 100, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.94, i8 99, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.95, i8 114, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.96, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.97, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.98, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.99, i8 100, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 128, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.100, i8 99, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr @.str.101, i32 2, i32 64, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.102, i8 110, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 64, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.103, i8 103, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 64, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.104, i8 102, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 256, ptr @.str.105, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.106, i8 116, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 256, ptr @.str.107, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.86, i8 105, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 256, ptr @.str.108, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.109, i8 112, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 256, ptr @.str.110, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.111, i8 99, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 256, ptr @.str.112, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.113, i8 114, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 256, ptr @.str.114, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.115, i8 84, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 7, ptr null, i32 0, i32 256, ptr @.str.116, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.117, i8 115, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 256, ptr @.str.118, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.119, i8 97, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 8, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.120, i8 116, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.121, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr null, i32 0, i32 1026, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.122, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr null, i32 0, i32 1026, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.123, i8 0, [3 x i8] zeroinitializer, i32 4, ptr null, i64 0, ptr null, i32 0, i32 1026, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.124, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.125, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1048, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.126, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.127, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.128, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.129, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.130, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.131, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.132, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.133, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.134, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.135, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.136, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.137, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.138, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.139, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 0, ptr null, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.141, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.143, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.144, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.145, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.146, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.147, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.148, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.149, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.150, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.142, i32 0, i32 1032, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.151, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 32, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.152, ptr @.str.153, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.154, ptr @.str.155, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 65536, ptr null, i32 0, i32 9, ptr @.str.156, ptr @.str.157 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.158, ptr @.str.159, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.160, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.161, ptr @.str.162, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1, ptr @.str.163, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.164, ptr @.str.165, i8 108, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 541, ptr @.str.166, ptr @.str.167 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.168, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 5, ptr @.str.169, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.171, ptr null, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 1048576, ptr null, i32 0, i32 7, ptr @.str.172, ptr @.str.173 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.174, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 7, ptr @.str.175, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.176, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.177, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.178, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 7, ptr @.str.179, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.180, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.181, i32 2, i32 7, ptr @.str.182, ptr @.str.183 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.184, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 7, ptr @.str.185, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.186, ptr @.str.187, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 7, ptr @.str.188, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.189, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.190, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.191, ptr @.str.192, i8 112, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 7, ptr @.str.193, ptr @.str.194 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.195, ptr @.str.196, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 45, ptr @.str.197, ptr @.str.198 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.199, ptr @.str.200, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.30, i32 0, i32 35, ptr @.str.201, ptr @.str.202 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.203, ptr @.str.204, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 43, ptr @.str.205, ptr @.str.206 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.207, ptr @.str.208, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.209, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.211, ptr @.str.212, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 9, ptr @.str.213, ptr @.str.214 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.215, ptr @.str.216, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 0, ptr null, i32 0, i32 8, ptr @.str.217, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.218, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1, ptr @.str.219, ptr @.str.220 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.221, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1, ptr @.str.222, ptr @.str.223 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.224, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1, ptr @.str.225, ptr @.str.226 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.227, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 5, ptr @.str.228, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.229, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 1, ptr @.str.230, ptr @.str.231 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.232, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.233, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.234, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.235, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.236, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.237, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.238, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.239, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.240, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.241, ptr @.str.242 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.243, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 200, ptr null, i32 0, i32 1, ptr @.str.244, ptr @.str.245 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.246, ptr null, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 104857600, ptr null, i32 0, i32 1, ptr @.str.247, ptr @.str.248 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.249, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 1024, ptr null, i32 0, i32 1, ptr @.str.250, ptr @.str.251 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.252, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 2048, ptr null, i32 0, i32 1, ptr @.str.253, ptr @.str.254 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.255, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 10, ptr null, i32 0, i32 5, ptr @.str.256, ptr @.str.257 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.258, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 120, ptr null, i32 0, i32 1, ptr @.str.259, ptr @.str.260 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.261, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 30, ptr null, i32 0, i32 1, ptr @.str.262, ptr @.str.245 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.263, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 500, ptr null, i32 0, i32 1, ptr @.str.264, ptr @.str.265 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.258, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 120, ptr null, i32 0, i32 4, ptr @.str.266, ptr @.str.267 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.268, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 100, ptr null, i32 0, i32 1, ptr @.str.269, ptr @.str.265 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.270, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 30, ptr null, i32 0, i32 1, ptr @.str.271, ptr @.str.272 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.273, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.274, ptr @.str.275 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.276, ptr @.str.277, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 15, ptr null, i32 0, i32 9, ptr @.str.278, ptr @.str.279 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.280, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.281, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.282, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.283, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.284, ptr @.str.285, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.286, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.287, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 600, ptr null, i32 0, i32 1, ptr @.str.288, ptr @.str.289 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.290, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.291, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.292, ptr @.str.293, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.294, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.295, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1, ptr @.str.296, ptr @.str.297 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.298, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.299, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.300, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.301, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.302, ptr @.str.303, i8 70, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 519, ptr @.str.304, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.305, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 3, ptr @.str.306, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.307, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.308, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.309, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.310, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.311, ptr @.str.312, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.313, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.314, ptr @.str.315, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.316, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.317, ptr @.str.318, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.319, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.320, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 5, ptr @.str.321, ptr @.str.322 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.323, ptr @.str.324, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 555, ptr @.str.325, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.326, ptr @.str.327, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.328, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.329, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.330, i64 -1, ptr @.str.331, i32 0, i32 1, ptr @.str.332, ptr @.str.331 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.333, ptr @.str.334, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 10000, ptr null, i32 0, i32 9, ptr @.str.335, ptr @.str.336 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.337, ptr @.str.338, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.339, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.340, ptr @.str.341, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.342, i64 -1, ptr @.str.343, i32 2, i32 9, ptr @.str.344, ptr @.str.343 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.345, ptr @.str.346, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.347, i64 -1, ptr null, i32 1, i32 264, ptr @.str.348, ptr @.str.349 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.350, ptr @.str.351, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.352, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.353, ptr @.str.354, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 9, ptr @.str.355, ptr @.str.356 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.357, ptr @.str.358, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 9, ptr @.str.359, ptr @.str.360 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.361, ptr @.str.362, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.363, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.364, ptr @.str.365, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.366, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.367, ptr @.str.368, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.369, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.370, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.371, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.372, ptr @.str.373, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.374, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.375, ptr @.str.376, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.377, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.378, ptr @.str.379, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.380, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.381, ptr @.str.382, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.383, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.384, ptr @.str.385, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.386, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.387, ptr @.str.388, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 3, ptr null, i32 0, i32 9, ptr @.str.389, ptr @.str.390 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.391, ptr @.str.392, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 3, ptr null, i32 0, i32 9, ptr @.str.393, ptr @.str.390 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.394, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 1, ptr @.str.395, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.396, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.397, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.398, ptr @.str.399, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.400, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.401, ptr @.str.402, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.403, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.404, ptr @.str.405, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.406, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.407, ptr @.str.408, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.409, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.410, ptr @.str.411, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.412, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.413, ptr @.str.414, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.415, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.416, ptr @.str.417, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.418, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.419, ptr @.str.420, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.421, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.422, ptr @.str.423, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.424, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.425, ptr @.str.426, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.427, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.428, ptr @.str.429, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.430, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.431, ptr @.str.432, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.433, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.434, ptr @.str.435, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.436, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.437, ptr @.str.438, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.439, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.440, ptr @.str.441, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.442, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.443, ptr @.str.444, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.445, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.446, ptr @.str.447, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.448, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.449, ptr @.str.450, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.451, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.452, ptr @.str.453, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.454, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.455, ptr @.str.456, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.457, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.458, ptr @.str.459, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.460, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.461, ptr @.str.462, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 9, ptr @.str.463, ptr @.str.464 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.465, ptr @.str.466, i8 0, [3 x i8] zeroinitializer, i32 5, ptr @.str.140, i64 419430400, ptr null, i32 0, i32 9, ptr @.str.467, ptr @.str.468 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.469, ptr @.str.470, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 104857600, ptr null, i32 0, i32 13, ptr @.str.471, ptr @.str.248 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.472, ptr @.str.473, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 17, ptr null, i32 0, i32 9, ptr @.str.474, ptr @.str.475 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.476, ptr @.str.477, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 10000, ptr null, i32 0, i32 9, ptr @.str.478, ptr @.str.336 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.479, ptr @.str.480, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 41943040, ptr null, i32 0, i32 9, ptr @.str.481, ptr @.str.482 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.483, ptr @.str.484, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 41943040, ptr null, i32 0, i32 9, ptr @.str.485, ptr @.str.482 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.486, ptr @.str.487, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 8388608, ptr null, i32 0, i32 9, ptr @.str.488, ptr @.str.489 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.490, ptr @.str.491, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 20971520, ptr null, i32 0, i32 9, ptr @.str.492, ptr @.str.493 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.494, ptr @.str.495, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 1048576, ptr null, i32 0, i32 9, ptr @.str.496, ptr @.str.497 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.498, ptr @.str.499, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 50, ptr null, i32 0, i32 9, ptr @.str.500, ptr @.str.501 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.502, ptr @.str.503, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 100, ptr null, i32 0, i32 9, ptr @.str.504, ptr @.str.505 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.506, ptr @.str.507, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 16, ptr null, i32 0, i32 9, ptr @.str.508, ptr @.str.509 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.510, ptr @.str.511, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 100000, ptr null, i32 0, i32 9, ptr @.str.512, ptr @.str.513 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.514, ptr @.str.515, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 2000, ptr null, i32 0, i32 9, ptr @.str.516, ptr @.str.517 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.518, ptr @.str.519, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 104857600, ptr null, i32 0, i32 9, ptr @.str.520, ptr @.str.248 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.521, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.522, ptr @.str.523 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.524, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.525, ptr @.str.526 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.527, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.528, ptr @.str.529 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.530, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1, ptr @.str.531, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.532, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 1, i32 1, ptr @.str.533, ptr @.str.534 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.535, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 1, ptr @.str.536, ptr @.str.537 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.538, ptr null, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 5242880, ptr null, i32 0, i32 1, ptr @.str.539, ptr @.str.173 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.540, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.541, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.542, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.543, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.544, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.545, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.546, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 5000, ptr null, i32 0, i32 1, ptr @.str.547, ptr @.str.548 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.549, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 5, ptr null, i32 0, i32 1, ptr @.str.550, ptr @.str.551 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.552, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 1, ptr @.str.553, ptr @.str.554 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.555, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1, ptr @.str.556, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.557, i8 87, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 512, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr null, ptr @.str.558, i8 101, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 512, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.559, ptr @.str.560, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 4, i32 9, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.561, ptr @.str.562, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 4, i32 9, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.563, ptr @.str.564, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 4, i32 9, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.565, ptr @.str.566, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 4, i32 1, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.567, ptr @.str.165, i8 108, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.166, ptr @.str.568 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.569, ptr @.str.570, i8 117, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.322, i32 2, i32 2, ptr @.str.571, ptr @.str.322 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.572, ptr @.str.573, i8 99, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 12, ptr null, i32 0, i32 2, ptr @.str.574, ptr @.str.575 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.576, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.577, i32 2, i32 2, ptr @.str.578, ptr @.str.577 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.579, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.580, ptr @.str.581 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.582, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.583, ptr @.str.584 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.585, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 3, ptr null, i32 0, i32 2, ptr @.str.586, ptr @.str.390 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.587, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 2, ptr @.str.588, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.589, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 2, ptr @.str.590, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.591, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 2, ptr @.str.592, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.593, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.594, ptr @.str.595 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.596, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.597, ptr @.str.595 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.598, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 2, ptr @.str.599, ptr @.str.600 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.601, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.602, ptr @.str.603 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.604, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 2, ptr @.str.605, ptr @.str.606 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.607, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.608, ptr @.str.609 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.610, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.611, ptr @.str.612 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.613, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.614, ptr @.str.615 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.616, ptr @.str.617, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr @.str.4, i32 0, i32 2, ptr @.str.618, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.619, ptr @.str.620, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.621, ptr @.str.622 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.623, ptr @.str.624, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.625, ptr @.str.622 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.626, ptr @.str.627, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.628, ptr @.str.622 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.629, ptr @.str.630, i8 97, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 2, ptr @.str.631, ptr @.str.632 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.633, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 30, ptr null, i32 0, i32 2, ptr @.str.634, ptr @.str.245 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.635, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 60, ptr null, i32 0, i32 2, ptr @.str.636, ptr @.str.272 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.326, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 2, ptr @.str.637, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.638, ptr @.str.639, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.640, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.641, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1026, ptr @.str.642, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.643, ptr @.str.644, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 0, ptr null, i32 0, i32 1032, ptr @.str.645, ptr @.str.464 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.646, ptr @.str.647, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1033, ptr @.str.648, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.649, ptr @.str.650, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 1, ptr null, i32 0, i32 9, ptr @.str.651, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.652, ptr @.str.653, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.654, ptr @.str.655, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.656, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.657, ptr @.str.658, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.659, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.660, ptr @.str.661, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.662, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.663, ptr @.str.664, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.424, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.665, ptr @.str.666, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 9, ptr @.str.667, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.668, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr null, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.669, ptr null, i8 0, [3 x i8] zeroinitializer, i32 3, ptr null, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.670, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr null, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.671, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr null, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.672, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr null, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.673, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.674, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.675, ptr @.str.676, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1033, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.677, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 1031, ptr @.str.678, ptr @.str.210 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.679, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1025, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.680, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 4, ptr @.str.681, ptr @.str.682 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.683, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.684, ptr @.str.685 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.686, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.687, ptr @.str.223 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.688, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.689, ptr @.str.226 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.690, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 1, i32 4, ptr @.str.691, ptr @.str.692 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.693, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.694, i64 -1, ptr @.str.695, i32 0, i32 4, ptr @.str.696, ptr @.str.695 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.697, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.694, i64 -1, ptr @.str.698, i32 0, i32 4, ptr @.str.696, ptr @.str.698 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.699, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.700, i64 -1, ptr @.str.701, i32 0, i32 4, ptr @.str.702, ptr @.str.701 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.703, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.704, ptr @.str.705 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.706, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr @.str.707, i64 -1, ptr @.str.210, i32 0, i32 4, ptr @.str.708, ptr @.str.709 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.710, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.711, ptr @.str.712 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.713, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.714, ptr @.str.715 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.716, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.717, ptr @.str.718 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.719, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.720, ptr @.str.721 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.722, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.720, ptr @.str.721 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.723, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.724, ptr @.str.725 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.726, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.727, ptr @.str.728 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.176, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 4, ptr @.str.729, ptr @.str.728 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.730, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 0, ptr null, i32 0, i32 4, ptr @.str.731, ptr @.str.170 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.665, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.199, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.305, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.646, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.307, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.218, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.675, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.465, ptr null, i8 0, [3 x i8] zeroinitializer, i32 5, ptr @.str.140, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.476, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.472, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.372, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.449, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.398, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.367, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.401, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.361, ptr null, i8 0, [3 x i8] zeroinitializer, i32 4, ptr @.str.1, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.246, ptr null, i8 0, [3 x i8] zeroinitializer, i32 3, ptr @.str.140, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.240, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.229, ptr null, i8 0, [3 x i8] zeroinitializer, i32 2, ptr @.str.35, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } { ptr @.str.195, ptr null, i8 0, [3 x i8] zeroinitializer, i32 1, ptr null, i64 -1, ptr null, i32 0, i32 1028, ptr @.str.2, ptr @.str.2 }, { ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i32, i32, ptr, ptr } zeroinitializer], align 16
@clam_options = local_unnamed_addr global ptr @__clam_options, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.732 = private unnamed_addr constant [64 x i8] c"ERROR: optparse: Can't register new option (not enough memory)\0A\00", align 1
@.str.733 = private unnamed_addr constant [42 x i8] c"ERROR: optparse: longopts[] is too small\0A\00", align 1
@.str.734 = private unnamed_addr constant [43 x i8] c"ERROR: optparse: shortopts[] is too small\0A\00", align 1
@.str.735 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.736 = private unnamed_addr constant [50 x i8] c"ERROR: optparse: (short|long)opts[] is too small\0A\00", align 1
@.str.737 = private unnamed_addr constant [8 x i8] c"Example\00", align 1
@.str.738 = private unnamed_addr constant [47 x i8] c"ERROR: Please edit the example config file %s\0A\00", align 1
@.str.739 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.740 = private unnamed_addr constant [45 x i8] c"ERROR: Missing argument for option at %s:%d\0A\00", align 1
@.str.741 = private unnamed_addr constant [58 x i8] c"ERROR: Missing closing parenthesis in option %s at %s:%d\0A\00", align 1
@.str.742 = private unnamed_addr constant [46 x i8] c"ERROR: Empty argument for option %s at %s:%d\0A\00", align 1
@.str.743 = private unnamed_addr constant [52 x i8] c"ERROR: Incomplete option passed (missing argument)\0A\00", align 1
@.str.744 = private unnamed_addr constant [62 x i8] c"ERROR: optparse: No corresponding long name for option '-%c'\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.745 = private unnamed_addr constant [30 x i8] c"ERROR: Unknown option passed\0A\00", align 1
@.str.746 = private unnamed_addr constant [47 x i8] c"ERROR: Problem parsing options (name == NULL)\0A\00", align 1
@.str.747 = private unnamed_addr constant [48 x i8] c"ERROR: Parse error at %s:%d: Unknown option %s\0A\00", align 1
@.str.748 = private unnamed_addr constant [50 x i8] c"WARNING: Ignoring unsupported option %s at %s:%d\0A\00", align 1
@.str.749 = private unnamed_addr constant [49 x i8] c"WARNING: Ignoring unsupported option --%s (-%c)\0A\00", align 1
@.str.750 = private unnamed_addr constant [43 x i8] c"WARNING: Ignoring unsupported option --%s\0A\00", align 1
@.str.751 = private unnamed_addr constant [46 x i8] c"ERROR: Can't register argument for option %s\0A\00", align 1
@.str.752 = private unnamed_addr constant [48 x i8] c"ERROR: Can't register argument for option --%s\0A\00", align 1
@.str.753 = private unnamed_addr constant [49 x i8] c"WARNING: Ignoring deprecated option %s at %s:%d\0A\00", align 1
@.str.754 = private unnamed_addr constant [48 x i8] c"WARNING: Ignoring deprecated option --%s (-%c)\0A\00", align 1
@.str.755 = private unnamed_addr constant [42 x i8] c"WARNING: Ignoring deprecated option --%s\0A\00", align 1
@.str.756 = private unnamed_addr constant [68 x i8] c"ERROR: optparse: Can't compile regular expression %s for option %s\0A\00", align 1
@.str.757 = private unnamed_addr constant [48 x i8] c"ERROR: Incorrect argument format for option %s\0A\00", align 1
@.str.758 = private unnamed_addr constant [56 x i8] c"ERROR: Incorrect argument format for option --%s (-%c)\0A\00", align 1
@.str.759 = private unnamed_addr constant [50 x i8] c"ERROR: Incorrect argument format for option --%s\0A\00", align 1
@.str.760 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.761 = private unnamed_addr constant [63 x i8] c"ERROR: Option --%s (-%c) requires a non-empty string argument\0A\00", align 1
@.str.762 = private unnamed_addr constant [57 x i8] c"ERROR: Option --%s requires a non-empty string argument\0A\00", align 1
@.str.763 = private unnamed_addr constant [53 x i8] c"ERROR: Can't parse numerical argument for option %s\0A\00", align 1
@.str.764 = private unnamed_addr constant [61 x i8] c"ERROR: Can't parse numerical argument for option --%s (-%c)\0A\00", align 1
@.str.765 = private unnamed_addr constant [55 x i8] c"ERROR: Can't parse numerical argument for option --%s\0A\00", align 1
@.str.766 = private unnamed_addr constant [68 x i8] c"WARNING: Numerical value for option %s too high, resetting to %lld\0A\00", align 1
@.str.767 = private unnamed_addr constant [76 x i8] c"WARNING: Numerical value for option --%s (-%c) too high, resetting to %lld\0A\00", align 1
@.str.769 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.770 = private unnamed_addr constant [32 x i8] c"ERROR: optparse: calloc failed\0A\00", align 1
@.str.771 = private unnamed_addr constant [32 x i8] c"ERROR: optparse: strdup failed\0A\00", align 1
@.str.772 = private unnamed_addr constant [39 x i8] c"ERROR: Parse error: Unknown option %s\0A\00", align 1
@.str.773 = private unnamed_addr constant [41 x i8] c"WARNING: Ignoring unsupported option %s\0A\00", align 1
@.str.774 = private unnamed_addr constant [40 x i8] c"WARNING: Ignoring deprecated option %s\0A\00", align 1
@.str.775 = private unnamed_addr constant [66 x i8] c"WARNING: Numerical value for option %s too high, resetting to 4G\0A\00", align 1
@.str.776 = private unnamed_addr constant [42 x i8] c"ERROR: optaddarg: Unregistered option %s\0A\00", align 1
@.str.777 = private unnamed_addr constant [35 x i8] c"ERROR: optaddarg: strdup() failed\0A\00", align 1
@.str.778 = private unnamed_addr constant [35 x i8] c"ERROR: optaddarg: malloc() failed\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @optget(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.01018 = phi ptr [ %i.g, %bb.e ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.01018, align 8, !tbaa !16 ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #19
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01018, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %1) #19
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.01018, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.e, %bb.a
  %.010.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %.01018, %bb.b ], [ %.01018, %bb.d ]
  ret ptr %.010.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @optfree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %cond = icmp eq ptr %0, null
  br i1 %cond, label %._crit_edge44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %.lr.ph43.preheader, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not2933 = icmp eq ptr %i.c, null
  br i1 %.not2933, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.preheader ]
  tail call void @free(ptr noundef nonnull %i.d) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.e, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %.lcssa) #20
  br label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %bb.b, %._crit_edge
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge39
  %.02541 = phi ptr [ %i.z, %._crit_edge39 ], [ %0, %.lr.ph43.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02541, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not3135 = icmp eq ptr %i.i, null
  br i1 %.not3135, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph43, %bb.e
  %.02436 = phi ptr [ %.1, %bb.e ], [ %i.i, %.lr.ph43 ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02436, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph38
  %i.l = load ptr, ptr %.02436, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %.02436, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.n) #20
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %.02436, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  tail call void @free(ptr noundef nonnull %.02436) #20
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph38
  %i.r = getelementptr inbounds nuw i8, ptr %.02436, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.q, %bb.c ], [ %i.s, %bb.d ]  ; 2 uses
  %.not31 = icmp eq ptr %.1, null
  br i1 %.not31, label %._crit_edge39, label %.lr.ph38

._crit_edge39:                                    ; preds = %bb.e, %.lr.ph43
  %i.t = load ptr, ptr %.02541, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.t) #20
  %i.u = getelementptr inbounds nuw i8, ptr %.02541, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %.02541, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %.02541, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  tail call void @free(ptr noundef %.02541) #20
  %.not30 = icmp eq ptr %i.z, null
  br i1 %.not30, label %._crit_edge44, label %.lr.ph43

._crit_edge44:                                    ; preds = %._crit_edge39, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define ptr @optparse(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %7 = alloca [200 x %struct.option], align 16    ; 7 uses
  %i.f = alloca [200 x i8], align 16              ; 10 uses
  %8 = alloca %struct.regex_t, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr null, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread680

bb.b:                                             ; preds = %bb.a
  store i8 58, ptr %i.f, align 16, !tbaa !24
  %.not406 = icmp eq ptr %0, null
  br i1 %.not406, label %.split.us.preheader, label %.split.split.us.preheader

.thread680:                                       ; preds = %bb.a
  store ptr %6, ptr %i.b, align 8, !tbaa !23
  store i8 58, ptr %i.f, align 16, !tbaa !24
  %.not406681 = icmp eq ptr %0, null
  br i1 %.not406681, label %.split.us.preheader, label %.split.split

.split.us.preheader:                              ; preds = %.thread680, %bb.b
  %.pre645 = load ptr, ptr @clam_options, align 8, !tbaa !26
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.u
  %i.g = phi ptr [ %.pre645, %.split.us.preheader ], [ %i.bn, %bb.u ] ; 3 uses
  %indvars.iv619 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next620, %bb.u ] ; 3 uses
  %.0286.us = phi i32 [ 0, %.split.us.preheader ], [ %.2288.us, %bb.u ] ; 6 uses
  %.0284.us = phi i32 [ 1, %.split.us.preheader ], [ %.1285.us, %bb.u ] ; 8 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %indvars.iv619 ; 16 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %.not342.us = icmp eq ptr %i.i, null
  br i1 %.not342.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %.not343.us = icmp eq ptr %i.k, null
  br i1 %.not343.us, label %.split520.us, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30   ; 2 uses
  %i.n = and i32 %i.m, %4
  switch i32 %i.n, label %bb.f [
    i32 0, label %bb.e
    i32 1024, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.o = and i32 %i.m, %5
  %.not404.us = icmp eq i32 %i.o, 0
  br i1 %.not404.us, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33
  %i.x = trunc nuw nsw i64 %indvars.iv619 to i32
  %i.y = call fastcc i32 @optadd(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.i, ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.u, i32 noundef %i.w, i32 noundef %i.x)
  %i.z = icmp slt i32 %i.y, 0
  %.pre644 = load ptr, ptr @clam_options, align 8, !tbaa !26
  br i1 %i.z, label %.split523.us, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %.pre644, %bb.g ], [ %i.g, %bb.f ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %.not407.us = icmp eq ptr %i.ac, null
  br i1 %.not407.us, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre646 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp sgt i32 %.0286.us, 199
  br i1 %i.ad, label %.split525.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sext i32 %.0286.us to i64
  %i.af = getelementptr inbounds [32 x i8], ptr %7, i64 %i.ae ; 4 uses
  store ptr %i.ac, ptr %i.af, align 16, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !33
  %i.ai = and i32 %i.ah, 2
  %.not408.us = icmp eq i32 %i.ai, 0
  br i1 %.not408.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %.not409.us = icmp eq ptr %i.an, null
  br i1 %.not409.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %.sink = phi i32 [ 2, %bb.m ], [ 1, %bb.l ], [ 1, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %.sink, ptr %i.ao, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr null, ptr %i.ap, align 16, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !44  ; 2 uses
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %.0286.us, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.as, ptr %i.au, align 8, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %i.av = phi i8 [ %i.ar, %bb.n ], [ %.pre646, %._crit_edge ] ; 2 uses
  %.1287.us = phi i32 [ %i.at, %bb.n ], [ %.0286.us, %._crit_edge ] ; 5 uses
  %.not410.us = icmp eq i8 %i.av, 0
  br i1 %.not410.us, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp sgt i32 %.0284.us, 197
  br i1 %i.aw, label %.split527.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i32 %.0284.us, 1                ; 2 uses
  %i.ay = sext i32 %.0284.us to i64
  %i.az = getelementptr inbounds i8, ptr %i.f, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %.not411.us = icmp eq i32 %i.bb, 4
  br i1 %.not411.us, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %.0284.us, 2                ; 3 uses
  %i.bd = sext i32 %i.ax to i64
  %i.be = getelementptr inbounds i8, ptr %i.f, i64 %i.bd
  store i8 58, ptr %i.be, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !33
  %i.bh = and i32 %i.bg, 2
  %.not412.us = icmp eq i32 %i.bh, 0
  br i1 %.not412.us, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %.not413.us = icmp eq ptr %i.bj, null
  br i1 %.not413.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i32 %.0284.us, 3
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr inbounds i8, ptr %i.f, i64 %i.bl
  store i8 58, ptr %i.bm, align 1, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.e
  %i.bn = phi ptr [ %i.g, %bb.e ], [ %i.aa, %bb.r ], [ %i.aa, %bb.t ], [ %i.aa, %bb.s ], [ %i.aa, %bb.q ], [ %i.aa, %bb.o ]
  %.2288.us = phi i32 [ %.0286.us, %bb.e ], [ %.1287.us, %bb.r ], [ %.1287.us, %bb.t ], [ %.1287.us, %bb.s ], [ %.1287.us, %bb.q ], [ %.1287.us, %bb.o ]
  %.1285.us = phi i32 [ %.0284.us, %bb.e ], [ %i.bc, %bb.r ], [ %i.bk, %bb.t ], [ %i.bc, %bb.s ], [ %i.ax, %bb.q ], [ %.0284.us, %bb.o ]
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1
  br label %.split.us

.split.split.us.preheader:                        ; preds = %bb.b
  %.pre643 = load ptr, ptr @clam_options, align 8, !tbaa !26
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.z
  %i.bo = phi ptr [ %.pre643, %.split.split.us.preheader ], [ %i.ci, %bb.z ] ; 2 uses
  %indvars.iv616 = phi i64 [ 0, %.split.split.us.preheader ], [ %indvars.iv.next617, %bb.z ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %indvars.iv616 ; 7 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %.not342.us529 = icmp eq ptr %i.bq, null
  br i1 %.not342.us529, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split.split.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29
  %.not343.us530 = icmp eq ptr %i.bs, null
  br i1 %.not343.us530, label %.split520.us, label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.split.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30 ; 2 uses
  %i.bv = and i32 %i.bu, %4
  switch i32 %i.bv, label %bb.y [
    i32 0, label %bb.x
    i32 1024, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.bw = and i32 %i.bu, %5
  %.not404.us531 = icmp eq i32 %i.bw, 0
  br i1 %.not404.us531, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !33
  %i.cf = trunc nuw nsw i64 %indvars.iv616 to i32
  %i.cg = call fastcc i32 @optadd(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.bq, ptr noundef %i.by, ptr noundef %i.ca, i64 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cf)
  %i.ch = icmp slt i32 %i.cg, 0
  %.pre = load ptr, ptr @clam_options, align 8, !tbaa !26
  br i1 %i.ch, label %.split523.us, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = phi ptr [ %.pre, %bb.y ], [ %i.bo, %bb.x ]
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1
  br label %.split.split.us

.split.split:                                     ; preds = %.thread680
  %i.cj = load ptr, ptr @clam_options, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %.split.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [72 x i8], ptr %i.cj, i64 %indvars.iv ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !28
  %.not342 = icmp eq ptr %i.cl, null
  br i1 %.not342, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  %.not343 = icmp eq ptr %i.cn, null
  br i1 %.not343, label %.split520.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.aa

.split523.us:                                     ; preds = %bb.y, %bb.g
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite405 = tail call i64 @fwrite(ptr nonnull @.str.732, i64 63, i64 1, ptr %i.co) #21 ; 0 uses
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @optfree(ptr noundef %i.cp)
  br label %.loopexit

.split525.us:                                     ; preds = %bb.i
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite415 = tail call i64 @fwrite(ptr nonnull @.str.733, i64 41, i64 1, ptr %i.cq) #21 ; 0 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @optfree(ptr noundef %i.cr)
  br label %.loopexit

.split527.us:                                     ; preds = %bb.p
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite414 = tail call i64 @fwrite(ptr nonnull @.str.734, i64 42, i64 1, ptr %i.cs) #21 ; 0 uses
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @optfree(ptr noundef %i.ct)
  br label %.loopexit

.split520.us:                                     ; preds = %bb.ab, %bb.v, %bb.c
  %.not406682 = phi i1 [ true, %bb.c ], [ false, %bb.v ], [ false, %bb.ab ] ; 13 uses
  %.us-phi = phi i32 [ %.0286.us, %bb.c ], [ 0, %bb.v ], [ 0, %bb.ab ] ; 4 uses
  %.us-phi521 = phi i32 [ %.0284.us, %bb.c ], [ 1, %bb.v ], [ 1, %bb.ab ] ; 2 uses
  br i1 %.not406682, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.split520.us
  %i.cu = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.735) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %.pre647.pre651 = load ptr, ptr %i.b, align 8   ; 2 uses
  br i1 %i.cv, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  tail call void @optfree(ptr noundef %.pre647.pre651)
  br label %.loopexit

bb.af:                                            ; preds = %.split520.us
  %i.cw = tail call i32 @llvm.smax.i32(i32 %.us-phi521, i32 %.us-phi)
  %i.cx = icmp sgt i32 %i.cw, 200
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.736, i64 49, i64 1, ptr %i.cy) #21 ; 0 uses
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @optfree(ptr noundef %i.cz)
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.da = sext i32 %.us-phi521 to i64
  %i.db = getelementptr inbounds i8, ptr %i.f, i64 %i.da
  store i8 0, ptr %i.db, align 1, !tbaa !24
  %i.dc = sext i32 %.us-phi to i64
  %i.dd = getelementptr inbounds [32 x i8], ptr %7, i64 %i.dc ; 4 uses
  store ptr null, ptr %i.dd, align 16, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr null, ptr %i.de, align 16, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i32 0, ptr %i.df, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 0, ptr %i.dg, align 8, !tbaa !48
  %.pre647.pre = load ptr, ptr %i.b, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ah
  %.pre647 = phi ptr [ %.pre647.pre651, %bb.ad ], [ %.pre647.pre, %bb.ah ]
  %.0303 = phi ptr [ %i.cu, %bb.ad ], [ null, %bb.ah ] ; 3 uses
  %i.dh = icmp sgt i32 %.us-phi, 0
  %.not362 = icmp eq i32 %5, 0
  %.not365 = icmp eq i32 %3, 0                    ; 10 uses
  %i.di = and i32 %4, 1024
  %.not391 = icmp eq i32 %i.di, 0
  %wide.trip.count = zext nneg i32 %.us-phi to i64
  br label %.outer.a

.outer.a:                                         ; preds = %.outer.backedge, %bb.ai
  %i.dj = phi ptr [ %.pre647, %bb.ai ], [ %.be, %.outer.backedge ] ; 3 uses
  %.0282.ph.a = phi i32 [ 0, %bb.ai ], [ %.1283, %.outer.backedge ]
  %.0276.ph.a = phi i32 [ 5, %bb.ai ], [ %.2434, %.outer.backedge ] ; 3 uses
  %.not17.i = icmp eq ptr %i.dj, null
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer.a
  %.0282 = phi i32 [ %.0282.ph.a, %.outer.a ], [ %.0282.be, %.backedge.backedge ] ; 2 uses
  br i1 %.not406682, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %.backedge
  %i.dk = call ptr @fgets(ptr noundef nonnull %i.d, i32 noundef 1024, ptr noundef %.0303)
  %.not350 = icmp eq ptr %i.dk, null
  br i1 %.not350, label %.critedge421, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #19
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = add i32 %i.dm, -1                       ; 2 uses
  %i.do = icmp sgt i32 %i.dm, 1
  br i1 %i.do, label %.lr.ph539.preheader, label %.critedge

.lr.ph539.preheader:                              ; preds = %bb.ak
  %wide.trip.count628 = zext nneg i32 %i.dn to i64
  br label %.lr.ph539

.lr.ph539:                                        ; preds = %.lr.ph539.preheader, %.critedge2
  %indvars.iv625 = phi i64 [ 0, %.lr.ph539.preheader ], [ %indvars.iv.next626, %.critedge2 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv625
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !24
  switch i8 %i.dq, label %.critedge [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph539, %.lr.ph539
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond629.not = icmp eq i64 %indvars.iv.next626, %wide.trip.count628
  br i1 %exitcond629.not, label %.critedge.loopexit.loopexit, label %.lr.ph539

.critedge.loopexit.loopexit:                      ; preds = %.critedge2
  %i.dr = zext nneg i32 %i.dn to i64
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph539, %.critedge.loopexit.loopexit, %bb.ak
  %.1293.lcssa = phi i64 [ 0, %bb.ak ], [ %i.dr, %.critedge.loopexit.loopexit ], [ %indvars.iv625, %.lr.ph539 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1293.lcssa ; 9 uses
  store ptr %i.ds, ptr %i.e, align 8, !tbaa !20
  %i.dt = add nsw i32 %.0282, 1                   ; 8 uses
  %i.du = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #19
  %i.dv = icmp ult i64 %i.du, 3
  br i1 %i.dv, label %.backedge.backedge, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !24
  %i.dx = icmp eq i8 %i.dw, 35
  br i1 %i.dx, label %.backedge.backedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.737, ptr noundef nonnull dereferenceable(1) %i.ds, i64 noundef 7) #19
  %.not351 = icmp eq i32 %i.dy, 0
  br i1 %.not351, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  br i1 %.not365, label %.critedge421, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.738, ptr noundef nonnull %0) #22 ; 0 uses
  br label %.critedge421

bb.ap:                                            ; preds = %bb.am
  %i.eb = call ptr @strpbrk(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.739) #19 ; 3 uses
  %.not353 = icmp eq ptr %i.eb, null
  br i1 %.not353, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not365, label %.critedge421, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.740, ptr noundef nonnull %0, i32 noundef %i.dt) #22 ; 0 uses
  br label %.critedge421

bb.as:                                            ; preds = %bb.ap
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  store i8 0, ptr %i.eb, align 1, !tbaa !24
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ee) #19
  %i.eg = trunc i64 %i.ef to i32                  ; 2 uses
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  %i.ei = icmp sgt i32 %i.eg, 1
  br i1 %i.ei, label %.lr.ph544.preheader, label %.critedge4

.lr.ph544.preheader:                              ; preds = %bb.as
  %wide.trip.count633 = zext nneg i32 %i.eh to i64
  br label %.lr.ph544

.lr.ph544:                                        ; preds = %.lr.ph544.preheader, %.critedge6
  %indvars.iv630 = phi i64 [ 0, %.lr.ph544.preheader ], [ %indvars.iv.next631, %.critedge6 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv630
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !24
  switch i8 %i.ek, label %.critedge4 [
    i8 32, label %.critedge6
    i8 9, label %.critedge6
  ]

.critedge6:                                       ; preds = %.lr.ph544, %.lr.ph544
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631, %wide.trip.count633
  br i1 %exitcond634.not, label %.critedge4.loopexit.loopexit, label %.lr.ph544

.critedge4.loopexit.loopexit:                     ; preds = %.critedge6
  %i.el = zext nneg i32 %i.eh to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.lr.ph544, %.critedge4.loopexit.loopexit, %bb.as
  %.2294.lcssa = phi i64 [ 0, %bb.as ], [ %i.el, %.critedge4.loopexit.loopexit ], [ %indvars.iv630, %.lr.ph544 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.2294.lcssa ; 6 uses
  %i.en = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.em) #19 ; 3 uses
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph549.preheader, label %.critedge8

.lr.ph549.preheader:                              ; preds = %.critedge4
  %i.eq = and i64 %i.en, 2147483647
  br label %.lr.ph549

.lr.ph549:                                        ; preds = %.lr.ph549.preheader, %.critedge10
  %indvars.iv635 = phi i64 [ %i.eq, %.lr.ph549.preheader ], [ %indvars.iv.next636, %.critedge10 ] ; 4 uses
  %i.er = getelementptr i8, ptr %i.em, i64 %indvars.iv635
  %i.es = getelementptr i8, ptr %i.er, i64 -1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !24
  switch i8 %i.et, label %.critedge8.thread [
    i8 32, label %.critedge10
    i8 9, label %.critedge10
    i8 10, label %.critedge10
  ]

.critedge10:                                      ; preds = %.lr.ph549, %.lr.ph549, %.lr.ph549
  %indvars.iv.next636 = add nsw i64 %indvars.iv635, -1
  %i.eu = icmp sgt i64 %indvars.iv635, 1
  br i1 %i.eu, label %.lr.ph549, label %.critedge8.thread687

.critedge8:                                       ; preds = %.critedge4
  %.not355 = icmp eq i32 %i.eo, 0
  br i1 %.not355, label %.critedge8.thread687, label %.critedge8.thread

.critedge8.thread687:                             ; preds = %.critedge8, %.critedge10
  br i1 %.not365, label %.critedge421, label %bb.at

bb.at:                                            ; preds = %.critedge8.thread687
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.740, ptr noundef nonnull %0, i32 noundef %i.dt) #22 ; 0 uses
  br label %.critedge421

.critedge8.thread:                                ; preds = %.lr.ph549, %.critedge8
  %.3295463 = phi i64 [ %i.en, %.critedge8 ], [ %indvars.iv635, %.lr.ph549 ]
  %sext = shl i64 %.3295463, 32
  %i.ex = ashr exact i64 %sext, 32
  %i.ey = getelementptr inbounds i8, ptr %i.em, i64 %i.ex
  store i8 0, ptr %i.ey, align 1, !tbaa !24
  %i.ez = load i8, ptr %i.em, align 1, !tbaa !24
  %i.fa = icmp eq i8 %i.ez, 34
  br i1 %i.fa, label %bb.au, label %bb.bg

bb.au:                                            ; preds = %.critedge8.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.fc = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.fb, i32 noundef 34) #19 ; 2 uses
  %.not357 = icmp eq ptr %i.fc, null
  br i1 %.not357, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not365, label %.critedge421, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.fe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.741, ptr noundef nonnull %i.ds, ptr noundef nonnull %0, i32 noundef %i.dt) #22 ; 0 uses
  br label %.critedge421

bb.ax:                                            ; preds = %bb.au
  store i8 0, ptr %i.fc, align 1, !tbaa !24
  %char0 = load i8, ptr %i.fb, align 1
  %.not359 = icmp eq i8 %char0, 0
  br i1 %.not359, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not365, label %.critedge421, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.742, ptr noundef nonnull %i.ds, ptr noundef nonnull %0, i32 noundef %i.dt) #22 ; 0 uses
  br label %.critedge421

bb.ba:                                            ; preds = %.backedge
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.fh = call i32 @my_getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.f, ptr noundef nonnull %7, ptr noundef nonnull %i.a) #20 ; 4 uses
  switch i32 %i.fh, label %bb.bc [
    i32 -1, label %.critedge421
    i32 58, label %bb.bb
    i32 0, label %.critedge417
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite349 = call i64 @fwrite(ptr nonnull @.str.743, i64 51, i64 1, ptr %i.fi) #21 ; 0 uses
  br label %.critedge421

bb.bc:                                            ; preds = %bb.ba
  %i.fj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef %i.fh) #19
  %.not345 = icmp eq ptr %i.fj, null
  br i1 %.not345, label %bb.bf, label %.preheader458

.preheader458:                                    ; preds = %bb.bc
  br i1 %i.dh, label %.lr.ph, label %.thread

bb.bd:                                            ; preds = %.lr.ph
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader458, %bb.bd
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %bb.bd ], [ 0, %.preheader458 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %indvars.iv622 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !50
  %i.fn = icmp eq i32 %i.fh, %i.fm
  br i1 %i.fn, label %.loopexit459, label %bb.bd

.critedge417:                                     ; preds = %bb.ba
  %i.fo = load i32, ptr %i.a, align 4, !tbaa !37
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [32 x i8], ptr %7, i64 %i.fp
  br label %.loopexit459

.loopexit459:                                     ; preds = %.lr.ph, %.critedge417
  %.0301.in = phi ptr [ %i.fq, %.critedge417 ], [ %i.fk, %.lr.ph ]
  %.0301 = load ptr, ptr %.0301.in, align 16, !tbaa !47 ; 2 uses
  %.not347 = icmp eq ptr %.0301, null
  br i1 %.not347, label %.thread, label %bb.be

.thread:                                          ; preds = %.loopexit459, %.preheader458, %bb.bd
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.fs = shl i32 %i.fh, 24
  %i.ft = ashr exact i32 %i.fs, 24
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.744, i32 noundef %i.ft) #22 ; 0 uses
  br label %.critedge421

bb.be:                                            ; preds = %.loopexit459
  %i.fv = load ptr, ptr @optarg, align 8, !tbaa !20
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite346 = call i64 @fwrite(ptr nonnull @.str.745, i64 29, i64 1, ptr %i.fw) #21 ; 0 uses
  br label %.critedge421

bb.bg:                                            ; preds = %bb.ax, %.critedge8.thread, %bb.be
  %.1302 = phi ptr [ %i.ds, %bb.ax ], [ %i.ds, %.critedge8.thread ], [ %.0301, %bb.be ] ; 14 uses
  %.0296 = phi ptr [ %i.fb, %bb.ax ], [ %i.em, %.critedge8.thread ], [ %i.fv, %bb.be ] ; 3 uses
  %.1283 = phi i32 [ %i.dt, %bb.ax ], [ %i.dt, %.critedge8.thread ], [ %.0282, %bb.be ] ; 15 uses
  br i1 %.not17.i, label %.loopexit457, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg, %bb.bk
  %.01018.i = phi ptr [ %i.gd, %bb.bk ], [ %i.dj, %bb.bg ] ; 4 uses
  %i.fx = load ptr, ptr %.01018.i, align 8, !tbaa !16 ; 4 uses
  %.not13.i = icmp eq ptr %i.fx, null
  br i1 %.not13.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i
  %i.fy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fx, ptr noundef nonnull readonly dereferenceable(1) %.1302) #19
  %.not14.i = icmp eq i32 %i.fy, 0
  br i1 %.not14.i, label %optget_i.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.01018.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !17 ; 2 uses
  %.not15.i = icmp eq ptr %i.ga, null
  br i1 %.not15.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull readonly dereferenceable(1) %.1302) #19
  %.not16.i = icmp eq i32 %i.gb, 0
  br i1 %.not16.i, label %optget_i.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gc = getelementptr inbounds nuw i8, ptr %.01018.i, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.gd, null
  br i1 %.not.i, label %.loopexit457, label %.lr.ph.i

.loopexit457:                                     ; preds = %bb.bg, %bb.bk
  %or.cond19.not = or i1 %.not365, %.not406682
  br i1 %or.cond19.not, label %.critedge421, label %bb.bl

bb.bl:                                            ; preds = %.loopexit457
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.gf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.747, ptr noundef nonnull %0, i32 noundef %.1283, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

optget_i.exit:                                    ; preds = %bb.bj, %bb.bh
  %i.gg = load ptr, ptr @clam_options, align 8, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %.01018.i, i64 44
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !38
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [72 x i8], ptr %i.gg, i64 %i.gj ; 21 uses
  %.phi.trans.insert648 = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %.pre649 = load i32, ptr %.phi.trans.insert648, align 4, !tbaa !30 ; 3 uses
  br i1 %.not362, label %optget_i.exit._crit_edge, label %bb.bm

bb.bm:                                            ; preds = %optget_i.exit
  %i.gl = and i32 %.pre649, %5
  %.not363 = icmp ne i32 %i.gl, 0
  %i.gm = and i32 %.pre649, %4
  %.not364 = icmp eq i32 %i.gm, 0
  %or.cond418 = and i1 %.not363, %.not364
  br i1 %or.cond418, label %bb.bn, label %optget_i.exit._crit_edge

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not406682, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not365, label %.backedge.backedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.go = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str.748, ptr noundef %i.fx, ptr noundef nonnull %0, i32 noundef %.1283) #22 ; 0 uses
  br label %.backedge.backedge

bb.bq:                                            ; preds = %bb.bn
  br i1 %.not365, label %.backedge.backedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !44  ; 2 uses
  %.not366 = icmp eq i8 %i.gq, 0
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !29 ; 2 uses
  br i1 %.not366, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gu = sext i8 %i.gq to i32
  %i.gv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.749, ptr noundef %i.gt, i32 noundef %i.gu) #22 ; 0 uses
  br label %.backedge.backedge

bb.bt:                                            ; preds = %bb.br
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.750, ptr noundef %i.gt) #22 ; 0 uses
  br label %.backedge.backedge

optget_i.exit._crit_edge:                         ; preds = %optget_i.exit, %bb.bm
  %i.gx = and i32 %.pre649, 1024
  %.not368 = icmp eq i32 %i.gx, 0
  br i1 %.not368, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %optget_i.exit._crit_edge
  br i1 %.not391, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gy = call fastcc i32 @optaddarg(ptr noundef nonnull %i.dj, ptr noundef nonnull %.1302, ptr noundef nonnull @.str.142, i64 noundef 1)
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.bw, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bv, %bb.cc, %bb.cf, %bb.ce, %bb.ca, %bb.cb, %bb.bp, %bb.bo, %bb.bs, %bb.bt, %bb.bq, %.critedge, %bb.al
  %.0282.be = phi i32 [ %i.dt, %.critedge ], [ %.1283, %bb.bp ], [ %i.dt, %bb.al ], [ %.1283, %bb.bq ], [ %.1283, %bb.bt ], [ %.1283, %bb.bs ], [ %.1283, %bb.bo ], [ %.1283, %bb.cb ], [ %.1283, %bb.ca ], [ %.1283, %bb.ce ], [ %.1283, %bb.cf ], [ %.1283, %bb.cc ], [ %.1283, %bb.bv ]
  br label %.backedge

bb.bw:                                            ; preds = %bb.bv
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  br i1 %.not406682, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.751, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

bb.by:                                            ; preds = %bb.bw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !29
  %i.he = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.752, ptr noundef %i.hd) #22 ; 0 uses
  br label %.critedge421

bb.bz:                                            ; preds = %bb.bu
  br i1 %.not406682, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not365, label %.backedge.backedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.753, ptr noundef %i.fx, ptr noundef nonnull %0, i32 noundef %.1283) #22 ; 0 uses
  br label %.backedge.backedge

bb.cc:                                            ; preds = %bb.bz
  br i1 %.not365, label %.backedge.backedge, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !44  ; 2 uses
  %.not393 = icmp eq i8 %i.hi, 0
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29 ; 2 uses
  br i1 %.not393, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hm = sext i8 %i.hi to i32
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.754, ptr noundef %i.hl, i32 noundef %i.hm) #22 ; 0 uses
  br label %.backedge.backedge

bb.cf:                                            ; preds = %bb.cd
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.755, ptr noundef %i.hl) #22 ; 0 uses
  br label %.backedge.backedge

bb.cg:                                            ; preds = %optget_i.exit._crit_edge
  %i.hp = icmp eq ptr %.0296, null                ; 2 uses
  %or.cond.not = and i1 %i.hp, %.not406682
  br i1 %or.cond.not, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !34
  %i.hs = icmp eq i32 %i.hr, 4
  br i1 %i.hs, label %.thread428, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !39 ; 2 uses
  %.not369 = icmp eq ptr %i.hu, null
  br i1 %.not369, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !33
  %i.hx = lshr i32 %i.hw, 2
  %i.hy = and i32 %i.hx, 2
  %i.hz = xor i32 %i.hy, 2
  %spec.select = or i32 %i.hz, %.0276.ph.a        ; 2 uses
  %i.ia = call i32 @cli_regcomp(ptr noundef nonnull %8, ptr noundef nonnull %i.hu, i32 noundef %spec.select) #20
  %.not371 = icmp eq i32 %i.ia, 0
  br i1 %.not371, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !39
  %i.ie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.756, ptr noundef %i.id, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

bb.cl:                                            ; preds = %bb.cj
  %i.if = call i32 @cli_regexec(ptr noundef nonnull %8, ptr noundef %.0296, i64 noundef 0, ptr noundef null, i32 noundef 0) #20
  call void @cli_regfree(ptr noundef nonnull %8) #20
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  br i1 %.not406682, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.757, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

bb.co:                                            ; preds = %bb.cm
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !44  ; 2 uses
  %.not390 = icmp eq i8 %i.ik, 0
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !29 ; 2 uses
  br i1 %.not390, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.io = sext i8 %i.ik to i32
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.758, ptr noundef %i.in, i32 noundef %i.io) #22 ; 0 uses
  br label %.critedge421

bb.cq:                                            ; preds = %bb.co
  %i.iq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.759, ptr noundef %i.in) #22 ; 0 uses
  br label %.critedge421

bb.cr:                                            ; preds = %bb.ci, %bb.cl
  %.2 = phi i32 [ %spec.select, %bb.cl ], [ %.0276.ph.a, %bb.ci ] ; 2 uses
  br i1 %i.hp, label %.critedge13, label %.thread428

.thread428:                                       ; preds = %bb.ch, %bb.cr
  %.2433 = phi i32 [ %.2, %bb.cr ], [ %.0276.ph.a, %bb.ch ] ; 4 uses
  %.1297432 = phi ptr [ %.0296, %bb.cr ], [ @.str.170, %bb.ch ] ; 3 uses
  %i.ir = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1297432, i32 noundef 35) #19
  %.not373 = icmp eq ptr %i.ir, null
  br i1 %.not373, label %.critedge13, label %bb.cs

bb.cs:                                            ; preds = %.thread428
  %i.is = call ptr @strtok(ptr noundef nonnull %.1297432, ptr noundef nonnull @.str.760) #20 ; 6 uses
  %i.it = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.is) #19 ; 2 uses
  %.not374552 = icmp slt i64 %i.it, 1
  br i1 %.not374552, label %.critedge13, label %.lr.ph554.preheader

.lr.ph554.preheader:                              ; preds = %bb.cs
  %i.iu = getelementptr i8, ptr %i.is, i64 %i.it
  %.0551 = getelementptr i8, ptr %i.iu, i64 -1
  br label %.lr.ph554

.lr.ph554:                                        ; preds = %.lr.ph554.preheader, %.critedge15
  %.0553 = phi ptr [ %.0, %.critedge15 ], [ %.0551, %.lr.ph554.preheader ] ; 3 uses
  %i.iv = load i8, ptr %.0553, align 1, !tbaa !24
  switch i8 %i.iv, label %.critedge13 [
    i8 32, label %.critedge15
    i8 9, label %.critedge15
  ]

.critedge15:                                      ; preds = %.lr.ph554, %.lr.ph554
  store i8 0, ptr %.0553, align 1, !tbaa !24
  %.0 = getelementptr inbounds i8, ptr %.0553, i64 -1 ; 2 uses
  %.not374 = icmp ult ptr %.0, %i.is
  br i1 %.not374, label %.critedge13, label %.lr.ph554

.critedge13:                                      ; preds = %.critedge15, %.lr.ph554, %bb.cs, %.thread428, %bb.cr
  %.2434 = phi i32 [ %.2433, %.thread428 ], [ %.2, %bb.cr ], [ %.2433, %bb.cs ], [ %.2433, %.lr.ph554 ], [ %.2433, %.critedge15 ]
  %.2298 = phi ptr [ %.1297432, %.thread428 ], [ null, %bb.cr ], [ %i.is, %bb.cs ], [ %i.is, %.lr.ph554 ], [ %i.is, %.critedge15 ] ; 11 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !34
  switch i32 %i.ix, label %.critedge420 [
    i32 1, label %bb.ct
    i32 2, label %bb.da
    i32 3, label %bb.dc
    i32 5, label %bb.dc
    i32 4, label %bb.dt
  ]

bb.ct:                                            ; preds = %.critedge13
  %.not385 = icmp eq ptr %.2298, null
  br i1 %.not385, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !31
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3299 = phi ptr [ %.2298, %bb.ct ], [ %i.iz, %bb.cu ] ; 3 uses
  br i1 %.not406682, label %bb.cw, label %.critedge420.thread447

bb.cw:                                            ; preds = %bb.cv
  %char0386 = load i8, ptr %.3299, align 1
  %.not387 = icmp eq i8 %char0386, 0
  br i1 %.not387, label %bb.cx, label %.critedge420.thread

bb.cx:                                            ; preds = %bb.cw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !44  ; 2 uses
  %.not388 = icmp eq i8 %i.jb, 0
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !29 ; 2 uses
  br i1 %.not388, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jf = sext i8 %i.jb to i32
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.761, ptr noundef %i.je, i32 noundef %i.jf) #22 ; 0 uses
  br label %.critedge421

bb.cz:                                            ; preds = %bb.cx
  %i.jh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.762, ptr noundef %i.je) #22 ; 0 uses
  br label %.critedge421

bb.da:                                            ; preds = %.critedge13
  %.not384 = icmp eq ptr %.2298, null
  br i1 %.not384, label %.critedge420, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ji = call i64 @__isoc23_strtol(ptr noundef nonnull %.2298, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.jj = shl i64 %i.ji, 32
  %i.jk = ashr exact i64 %i.jj, 32
  br label %.critedge420

bb.dc:                                            ; preds = %.critedge13, %.critedge13
  %i.jl = tail call ptr @__errno_location() #23   ; 3 uses
  store i32 0, ptr %i.jl, align 4, !tbaa !37
  %.not378 = icmp eq ptr %.2298, null
  br i1 %.not378, label %.critedge420, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jm = call i64 @__isoc23_strtoll(ptr noundef nonnull %.2298, ptr noundef nonnull %i.e, i32 noundef 0) #20 ; 7 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !37
  %.not379 = icmp eq i32 %i.jn, 34
  br i1 %.not379, label %.thread435, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jo = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !24
  switch i8 %i.jp, label %bb.dl [
    i8 71, label %bb.df
    i8 103, label %bb.df
    i8 77, label %bb.dh
    i8 109, label %bb.dh
    i8 75, label %bb.dj
    i8 107, label %bb.dj
    i8 0, label %.thread437
  ]

bb.df:                                            ; preds = %bb.de, %bb.de
  %i.jq = icmp slt i64 %i.jm, 8589934592
  br i1 %i.jq, label %bb.dg, label %.thread435.sink.split

bb.dg:                                            ; preds = %bb.df
  %i.jr = shl nsw i64 %i.jm, 30
  br label %.thread437

bb.dh:                                            ; preds = %bb.de, %bb.de
  %i.js = icmp slt i64 %i.jm, 8796093022208
  br i1 %i.js, label %bb.di, label %.thread435.sink.split

bb.di:                                            ; preds = %bb.dh
  %i.jt = shl nsw i64 %i.jm, 20
  br label %.thread437

bb.dj:                                            ; preds = %bb.de, %bb.de
  %i.ju = icmp slt i64 %i.jm, 9007199254740992
  br i1 %i.ju, label %bb.dk, label %.thread435.sink.split

bb.dk:                                            ; preds = %bb.dj
  %i.jv = shl nsw i64 %i.jm, 10
  br label %.thread437

bb.dl:                                            ; preds = %bb.de
  br i1 %.not406682, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jw = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.jx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jw, ptr noundef nonnull @.str.763, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

bb.dn:                                            ; preds = %bb.dl
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !44  ; 2 uses
  %.not380 = icmp eq i8 %i.jz, 0
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !29 ; 2 uses
  br i1 %.not380, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kd = sext i8 %i.jz to i32
  %i.ke = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.764, ptr noundef %i.kc, i32 noundef %i.kd) #22 ; 0 uses
  br label %.critedge421

bb.dp:                                            ; preds = %bb.dn
  %i.kf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.765, ptr noundef %i.kc) #22 ; 0 uses
  br label %.critedge421

.thread435.sink.split:                            ; preds = %bb.dj, %bb.dh, %bb.df
  store i32 34, ptr %i.jl, align 4, !tbaa !37
  br label %.thread435

.thread435:                                       ; preds = %.thread435.sink.split, %bb.dd
  br i1 %.not406682, label %bb.dq, label %.critedge420.thread451

bb.dq:                                            ; preds = %.thread435
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !44  ; 2 uses
  %.not382 = icmp eq i8 %i.kh, 0
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !36 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !29 ; 2 uses
  br i1 %.not382, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kl = sext i8 %i.kh to i32
  %i.km = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.767, ptr noundef %i.kk, i32 noundef %i.kl, i64 noundef 9223372036854775807) #22 ; 0 uses
  br label %.critedge420

bb.ds:                                            ; preds = %bb.dq
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.766, ptr noundef %i.kk, i64 noundef 9223372036854775807) #22 ; 0 uses
  br label %.critedge420

.thread437:                                       ; preds = %bb.dg, %bb.di, %bb.dk, %bb.de
  %.1278 = phi i64 [ %i.jm, %bb.de ], [ %i.jv, %bb.dk ], [ %i.jt, %bb.di ], [ %i.jr, %bb.dg ]
  %.1278.fr = freeze i64 %.1278                   ; 2 uses
  %.not383 = icmp eq i64 %.1278.fr, 0
  %spec.select456 = select i1 %.not383, i64 9223372036854775807, i64 %.1278.fr
  br label %.critedge420

bb.dt:                                            ; preds = %.critedge13
  %i.ko = call i32 @strcasecmp(ptr noundef %.2298, ptr noundef nonnull @.str.170) #19
  %.not375 = icmp eq i32 %i.ko, 0
  br i1 %.not375, label %.critedge420, label %sub_0

sub_0:                                            ; preds = %bb.dt
  %i.kp = load i8, ptr %.2298, align 1
  %.not558 = icmp eq i8 %i.kp, 49
  br i1 %.not558, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.kq = getelementptr inbounds nuw i8, ptr %.2298, i64 1
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = icmp eq i8 %i.kr, 0
  br i1 %i.ks, label %.critedge420, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.kt = call i32 @strcasecmp(ptr noundef nonnull %.2298, ptr noundef nonnull @.str.769) #19
  %.not377 = icmp eq i32 %i.kt, 0
  %spec.select422 = zext i1 %.not377 to i64
  br label %.critedge420

.critedge420:                                     ; preds = %.thread437, %bb.ds, %bb.dr, %.tail.thread, %.critedge13, %bb.da, %bb.db, %bb.dc, %bb.dt, %.tail
  %.4300 = phi ptr [ %.2298, %.critedge13 ], [ null, %.thread437 ], [ null, %bb.ds ], [ null, %bb.dc ], [ null, %.tail ], [ null, %bb.dt ], [ null, %bb.da ], [ null, %bb.db ], [ null, %.tail.thread ], [ null, %bb.dr ]
  %.2281 = phi i64 [ -1, %.critedge13 ], [ %spec.select456, %.thread437 ], [ 9223372036854775807, %bb.ds ], [ 0, %bb.dc ], [ 1, %.tail ], [ 1, %bb.dt ], [ 0, %bb.da ], [ %i.jk, %bb.db ], [ %spec.select422, %.tail.thread ], [ 9223372036854775807, %bb.dr ]
  %i.ku = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.kv = call fastcc i32 @optaddarg(ptr noundef %i.ku, ptr noundef nonnull %.1302, ptr noundef %.4300, i64 noundef %.2281)
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.du, label %.outer.backedge

.outer.backedge:                                  ; preds = %.critedge420, %.critedge420.thread, %.critedge420.thread447, %.critedge420.thread451
  %.be = phi ptr [ %i.ku, %.critedge420 ], [ %10, %.critedge420.thread ], [ %9, %.critedge420.thread447 ], [ %i.kz, %.critedge420.thread451 ]
  br label %.outer.a

.critedge420.thread451:                           ; preds = %.thread435
  %i.kx = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ky = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.766, ptr noundef nonnull %.1302, i64 noundef 9223372036854775807) #22 ; 0 uses
  %i.kz = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.la = call fastcc i32 @optaddarg(ptr noundef %i.kz, ptr noundef nonnull %.1302, ptr noundef null, i64 noundef 9223372036854775807)
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %.thread450, label %.outer.backedge

.critedge420.thread447:                           ; preds = %bb.cv
  %9 = load ptr, ptr %i.b, align 8, !tbaa !23     ; 2 uses
  %i.lc = call fastcc i32 @optaddarg(ptr noundef %9, ptr noundef nonnull %.1302, ptr noundef %.3299, i64 noundef -1)
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %.thread450, label %.outer.backedge

.critedge420.thread:                              ; preds = %bb.cw
  %10 = load ptr, ptr %i.b, align 8, !tbaa !23    ; 2 uses
  %i.le = call fastcc i32 @optaddarg(ptr noundef %10, ptr noundef nonnull %.1302, ptr noundef nonnull %.3299, i64 noundef -1)
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %.thread446, label %.outer.backedge

bb.du:                                            ; preds = %.critedge420
  br i1 %.not406682, label %.thread446, label %.thread450

.thread450:                                       ; preds = %.critedge420.thread451, %.critedge420.thread447, %bb.du
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.751, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge421

.thread446:                                       ; preds = %.critedge420.thread, %bb.du
  %i.li = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !29
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.li, ptr noundef nonnull @.str.752, ptr noundef %i.lk) #22 ; 0 uses
  br label %.critedge421

.critedge421:                                     ; preds = %bb.ba, %bb.aj, %bb.cy, %bb.cz, %bb.dm, %bb.dp, %bb.do, %.thread450, %.thread446, %bb.cn, %bb.cq, %bb.cp, %bb.bx, %bb.by, %.loopexit457, %bb.bl, %bb.ay, %bb.az, %bb.av, %bb.aw, %.critedge8.thread687, %bb.at, %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.ck, %bb.bf, %.thread, %bb.bb
  %.not396 = phi i1 [ false, %.loopexit457 ], [ false, %bb.ck ], [ false, %bb.bx ], [ false, %.thread450 ], [ false, %bb.cn ], [ false, %bb.ay ], [ false, %bb.bf ], [ false, %bb.av ], [ false, %.critedge8.thread687 ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %.thread ], [ false, %bb.cz ], [ false, %bb.cy ], [ false, %bb.bb ], [ false, %bb.ao ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.aw ], [ false, %bb.az ], [ false, %bb.bl ], [ false, %bb.by ], [ false, %bb.cp ], [ false, %bb.cq ], [ false, %.thread446 ], [ false, %bb.do ], [ false, %bb.dp ], [ false, %bb.dm ], [ true, %bb.aj ], [ true, %bb.ba ]
  %.not395 = icmp eq ptr %.0303, null
  br i1 %.not395, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.critedge421
  %i.lm = call i32 @fclose(ptr noundef nonnull %.0303) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.critedge421
  %i.ln = load ptr, ptr %i.b, align 8             ; 8 uses
  br i1 %.not396, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @optfree(ptr noundef %i.ln)
  br label %.loopexit

bb.dy:                                            ; preds = %bb.dw
  %i.lo = icmp ne ptr %i.ln, null
  %or.cond17 = select i1 %.not406682, i1 %i.lo, i1 false
  br i1 %or.cond17, label %bb.dz, label %.loopexit

bb.dz:                                            ; preds = %bb.dy
  %i.lp = load i32, ptr @optind, align 4, !tbaa !37 ; 3 uses
  %i.lq = icmp slt i32 %i.lp, %1
  br i1 %i.lq, label %bb.ea, label %.loopexit

bb.ea:                                            ; preds = %bb.dz
  %i.lr = add i32 %1, 1
  %i.ls = sub i32 %i.lr, %i.lp
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = call noalias ptr @calloc(i64 noundef %i.lt, i64 noundef 8) #24 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !19
  %.not397 = icmp eq ptr %i.lu, null
  br i1 %.not397, label %bb.eb, label %.lr.ph557.preheader

.lr.ph557.preheader:                              ; preds = %bb.ea
  %i.lw = sext i32 %i.lp to i64                   ; 2 uses
  %wide.trip.count641 = sext i32 %1 to i64
  br label %.lr.ph557

bb.eb:                                            ; preds = %bb.ea
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite398 = call i64 @fwrite(ptr nonnull @.str.770, i64 31, i64 1, ptr %i.lx) #21 ; 0 uses
  call void @optfree(ptr noundef nonnull %i.ln)
  br label %.loopexit

bb.ec:                                            ; preds = %.lr.ph557
  %indvars.iv.next639 = add nsw i64 %indvars.iv638, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %wide.trip.count641
  br i1 %exitcond642.not, label %.loopexit, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.preheader, %bb.ec
  %indvars.iv638 = phi i64 [ %i.lw, %.lr.ph557.preheader ], [ %indvars.iv.next639, %bb.ec ] ; 3 uses
  %i.ly = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv638
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !20
  %i.ma = call noalias ptr @strdup(ptr noundef %i.lz) #20 ; 2 uses
  %i.mb = sub nsw i64 %indvars.iv638, %i.lw
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.mb
  store ptr %i.ma, ptr %i.mc, align 8, !tbaa !20
  %.not399 = icmp eq ptr %i.ma, null
  br i1 %.not399, label %bb.ed, label %bb.ec

bb.ed:                                            ; preds = %.lr.ph557
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !36
  %fwrite400 = call i64 @fwrite(ptr nonnull @.str.771, i64 31, i64 1, ptr %i.md) #21 ; 0 uses
  call void @optfree(ptr noundef nonnull %i.ln)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ec, %bb.dy, %bb.dz, %bb.ed, %bb.eb, %bb.dx, %bb.ag, %bb.ae, %.split527.us, %.split525.us, %.split523.us
  %.0304 = phi ptr [ null, %.split525.us ], [ null, %.split527.us ], [ null, %.split523.us ], [ null, %bb.ae ], [ null, %bb.dx ], [ null, %bb.ed ], [ null, %bb.ag ], [ null, %bb.eb ], [ %i.ln, %bb.dy ], [ %i.ln, %bb.dz ], [ %i.ln, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0304
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @optadd(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #25 ; 22 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not54 = icmp eq ptr %2, null
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull %2) #20 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !16
  %.not55 = icmp eq ptr %i.b, null
  br i1 %.not55, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.e ] ; 2 uses
  %.not56 = icmp eq ptr %3, null
  br i1 %.not56, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull %3) #20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !17
  %.not57 = icmp eq ptr %i.d, null
  br i1 %.not57, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.c) #20
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.g = phi ptr [ %i.d, %bb.g ], [ null, %bb.i ]
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.h = tail call noalias ptr @strdup(ptr noundef nonnull %4) #20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !22
  %.not59 = icmp eq ptr %i.h, null
  br i1 %.not59, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.g) #20
  tail call void @free(ptr noundef %i.c) #20
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sink = phi i32 [ 0, %bb.m ], [ 1, %bb.k ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.sink, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %5, ptr %i.l, align 8, !tbaa !41
  %i.m = add i64 %5, -1
  %or.cond = icmp ult i64 %i.m, -2
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.n, align 8, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.p, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 %6, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %7, ptr %i.r, align 4, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !19
  %i.t = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  br i1 %.not60, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %0, align 8, !tbaa !23
  store ptr %i.v, ptr %i.u, align 8, !tbaa !18
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  br label %bb.s
end_hunk_0
