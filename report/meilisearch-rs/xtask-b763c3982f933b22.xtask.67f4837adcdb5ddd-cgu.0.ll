Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0
@96 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @95, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@97 = private unnamed_addr constant [27 x i8] c"A prototype with the name `", align 1
@98 = private unnamed_addr constant [33 x i8] c"` already exists with increment `", align 1
@99 = private unnamed_addr constant [1 x i8] c"`", align 1
@100 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @97, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @98, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @99, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@101 = private unnamed_addr constant [22 x i8] c"Missing prototype name", align 1
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"\18\00\00\00\00\00\00\00\A3\00\00\00#\00\00\00" }>, align 8
@103 = private unnamed_addr constant [49 x i8] c"Invalid prototype name, missing name or increment", align 1
@104 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @103, [8 x i8] c"1\00\00\00\00\00\00\00" }>, align 8
@105 = private unnamed_addr constant [17 x i8] c"Missing increment", align 1
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"\18\00\00\00\00\00\00\00\AB\00\00\00\0E\00\00\00" }>, align 8
@107 = private unnamed_addr constant [17 x i8] c"Invalid increment", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"\18\00\00\00\00\00\00\00\AA\00\00\00+\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE" }>, align 8
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ecc1f899771f795E" }>, align 8
@111 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@112 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@113 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9bd0de7441591943E" }>, align 8
@115 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdc723671b4d90bb5E" }>, align 8
@116 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@117 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@118 = private unnamed_addr constant [5 x i8] c"error", align 1
@119 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb7889164c1a6a2aE" }>, align 8
@120 = private unnamed_addr constant [13 x i8] c"CargoMetadata", align 1
@121 = private unnamed_addr constant [6 x i8] c"stderr", align 1
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h63e5ab56d0be9a95E" }>, align 8
@123 = private unnamed_addr constant [2 x i8] c"Io", align 1
@124 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@125 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1014dce84c231be7E" }>, align 8
@126 = private unnamed_addr constant [7 x i8] c"ErrUtf8", align 1
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h374397f1c7d5b0b5E" }>, align 8
@128 = private unnamed_addr constant [4 x i8] c"Json", align 1
@129 = private unnamed_addr constant [6 x i8] c"NoJson", align 1
@130 = private unnamed_addr constant [4 x i8] c"None", align 1
@131 = private unnamed_addr constant [4 x i8] c"Some", align 1
@132 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@133 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@134 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@135 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@136 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@137 = private unnamed_addr constant [13 x i8] c"list-features", align 1
@138 = private unnamed_addr constant [5 x i8] c"bench", align 1
@139 = private unnamed_addr constant [18 x i8] c"generate-prototype", align 1
@140 = private unnamed_addr constant [4 x i8] c"test", align 1
@141 = private unnamed_addr constant [18 x i8] c"Utilitary commands", align 1
@142 = private unnamed_addr constant [83 x i8] c"Quentin de Quelen <quentin@dequelen.me>, Cl\C3\A9ment Renault <clement@meilisearch.com>", align 1
@143 = private unnamed_addr constant [94 x i8] c"Workspace automation tool following the xtask pattern <https://github.com/matklad/cargo-xtask>", align 1
@144 = private unnamed_addr constant [11 x i8] c"cargo xtask", align 1
@145 = private unnamed_addr constant [13 x i8] c"PrototypeArgs", align 1
@146 = private unnamed_addr constant [4 x i8] c"name", align 1
@147 = private unnamed_addr constant [12 x i8] c"generate_new", align 1
@148 = private unnamed_addr constant [4 x i8] c"NAME", align 1
@149 = private unnamed_addr constant [33 x i8] c"Name of the prototype to generate", align 1
@150 = private unnamed_addr constant [12 x i8] c"GENERATE_NEW", align 1
@151 = private unnamed_addr constant [118 x i8] c"If true refuses to increment the tag if it already exists else refuses to generate new tag and expect the tag to exist", align 1
@152 = private unnamed_addr constant [12 x i8] c"generate-new", align 1
@153 = private unnamed_addr constant [40 x i8] c"Create a git tag for the current version", align 1
@154 = private unnamed_addr constant [106 x i8] c"Create a git tag for the current version\0A\0AThe tag will of the form prototype-v<version>-<name>.<increment>", align 1
@155 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h95b0c1feceea40b6E" }>, align 8
@156 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@157 = private unnamed_addr constant [4 x i8] c"kind", align 1
@158 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@159 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E", [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17hd466da6db7e2ae4eE" }>, align 8
@160 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E", [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17hbafa67d3d7ae41edE", ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17hd466da6db7e2ae4eE", ptr @159, ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h630902c209e82f4cE", ptr @_ZN4core5error5Error7type_id17h0b9b5088a0429d54E, ptr @_ZN4core5error5Error11description17h653d9c1caf69c081E, ptr @_ZN4core5error5Error5cause17hdbbb46b454b1db11E, ptr @_ZN4core5error5Error7provide17h540b2c5e59ee4aa4E }>, align 8
@161 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN6semver5error69_$LT$impl$u20$core..fmt..Display$u20$for$u20$semver..parse..Error$GT$3fmt17hcfb9e576b74328d8E" }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN6semver5error67_$LT$impl$u20$core..fmt..Debug$u20$for$u20$semver..parse..Error$GT$3fmt17hf30c6e93e2162973E", ptr @"_ZN6semver5error69_$LT$impl$u20$core..fmt..Display$u20$for$u20$semver..parse..Error$GT$3fmt17hcfb9e576b74328d8E", ptr @161, ptr @_ZN4core5error5Error6source17hc9c0e9d77401361fE, ptr @_ZN4core5error5Error7type_id17hd0306facf6aed329E, ptr @_ZN4core5error5Error11description17h543fd77c8331ce9fE, ptr @_ZN4core5error5Error5cause17h034955f73d388f6bE, ptr @_ZN4core5error5Error7provide17h7d17894e38b772b5E }>, align 8
@163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN77_$LT$anyhow..wrapper..DisplayError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7e7e5594b2d8c037E" }>, align 8
@164 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN75_$LT$anyhow..wrapper..DisplayError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7aefbf86fc9140c7E", ptr @"_ZN77_$LT$anyhow..wrapper..DisplayError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7e7e5594b2d8c037E", ptr @163, ptr @_ZN4core5error5Error6source17h33698d70cc5a0b7bE, ptr @_ZN4core5error5Error7type_id17h847fdcabfb782ad3E, ptr @_ZN4core5error5Error11description17hf7f7a53e63cbfe60E, ptr @_ZN4core5error5Error5cause17h3184739298aeb6b6E, ptr @_ZN4core5error5Error7provide17h07bcd7dd544498faE }>, align 8
@165 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4a7a0569579314dE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E" }>, align 8
@166 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4a7a0569579314dE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E", ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr @165, ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..error..Error$GT$6source17h74772029ee51d953E", ptr @_ZN4core5error5Error7type_id17h049aa0ebdb40649cE, ptr @_ZN4core5error5Error11description17hf8b44820607a35bcE, ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..error..Error$GT$5cause17hd1ab51381131e2d9E", ptr @_ZN4core5error5Error7provide17h1389ede5c5fafc8bE }>, align 8
@167 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h4422331b57010655E" }>, align 8
@168 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4862665855cb874eE", ptr @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h4422331b57010655E", ptr @167, ptr @_ZN4core5error5Error6source17h95864e68c93cfb10E, ptr @_ZN4core5error5Error7type_id17ha4702483bf0a3d42E, ptr @_ZN4core5error5Error11description17h25831a4cbc8465acE, ptr @_ZN4core5error5Error5cause17h61446dfe725b8206E, ptr @_ZN4core5error5Error7provide17heb4b7d8e2205bdb5E }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2067771e42568984E" }>, align 8
@170 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h18ab1456c45e8988E", ptr @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2067771e42568984E", ptr @169, ptr @_ZN4core5error5Error6source17h380410e150ff43f1E, ptr @_ZN4core5error5Error7type_id17h969d8e85e9385cf9E, ptr @_ZN4core5error5Error11description17h43755fde9398816bE, ptr @_ZN4core5error5Error5cause17hb3cda78fbfc4a358E, ptr @_ZN4core5error5Error7provide17h2fa11380ea11cbdbE }>, align 8
@171 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h750a5397e9648412E" }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h56bf82d16e8d6d49E", ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h750a5397e9648412E", ptr @171, ptr @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17hde172a0e67289332E", ptr @_ZN4core5error5Error7type_id17hba4eaf47244bc761E, ptr @_ZN4core5error5Error11description17hd3fbdcb867d0f2baE, ptr @_ZN4core5error5Error5cause17hce350306df4f5750E, ptr @_ZN4core5error5Error7provide17h01b1c538a9b80f96E }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h0e93bfd0a8d23387E", [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hae519be1258d1097E" }>, align 8
@174 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h0e93bfd0a8d23387E", [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h15de346deb92fc03E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hae519be1258d1097E", ptr @173, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h8c97132ede34abe4E", ptr @_ZN4core5error5Error7type_id17hf627aaabd869c7d2E, ptr @_ZN4core5error5Error11description17h008554b6d2a3bd95E, ptr @_ZN4core5error5Error5cause17h4b84966515b07145E, ptr @_ZN4core5error5Error7provide17h04e1fc73ba68b521E }>, align 8
@175 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h6997b03c60f4ba59E", [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h615e8dd317ab50d6E" }>, align 8
@176 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h6997b03c60f4ba59E", [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf087c4e16c6cc5efE", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h615e8dd317ab50d6E", ptr @175, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17he4d3a38da2f15ac9E", ptr @_ZN4core5error5Error7type_id17h05649f4a5cf1c8ceE, ptr @_ZN4core5error5Error11description17h6713c92530125fb1E, ptr @_ZN4core5error5Error5cause17h5c65be87b8834962E, ptr @_ZN4core5error5Error7provide17h418c33d1baf758f9E }>, align 8
@177 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr73drop_in_place$LT$anyhow..error..ErrorImpl$LT$semver..parse..Error$GT$$GT$17h0b1978b87cde7930E", [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5618fe4dc52143f9E" }>, align 8
@178 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr73drop_in_place$LT$anyhow..error..ErrorImpl$LT$semver..parse..Error$GT$$GT$17h0b1978b87cde7930E", [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h65e327734c523321E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5618fe4dc52143f9E", ptr @177, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17ha8ad725d04797ecdE", ptr @_ZN4core5error5Error7type_id17hdd5af13fdacd9b41E, ptr @_ZN4core5error5Error11description17hf9adf217c61536caE, ptr @_ZN4core5error5Error5cause17hb17befe853bda0dfE, ptr @_ZN4core5error5Error7provide17he0993812ff648b52E }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h36097d689b2084d6E", [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7b75636fb98a37eaE" }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h36097d689b2084d6E", [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b6e19ead5d90804E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7b75636fb98a37eaE", ptr @179, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h02897196fb95103cE", ptr @_ZN4core5error5Error7type_id17h8c96a6fe1b0b7a67E, ptr @_ZN4core5error5Error11description17h9c25a3b48141db44E, ptr @_ZN4core5error5Error5cause17he1da915ed50db4eeE, ptr @_ZN4core5error5Error7provide17he7f4143b183783e8E }>, align 8
@181 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h9d5f95cd237f3255E", [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5b9c01ada0dfcefeE" }>, align 8
@182 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h9d5f95cd237f3255E", [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6cf0d2ddcb0b884E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5b9c01ada0dfcefeE", ptr @181, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h6b5afd089b93c3a0E", ptr @_ZN4core5error5Error7type_id17h49db0f3ef6afb3ebE, ptr @_ZN4core5error5Error11description17h596dbd7fd553fc89E, ptr @_ZN4core5error5Error5cause17ha1864f6ed9bb0e6dE, ptr @_ZN4core5error5Error7provide17hce1f05cce954e289E }>, align 8
@183 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr118drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$semver..parse..Error$GT$$GT$$GT$17h5baa65c0efd32897E", [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd350f5bc24c65378E" }>, align 8
@184 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr118drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$semver..parse..Error$GT$$GT$$GT$17h5baa65c0efd32897E", [16 x i8] c"P\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h18c98cdfb38b4b40E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd350f5bc24c65378E", ptr @183, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h914dc89cd189b314E", ptr @_ZN4core5error5Error7type_id17h0b2a86dfff482fb6E, ptr @_ZN4core5error5Error11description17ha6af05ef5347285cE, ptr @_ZN4core5error5Error5cause17ha309e04b47094611E, ptr @_ZN4core5error5Error7provide17he298844f69274fb7E }>, align 8
@185 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr126drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$$GT$17h2dc65e3ef9c52ff3E", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd4fcf6b791647bd2E" }>, align 8
@186 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr126drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$$GT$17h2dc65e3ef9c52ff3E", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hde1beb6d310f81c6E", ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd4fcf6b791647bd2E", ptr @185, ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h7207606a0e5497faE", ptr @_ZN4core5error5Error7type_id17hf958fdc382051e4cE, ptr @_ZN4core5error5Error11description17h691c1f373eceb970E, ptr @_ZN4core5error5Error5cause17h29e0b1f17cd8c97eE, ptr @_ZN4core5error5Error7provide17h423e30d95e323943E }>, align 8
@187 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17h88164b3e3bd12861E, ptr @_ZN6anyhow5error10object_ref17h650116b31bd57330E, ptr @_ZN6anyhow5error12object_boxed17h07564672d16a060fE, ptr @_ZN6anyhow5error23object_reallocate_boxed17ha6faf40331d79fefE, ptr @_ZN6anyhow5error15object_downcast17h2ad92b93a49f09d6E, ptr @_ZN6anyhow5error17object_drop_front17h53099d97a40948e6E, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@188 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17h816aacce3bba930dE, ptr @_ZN6anyhow5error10object_ref17h067b099825c08c1eE, ptr @_ZN6anyhow5error12object_boxed17h3d20ce49da15634dE, ptr @_ZN6anyhow5error23object_reallocate_boxed17hb97a1bd71fac543eE, ptr @_ZN6anyhow5error15object_downcast17h8998c35dff7a891dE, ptr @_ZN6anyhow5error17object_drop_front17h4241e11271516cc6E, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@189 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17hbbcf90557ade46edE, ptr @_ZN6anyhow5error10object_ref17hc71c4a130a133814E, ptr @_ZN6anyhow5error12object_boxed17h9e8c3c8ca91bf3dcE, ptr @_ZN6anyhow5error23object_reallocate_boxed17h923545fbc22f4806E, ptr @_ZN6anyhow5error15object_downcast17h5de97a7d3060803dE, ptr @_ZN6anyhow5error17object_drop_front17h37bbc22a83dfba64E, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@190 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17h51e68766aca96fc7E, ptr @_ZN6anyhow5error10object_ref17hd1c6a6e07aabe91dE, ptr @_ZN6anyhow5error12object_boxed17h0a13e2455b270405E, ptr @_ZN6anyhow5error23object_reallocate_boxed17h817c2737751488d9E, ptr @_ZN6anyhow5error15object_downcast17h31e6a0adfe68750dE, ptr @_ZN6anyhow5error17object_drop_front17h82cb20e24d9388ddE, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@191 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17hee8632426c486c2cE, ptr @_ZN6anyhow5error10object_ref17hf8713aee206e1a0aE, ptr @_ZN6anyhow5error12object_boxed17hd44a918295867ecbE, ptr @_ZN6anyhow5error23object_reallocate_boxed17hdc11de621e8fbff1E, ptr @_ZN6anyhow5error16context_downcast17h7945275be567f7d9E, ptr @_ZN6anyhow5error17context_drop_rest17hfab1661b41c1900eE, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@192 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17h828c4d652a8059b3E, ptr @_ZN6anyhow5error10object_ref17h0323a516b4b4f9adE, ptr @_ZN6anyhow5error12object_boxed17hef632facb5cd8e7aE, ptr @_ZN6anyhow5error23object_reallocate_boxed17he014cc0f5f344638E, ptr @_ZN6anyhow5error16context_downcast17h34f5c8ddc10e1877E, ptr @_ZN6anyhow5error17context_drop_rest17hc667c6a89bd13821E, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@193 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_ZN6anyhow5error11object_drop17h37d92a96ef7d920cE, ptr @_ZN6anyhow5error10object_ref17h226c106fe0a4d81fE, ptr @_ZN6anyhow5error12object_boxed17h8986ee3e1d83d5abE, ptr @_ZN6anyhow5error23object_reallocate_boxed17h3ee7104c1ba9ade2E, ptr @_ZN6anyhow5error15object_downcast17h31e6a0adfe68750dE, ptr @_ZN6anyhow5error17object_drop_front17h82cb20e24d9388ddE, ptr @_ZN6anyhow5error12no_backtrace17h6b01c26b912e3222E }>, align 8
@194 = private unnamed_addr constant [5 x i8] c"Error", align 1
@195 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h887b52e68173be70E" }>, align 8
@196 = private unnamed_addr constant [7 x i8] c"context", align 1
@197 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN6semver5error67_$LT$impl$u20$core..fmt..Debug$u20$for$u20$semver..parse..Error$GT$3fmt17hf30c6e93e2162973E" }>, align 8
@198 = private unnamed_addr constant [6 x i8] c"source", align 1
@199 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7561913bcd0f69c2E" }>, align 8
@200 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN67_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7b780f73fe0be099E" }>, align 8
@201 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7561913bcd0f69c2E", ptr @"_ZN67_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7b780f73fe0be099E", ptr @200, ptr @_ZN4core5error5Error6source17hbd26def8e64b4d26E, ptr @_ZN4core5error5Error7type_id17hfec1127e70560df4E, ptr @_ZN4core5error5Error11description17hcd7a8aeea3c04e6bE, ptr @_ZN4core5error5Error5cause17hf3b5b5c34e2914e3E, ptr @_ZN4core5error5Error7provide17h3da2a1a15bce1313E }>, align 8
@202 = private unnamed_addr constant [16 x i8] c"ListFeaturesArgs", align 1
@203 = private unnamed_addr constant [15 x i8] c"exclude_feature", align 1
@204 = private unnamed_addr constant [15 x i8] c"EXCLUDE_FEATURE", align 1
@205 = private unnamed_addr constant [75 x i8] c"Feature to exclude from the list. Use a comma to separate multiple features", align 1
@206 = private unnamed_addr constant [15 x i8] c"exclude-feature", align 1
@207 = private unnamed_addr constant [40 x i8] c"List features available in the workspace", align 1
@208 = private unnamed_addr constant [16 x i8] c"the subcommand '", align 1
@209 = private unnamed_addr constant [19 x i8] c"' wasn't recognized", align 1
@210 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @208, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @209, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@211 = private unnamed_addr constant [49 x i8] c"a subcommand is required but one was not provided", align 1
@212 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$anyhow..context..Quoted$LT$$RF$mut$u20$core..fmt..Formatter$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h523ed37a0a9273d3E", ptr @_ZN4core3fmt5Write10write_char17h0506eeee4933de25E, ptr @_ZN4core3fmt5Write9write_fmt17h225f89dec2b0e2cbE }>, align 8
@213 = private unnamed_addr constant [54 x i8] c"the following required argument was not provided: name", align 1
@214 = private unnamed_addr constant [62 x i8] c"the following required argument was not provided: generate_new", align 1
@215 = private unnamed_addr constant [7 x i8] c"Error: ", align 1
@216 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @215, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@217 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@218 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @217, [8 x i8] c"<\00\00\00\00\00\00\00" }>, align 8
@219 = private unnamed_addr constant [87 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/sys/sync/once/futex.rs\00", align 1
@220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @219, [16 x i8] c"V\00\00\00\00\00\00\00[\00\00\00\12\00\00\00" }>, align 8
@221 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@222 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @221, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h95b0c1feceea40b6E" = private unnamed_addr constant [5 x i8] c"\05\0C\0B\0B\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h95b0c1feceea40b6E.530" = private unnamed_addr constant [5 x ptr] [ptr @132, ptr @133, ptr @134, ptr @135, ptr @136], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dca9623cfa215a3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.631 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load ptr, ptr %1, align 8
  %.fr = freeze ptr %i.d
  %.not.i2 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.promoted47 = load ptr, ptr %i.b, align 8      ; 2 uses
  %.promoted48 = load ptr, ptr %i.c, align 8      ; 8 uses
  br i1 %.not.i2, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.promoted49 = load ptr, ptr %i.g, align 8      ; 5 uses
  %i.h = icmp eq ptr %.promoted, null
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  br i1 %i.h, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.peel", label %bb.b

bb.b:                                             ; preds = %.split.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.i = icmp eq ptr %.promoted48, %.promoted47
  br i1 %i.i, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.peel

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted48, i64 32
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !67, !noalias !68
  %.sroa.025.0.copyload.peel = load ptr, ptr %.promoted48, align 8, !noalias !69 ; 2 uses
  %.sroa.627.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx.peel, i64 24, i1 false), !noalias !69
  %.not6.i.peel = icmp eq ptr %.sroa.025.0.copyload.peel, null
  br i1 %.not6.i.peel, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.peel, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.peel, %bb.b
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.peel unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit.split-lp", !noalias !70

_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.peel: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.peel
  store ptr null, ptr %i.a, align 8, !alias.scope !64, !noalias !70
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.peel"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.peel": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.peel, %.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.k = icmp eq ptr %.promoted49, %i.f
  br i1 %i.k, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.peel"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.peel": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.peel"
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted49, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !73, !noalias !74
  %.sroa.0.0.copyload10.peel = load i64, ptr %.promoted49, align 8, !noalias !73 ; 3 uses
  %.sroa.8.0..sroa_idx11.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 8
  %.sroa.8.sroa.0.0.copyload.peel = load ptr, ptr %.sroa.8.0..sroa_idx11.peel, align 8, !noalias !73 ; 6 uses
  %.not1.peel = icmp eq i64 %.sroa.0.0.copyload10.peel, -9223372036854775808
  br i1 %.not1.peel, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.peel"
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 16
  %.sroa.8.sroa.5.0.copyload.peel = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx.peel, align 8, !noalias !73 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.peel) ]
  %i.m = icmp ult i64 %.sroa.8.sroa.5.0.copyload.peel, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload.peel, i64 %.sroa.8.sroa.5.0.copyload.peel ; 3 uses
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %.split.peel.next unwind label %.loopexit.split-lp

.split.peel.next:                                 ; preds = %bb.c
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.peel, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %i.n, ptr %i.b, align 8
  br label %.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  %.not.i.us = icmp eq ptr %.promoted, null
  br i1 %.not.i.us, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.us", label %bb.d

bb.d:                                             ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.o = icmp eq ptr %.promoted48, %.promoted47
  br i1 %i.o, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.us, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.us

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.us: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.promoted48, i64 32
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !78, !noalias !68
  %.sroa.025.0.copyload.us = load ptr, ptr %.promoted48, align 8, !noalias !79 ; 2 uses
  %.sroa.627.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.promoted48, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx.us, i64 24, i1 false), !noalias !79
  %.not6.i.us = icmp eq ptr %.sroa.025.0.copyload.us, null
  br i1 %.not6.i.us, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.us, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.us: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.us, %bb.d
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.us unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.us", !noalias !70

_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.us: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.us
  store ptr null, ptr %i.a, align 8, !alias.scope !75, !noalias !70
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.us"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.us": ; preds = %.split.us, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.us": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.us
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i"

.split:                                           ; preds = %.split.peel.next, %bb.l
  %i.r = phi ptr [ %i.x, %bb.l ], [ %i.l, %.split.peel.next ] ; 5 uses
  %i.s = phi ptr [ %.sroa.8.sroa.0.0.copyload, %bb.l ], [ %.sroa.8.sroa.0.0.copyload.peel, %.split.peel.next ] ; 4 uses
  %i.t = phi ptr [ %i.z, %bb.l ], [ %i.n, %.split.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i: ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !78, !noalias !68
  %.sroa.025.0.copyload = load ptr, ptr %i.s, align 8, !noalias !79 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx, i64 24, i1 false), !noalias !79
  %.not6.i = icmp eq ptr %.sroa.025.0.copyload, null
  br i1 %.not6.i, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i, label %.split51.us

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i: ; preds = %.split, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34 unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit", !noalias !70

_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !75, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.w = icmp eq ptr %i.r, %i.f
  br i1 %i.w, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit"

common.resume:                                    ; preds = %bb.k, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i7", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.us-phi53, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i" ], [ %i.ai, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i7" ], [ %lpad.phi60, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit.split-lp": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit.split-lp", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.us"
  %.us-phi53 = phi { ptr, i32 } [ %i.q, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.us" ], [ %lpad.loopexit, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit" ], [ %lpad.loopexit.split-lp, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i.split.loopexit.split-lp" ]
  store ptr null, ptr %i.a, align 8, !alias.scope !75, !noalias !70
  br label %common.resume

.split51.us:                                      ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.peel, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.us
  %.us-phi = phi ptr [ %.sroa.025.0.copyload.us, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.us ], [ %.sroa.025.0.copyload.peel, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i.peel ], [ %.sroa.025.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  store ptr %.us-phi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !alias.scope !82, !noalias !74
  %.sroa.0.0.copyload10 = load i64, ptr %i.r, align 8, !noalias !82 ; 3 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !82 ; 6 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload10, -9223372036854775808
  br i1 %.not1, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread", label %bb.f

bb.e:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit9, %.split51.us
  ret void

bb.f:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit"
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx, align 8, !noalias !82 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.y = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 3 uses
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %.loopexit

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit.thread34, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.us"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !84, !noalias !83, !noundef !9
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !87, !noalias !88, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !87, !noalias !88, !nonnull !9, !noundef !9 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i8, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i4

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i4: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ah, ptr %i.ae, align 8, !alias.scope !87, !noalias !88
  %.sroa.029.0.copyload = load ptr, ptr %i.af, align 8, !noalias !89 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx, i64 24, i1 false), !noalias !89
  %.not6.i6 = icmp eq ptr %.sroa.029.0.copyload, null
  br i1 %.not6.i6, label %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i8, label %bb.i

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h6f14e915050abeedE.exit.thread"
  store ptr null, ptr %0, align 8, !alias.scope !83, !noalias !84
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit9

_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i8: ; preds = %bb.g, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i4
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.j unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i7", !noalias !83

bb.i:                                             ; preds = %bb.j, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i4
  %.sroa.029.0 = phi ptr [ null, %bb.j ], [ %.sroa.029.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.i4 ]
  store ptr %.sroa.029.0, ptr %0, align 8, !noalias !84
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, i64 24, i1 false), !noalias !84
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit9

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i8
  store ptr null, ptr %i.aa, align 8, !alias.scope !84, !noalias !83
  br label %bb.i

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h9a66b20ff7008e24E.exit.i7": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hf6e362f6de8309ebE.exit.thread.i8
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aa, align 8, !alias.scope !84, !noalias !83
  br label %common.resume

_ZN4core4iter8adapters7flatten17and_then_or_clear17h24093b6b6a893d73E.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631)
  br label %bb.e

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa = phi ptr [ %i.z, %.loopexit ], [ %i.n, %.loopexit.split-lp ]
  %.sroa.0.0.copyload10.lcssa = phi i64 [ %.sroa.0.0.copyload10, %.loopexit ], [ %.sroa.0.0.copyload10.peel, %.loopexit.split-lp ]
  %.sroa.8.sroa.0.0.copyload.lcssa = phi ptr [ %.sroa.8.sroa.0.0.copyload, %.loopexit ], [ %.sroa.8.sroa.0.0.copyload.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp ]
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.lcssa, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %.lcssa, ptr %i.b, align 8
  br label %common.resume

bb.l:                                             ; preds = %bb.f
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %i.z, ptr %i.b, align 8
  br label %.split, !llvm.loop !63
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !154, !noalias !155 ; 2 uses
  %i.d = icmp eq i64 %.promoted.i, 0
  br i1 %i.d, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h2369e526437a9c24E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.promoted16.i = load i64, ptr %0, align 8, !alias.scope !153, !noalias !155
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.promoted18.i = load ptr, ptr %i.e, align 8, !alias.scope !153, !noalias !155
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.i, align 8, !alias.scope !153, !noalias !155
  %i.h = trunc nuw i64 %.promoted16.i to i1
  br label %bb.b

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h704454d26fa041f5E.exit.i.i.i.i.i.i.i"
  %i.i = icmp eq i64 %i.l, 0
  br i1 %i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h2369e526437a9c24E.exit, label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i", %.lr.ph.i
  %.sroa.37.0.copyload.i.pre.i.i20.i = phi i64 [ %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted.i, %.lr.ph.i ], [ %.sroa.7.0.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i" ] ; 6 uses
  %.sroa.07.0.i.i.i.i19.i = phi ptr [ %.promoted18.i, %.lr.ph.i ], [ %.sroa.07.0.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i" ] ; 2 uses
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.l, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i" ]
  %i.k = phi i1 [ %i.h, %.lr.ph.i ], [ true, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hec66f134c3869e53E.exit.loopexit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.l = add i64 %i.j, -1                         ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !154, !noalias !155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  br i1 %i.k, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i19.i, null
  br i1 %.not.i.i.i.i, label %bb.d, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit_crit_edge.i.i.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit_crit_edge.i.i.i": ; preds = %bb.c
  %.sroa.26.0.copyload.i.pre.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !159, !noalias !155
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %.sroa.012.013.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !160, !noalias !155, !nonnull !9, !noundef !9 ; 3 uses
  %i.m = icmp eq i64 %.sroa.37.0.copyload.i.pre.i.i20.i, 0
  br i1 %i.m, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %.sroa.37.0.copyload.i.pre.i.i20.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %.sroa.012.013.i.i.i.i, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %.sroa.37.0.copyload.i.pre.i.i20.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.prol, i64 544
  %i.o = add i64 %.sroa.011.014.i.i.i.i.prol, -1  ; 2 uses
  %.sroa.012.0.i.i.i.i.prol = load ptr, ptr %i.n, align 8, !noalias !161, !nonnull !9, !noundef !9 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !102

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.unr = phi ptr [ %.sroa.012.013.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.unr = phi i64 [ %.sroa.37.0.copyload.i.pre.i.i20.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp ult i64 %.sroa.37.0.copyload.i.pre.i.i20.i, 8
  br i1 %i.p, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.d
  %.sroa.012.0.lcssa.i.i.i.i = phi ptr [ %.sroa.012.013.i.i.i.i, %bb.d ], [ %.sroa.012.0.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.7, %.lr.ph.i.i.i.i ]
  store i64 1, ptr %0, align 8, !alias.scope !160, !noalias !155
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.012.015.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.7, %.lr.ph.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i, i64 544
  %.sroa.012.0.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 544
  %.sroa.012.0.i.i.i.i.1 = load ptr, ptr %i.r, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.1, i64 544
  %.sroa.012.0.i.i.i.i.2 = load ptr, ptr %i.s, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.2, i64 544
  %.sroa.012.0.i.i.i.i.3 = load ptr, ptr %i.t, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.3, i64 544
  %.sroa.012.0.i.i.i.i.4 = load ptr, ptr %i.u, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.4, i64 544
  %.sroa.012.0.i.i.i.i.5 = load ptr, ptr %i.v, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.5, i64 544
  %.sroa.012.0.i.i.i.i.6 = load ptr, ptr %i.w, align 8, !noalias !161, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.6, i64 544
  %i.y = add i64 %.sroa.011.014.i.i.i.i, -8       ; 2 uses
  %.sroa.012.0.i.i.i.i.7 = load ptr, ptr %i.x, align 8, !noalias !161, !nonnull !9, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit.i.i.i": ; preds = %._crit_edge.i.i.i.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7562d70b692d822aE.exit_crit_edge.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4a7a0569579314dE":bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !9 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !18, !invariant.load !9 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h2f8817071a007e4fE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #32
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h2f8817071a007e4fE.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !18, !invariant.load !9 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #32
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #32
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h2f8817071a007e4fE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #32
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h9f5b73f5ad46332bE.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h9f5b73f5ad46332bE.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h2f8817071a007e4fE.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h6febe175de8157c8E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !687, !nonnull !9, !align !15, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val16.i = load i64, ptr %i.b, align 8, !alias.scope !687 ; 2 uses
  store i8 0, ptr %.val.i, align 1, !noalias !687
  %i.c = icmp eq i64 %.val16.i, 0
  br i1 %i.c, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h869d7eb481ecfcdbE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val16.i, i64 noundef 1) #32
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h869d7eb481ecfcdbE.exit.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h869d7eb481ecfcdbE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i", %bb.a
  invoke void @"_ZN102_$LT$std..sys..process..unix..common..cstring_array..CStringArray$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1123a5ae1e02a022E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h869d7eb481ecfcdbE.exit.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !688 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i, 0
  br i1 %i.e, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !688, !nonnull !9, !noundef !9
  %i.g = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %.body.i

bb.d:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h869d7eb481ecfcdbE.exit.i"
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !688 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr81drop_in_place$LT$std..sys..process..unix..common..cstring_array..CStringArray$GT$17hb54285977dbb130bE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !688, !nonnull !9, !noundef !9
  %i.j = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr81drop_in_place$LT$std..sys..process..unix..common..cstring_array..CStringArray$GT$17hb54285977dbb130bE.exit.i"

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h01cd89530d10d61fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k)
          to label %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit.i" unwind label %bb.t

"_ZN4core3ptr81drop_in_place$LT$std..sys..process..unix..common..cstring_array..CStringArray$GT$17hb54285977dbb130bE.exit.i": ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h01cd89530d10d61fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.l)
          to label %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit41.i" unwind label %bb.g

"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit.i": ; preds = %bb.g, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %.body.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val23.i = load ptr, ptr %i.m, align 8, !alias.scope !687, !align !15, !noundef !9 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val24.i = load i64, ptr %i.n, align 8, !alias.scope !687 ; 2 uses
  %i.o = icmp eq ptr %.val23.i, null
  br i1 %i.o, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit.i"
  store i8 0, ptr %.val23.i, align 1
  %i.p = icmp eq i64 %.val24.i, 0
  br i1 %i.p, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %.val24.i, i64 noundef 1) #32
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i"

bb.g:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..sys..process..unix..common..cstring_array..CStringArray$GT$17hb54285977dbb130bE.exit.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit.i"

"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit41.i": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..sys..process..unix..common..cstring_array..CStringArray$GT$17hb54285977dbb130bE.exit.i"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val21.i = load ptr, ptr %i.r, align 8, !alias.scope !687, !align !15, !noundef !9 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val22.i = load i64, ptr %i.s, align 8, !alias.scope !687 ; 2 uses
  %i.t = icmp eq ptr %.val21.i, null
  br i1 %i.t, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit41.i"
  store i8 0, ptr %.val21.i, align 1
  %i.u = icmp eq i64 %.val22.i, 0
  br i1 %i.u, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i42.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i42.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %.val22.i, i64 noundef 1) #32
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i", %bb.f, %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit.i"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val19.i = load ptr, ptr %i.v, align 8, !alias.scope !687, !align !15, !noundef !9 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val20.i = load i64, ptr %i.w, align 8, !alias.scope !687 ; 2 uses
  %i.x = icmp eq ptr %.val19.i, null
  br i1 %i.x, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i"
  store i8 0, ptr %.val19.i, align 1
  %i.y = icmp eq i64 %.val20.i, 0
  br i1 %i.y, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i44.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i44.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %.val20.i, i64 noundef 1) #32
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i42.i", %bb.h, %"_ZN4core3ptr55drop_in_place$LT$std..sys..process..env..CommandEnv$GT$17h3b083f44e00b9ba8E.exit41.i"
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val17.i = load ptr, ptr %i.z, align 8, !alias.scope !687, !align !15, !noundef !9 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val18.i = load i64, ptr %i.aa, align 8, !alias.scope !687 ; 2 uses
  %i.ab = icmp eq ptr %.val17.i, null
  br i1 %i.ab, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i"
  store i8 0, ptr %.val17.i, align 1
  %i.ac = icmp eq i64 %.val18.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i46.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i46.i": ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val18.i, i64 noundef 1) #32
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i44.i", %bb.i, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr251drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17ha271931787bccc27E"(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #30
          to label %bb.k unwind label %bb.t

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i46.i", %bb.j, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit43.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr251drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17ha271931787bccc27E"(ptr noalias noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i"
  %.pn8.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %.pn2.i, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i" ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val27.i = load ptr, ptr %i.af, align 8, !alias.scope !687, !align !689, !noundef !9 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val28.i = load i64, ptr %i.ag, align 8, !alias.scope !687 ; 2 uses
  %i.ah = icmp eq ptr %.val27.i, null
  %i.ai = icmp eq i64 %.val28.i, 0
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.k
  %1 = shl nuw nsw i64 %.val28.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef %1, i64 noundef 4) #32
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit.i"

bb.l:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit47.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val25.i = load ptr, ptr %i.ak, align 8, !alias.scope !687, !align !689, !noundef !9 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val26.i = load i64, ptr %i.al, align 8, !alias.scope !687 ; 2 uses
  %i.am = icmp eq ptr %.val25.i, null
  %i.an = icmp eq i64 %.val26.i, 0
  %or.cond.i48.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i48.i, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit50.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i49.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i49.i": ; preds = %bb.m
  %2 = shl nuw nsw i64 %.val26.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef %2, i64 noundef 4) #32
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit50.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val39.i = load i32, ptr %i.ao, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i.i = icmp eq i32 %.val39.i, 3
  br i1 %cond.i.i, label %bb.n, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit.i"

bb.n:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val40.i = load i32, ptr %i.ap, align 4, !alias.scope !687
  %i.aq = tail call noundef i32 @close(i32 noundef %.val40.i) #32 ; 0 uses
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit50.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i49.i", %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val37.i = load i32, ptr %i.ar, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i51.i = icmp eq i32 %.val37.i, 3
  br i1 %cond.i51.i, label %bb.o, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit52.i"

bb.o:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit50.i"
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val38.i = load i32, ptr %i.as, align 4, !alias.scope !687
  %i.at = tail call noundef i32 @close(i32 noundef %.val38.i) #32 ; 0 uses
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit52.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit.i": ; preds = %bb.n, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit.i"
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val35.i = load i32, ptr %i.au, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i53.i = icmp eq i32 %.val35.i, 3
  br i1 %cond.i53.i, label %bb.p, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit54.i"

bb.p:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit.i"
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val36.i = load i32, ptr %i.av, align 4, !alias.scope !687
  %i.aw = tail call noundef i32 @close(i32 noundef %.val36.i) #32 ; 0 uses
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit54.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit52.i": ; preds = %bb.o, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17h691b2c8519d6eecaE.exit50.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val33.i = load i32, ptr %i.ax, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i55.i = icmp eq i32 %.val33.i, 3
  br i1 %cond.i55.i, label %bb.q, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit56.i"

bb.q:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit52.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val34.i = load i32, ptr %i.ay, align 4, !alias.scope !687
  %i.az = tail call noundef i32 @close(i32 noundef %.val34.i) #32 ; 0 uses
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit56.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit54.i": ; preds = %bb.p, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val31.i = load i32, ptr %i.ba, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i57.i = icmp eq i32 %.val31.i, 3
  br i1 %cond.i57.i, label %bb.r, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit58.i"

bb.r:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit54.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val32.i = load i32, ptr %i.bb, align 4, !alias.scope !687
  %i.bc = tail call noundef i32 @close(i32 noundef %.val32.i) #32 ; 0 uses
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit58.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit56.i": ; preds = %bb.q, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit52.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val29.i = load i32, ptr %i.bd, align 8, !range !690, !alias.scope !687, !noundef !9
  %cond.i59.i = icmp eq i32 %.val29.i, 3
  br i1 %cond.i59.i, label %bb.s, label %"_ZN4core3ptr61drop_in_place$LT$std..sys..process..unix..common..Command$GT$17hd4b7a05aed8291abE.exit"

bb.s:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit56.i"
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val30.i = load i32, ptr %i.be, align 4, !alias.scope !687
  %i.bf = tail call noundef i32 @close(i32 noundef %.val30.i) #32 ; 0 uses
  br label %"_ZN4core3ptr61drop_in_place$LT$std..sys..process..unix..common..Command$GT$17hd4b7a05aed8291abE.exit"

bb.t:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..ffi..c_str..CString$GT$$GT$17hec5646e2a0d1a787E.exit45.i", %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit58.i": ; preds = %bb.r, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit54.i"
  resume { ptr, i32 } %.pn8.i

"_ZN4core3ptr61drop_in_place$LT$std..sys..process..unix..common..Command$GT$17hd4b7a05aed8291abE.exit": ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$std..sys..process..unix..common..Stdio$GT$$GT$17haedab8571da007ffE.exit56.i", %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$cargo_metadata..NodeDep$GT$17hb70773f61ad9ed92E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !17, !alias.scope !22, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !695
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load i64, ptr %i.c, align 8, !range !17, !alias.scope !22, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN4core3ptr46drop_in_place$LT$cargo_metadata..PackageId$GT$17ha9c0d20a0218ffb7E.exit7", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val3, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !696
  br label %"_ZN4core3ptr46drop_in_place$LT$cargo_metadata..PackageId$GT$17ha9c0d20a0218ffb7E.exit7"

"_ZN4core3ptr46drop_in_place$LT$cargo_metadata..PackageId$GT$17ha9c0d20a0218ffb7E.exit7": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$cargo_metadata..DepKindInfo$GT$$GT$17h89479e2005b13922E"(ptr noalias noundef align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr44drop_in_place$LT$cargo_metadata..Package$GT$17h3009958543e641e5E"(ptr noalias noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val69 = load i64, ptr %0, align 8, !range !17, !alias.scope !22, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val69, 0
  br i1 %i.a, label %"_ZN4core3ptr48drop_in_place$LT$cargo_metadata..PackageName$GT$17hcec743c33fdeaf94E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val70 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70, i64 noundef %.val69, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !783
  br label %"_ZN4core3ptr48drop_in_place$LT$cargo_metadata..PackageName$GT$17hcec743c33fdeaf94E.exit"

"_ZN4core3ptr48drop_in_place$LT$cargo_metadata..PackageName$GT$17hcec743c33fdeaf94E.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr48drop_in_place$LT$cargo_metadata..PackageName$GT$17hcec743c33fdeaf94E.exit"
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.d

"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i": ; preds = %"_ZN4core3ptr48drop_in_place$LT$cargo_metadata..PackageName$GT$17hcec743c33fdeaf94E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.body:                                            ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.k, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val73 = load i64, ptr %i.i, align 8, !range !17, !alias.scope !22, !noundef !9 ; 2 uses
  %i.j = icmp eq i64 %.val73, 0
  br i1 %i.j, label %"_ZN4core3ptr46drop_in_place$LT$cargo_metadata..PackageId$GT$17ha9c0d20a0218ffb7E.exit", label %bb.h

bb.e:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i"
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !784, !nonnull !9, !noundef !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !784, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.q, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit" ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.q = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.p, align 8, !range !17, !alias.scope !786, !noalias !784, !noundef !9 ; 2 uses
  %i.r = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.r, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val9.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !785, !noalias !784, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !787
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i
  %i.t = icmp eq i64 %i.q, %.val1.i
  br i1 %i.t, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit"
  %.val2.i = load i64, ptr %i.l, align 8, !range !17, !alias.scope !784, !noundef !9 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a
          to label %.body.i123.i.i unwind label %bb.gq, !noalias !2859

bb.gq:                                            ; preds = %bb.gp
  %i.yc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2859
  unreachable

.body.i123.i.i:                                   ; preds = %"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E.exit.i.i", %bb.gp
  %.pn.i.i.i = phi { ptr, i32 } [ %i.yr, %"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E.exit.i.i" ], [ %i.yb, %bb.gp ] ; 2 uses
  %.val63.i.i.i = load i64, ptr %i.cw, align 8, !range !17, !alias.scope !2860, !noalias !2747, !noundef !9 ; 2 uses
  %i.yd = icmp eq i64 %.val63.i.i.i, 0
  br i1 %i.yd, label %.body.i.i, label %bb.gr

bb.gr:                                            ; preds = %.body.i123.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val64.i.i.i = load ptr, ptr %i.ye, align 8, !alias.scope !2856, !noalias !2747, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64.i.i.i, i64 noundef %.val63.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2861
  br label %.body.i.i

bb.gs:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.xz, ptr noundef nonnull align 8 dereferenceable(256) %i.bd, i64 256, i1 false), !noalias !2859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2857
  %i.yf = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val66.i.i.i = load ptr, ptr %i.yf, align 8, !alias.scope !2856, !noalias !2747, !nonnull !9, !noundef !9 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.val67.i.i.i = load i64, ptr %i.yg, align 8, !alias.scope !2856, !noalias !2747, !noundef !9 ; 7 uses
  %i.yh = icmp slt i64 %.val67.i.i.i, 0
  br i1 %i.yh, label %bb.gt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gs
  %i.yi = icmp eq i64 %.val67.i.i.i, 0
  br i1 %i.yi, label %bb.gu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2862
  %i.yj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val67.i.i.i, i64 noundef range(i64 1, 9) 1) #32, !noalias !2862 ; 2 uses
  %i.yk = icmp eq ptr %i.yj, null
  br i1 %i.yk, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.gs
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.gs ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.val67.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #29
          to label %.noexc68.i.i.i unwind label %bb.gy, !noalias !2859

.noexc68.i.i.i:                                   ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.yj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val66.i.i.i, i64 %.val67.i.i.i, i1 false), !noalias !2863
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  %i.yl = load i64, ptr %i.xz, align 8, !range !19, !alias.scope !2867, !noalias !2868, !noundef !9
  %i.ym = icmp eq i64 %i.yl, 2
  br i1 %i.ym, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %.val.i.i.i.i.i8.i = load i64, ptr %i.yn, align 8, !range !17, !alias.scope !2870, !noalias !2868, !noundef !9 ; 2 uses
  %i.yo = icmp eq i64 %.val.i.i.i.i.i8.i, 0
  br i1 %i.yo, label %bb.gw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i.i.i.i": ; preds = %bb.gv
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.yp, align 8, !alias.scope !2871, !noalias !2868, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2872
  br label %bb.gw

bb.gw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i.i.i.i", %bb.gv, %bb.gu
  store i64 0, ptr %i.xz, align 8, !alias.scope !2864, !noalias !2868
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i64 %.val67.i.i.i, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i.i.i.i, align 8, !alias.scope !2873, !noalias !2859
  %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !2873, !noalias !2859
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  store i64 %.val67.i.i.i, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !2873, !noalias !2859
  %.val.i.i.i = load i64, ptr %i.cw, align 8, !range !17, !alias.scope !2860, !noalias !2747, !noundef !9 ; 2 uses
  %i.yq = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.yq, label %"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h1b3d3dffc89f4c9dE.exit.i.i", label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2874
  br label %"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h1b3d3dffc89f4c9dE.exit.i.i"

bb.gy:                                            ; preds = %bb.gt
  %i.yr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..error..ErrorInner$GT$17h94f2950e30a16bb5E"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.xz)
          to label %"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E.exit.i.i" unwind label %.body132.i.i, !noalias !2859

.body132.i.i:                                     ; preds = %bb.gy
  %i.ys = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xz, i64 noundef 256, i64 noundef 8) #32, !noalias !2859
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2859
  unreachable

"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E.exit.i.i": ; preds = %bb.gy
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xz, i64 noundef 256, i64 noundef 8) #32, !noalias !2859
  br label %.body.i123.i.i

"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h1b3d3dffc89f4c9dE.exit.i.i": ; preds = %bb.gx, %bb.gw
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17hc0926233b3413cd1E"(ptr noalias noundef align 8 dereferenceable(56) %i.cz)
          to label %bb.gz unwind label %bb.gk, !noalias !2748

bb.gz:                                            ; preds = %"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h1b3d3dffc89f4c9dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2747
  %.val.i.i = load i64, ptr %i.da, align 8, !range !17, !alias.scope !2853, !noalias !2747, !noundef !9 ; 2 uses
  %i.yt = icmp eq i64 %.val.i.i, 0
  br i1 %i.yt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit127.i.i", label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.val66.i.i = load ptr, ptr %i.pw, align 8, !noalias !2747, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2875
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit127.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit127.i.i": ; preds = %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !2747
  br label %.thread.i

bb.hb:                                            ; preds = %.body.i.i
  %i.yu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2748
  unreachable

.body.i:                                          ; preds = %bb.hg, %bb.hc, %bb.gj, %bb.gi
  %.pn.i = phi { ptr, i32 } [ %i.yz, %bb.hg ], [ %i.yv, %bb.hc ], [ %.pn.i.i, %bb.gj ], [ %.pn.i.i, %bb.gi ]
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17hc0926233b3413cd1E"(ptr noalias noundef align 8 dereferenceable(56) %i.dt) #30
          to label %common.resume unwind label %bb.hi, !noalias !2599

bb.hc:                                            ; preds = %bb.he, %bb.cp, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit127.i.i", %bb.cp
  %.sroa.9.1.ph.in.i = phi ptr [ %i.xz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit127.i.i" ], [ %i.py, %bb.cp ]
  %.sroa.9.1.ph.i = ptrtoint ptr %.sroa.9.1.ph.in.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2599
  br label %bb.he

bb.hd:                                            ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2599
  %i.yw = icmp eq i64 %.sroa.0.0.i, -9223372036854775804
  br i1 %i.yw, label %bb.he, label %_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit

bb.he:                                            ; preds = %bb.hd, %.thread.i
  %.sroa.9.143.i = phi i64 [ %.sroa.9.1.ph.i, %.thread.i ], [ %.sroa.9.0.i, %bb.hd ]
  %i.yx = inttoptr i64 %.sroa.9.143.i to ptr      ; 3 uses
  %i.yy = invoke fastcc noundef nonnull align 8 ptr @_ZN12clap_builder6derive12format_error17he104f74b4b7bf874E(ptr noalias noundef nonnull align 8 %i.yx)
          to label %bb.hf unwind label %bb.hc, !noalias !2599 ; 0 uses

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !2599
  store ptr %i.yx, ptr %i.dr, align 8, !noalias !2599
  invoke fastcc void @"_ZN12clap_builder5error14Error$LT$F$GT$4exit17hb58464fd3048d189E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dr) #29
          to label %bb.hh unwind label %bb.hg, !noalias !2599

bb.hg:                                            ; preds = %bb.hf
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E"(ptr %i.yx) #30
          to label %.body.i unwind label %bb.hi, !noalias !2599

bb.hh:                                            ; preds = %bb.hf
  unreachable

bb.hi:                                            ; preds = %bb.hg, %.body.i
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2599
  unreachable

_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit: ; preds = %bb.hd
  %i.zb = inttoptr i64 %.sroa.9.0.i to ptr        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(223) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(223) %.sroa.28.i, i64 223, i1 false)
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17hc0926233b3413cd1E"(ptr noalias noundef align 8 dereferenceable(56) %i.dt), !noalias !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i)
  %i.zc = xor i64 %.sroa.0.0.i, -9223372036854775808
  %i.zd = icmp slt i64 %.sroa.0.0.i, 0
  %i.ze = select i1 %i.zd, i64 %i.zc, i64 1
  switch i64 %i.ze, label %bb.hj [
    i64 0, label %bb.hk
    i64 1, label %bb.kk
    i64 2, label %bb.kl
    i64 3, label %bb.oo
  ]

bb.hj:                                            ; preds = %_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit
  unreachable

bb.hk:                                            ; preds = %_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.1.i) ]
  %i.zf = icmp ult i64 %.sroa.24.1.i, 384307168202282326
  call void @llvm.assume(i1 %i.zf)
  %.idx.i = mul nuw nsw i64 %.sroa.24.1.i, 24
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.19.1.i, i64 %.idx.i
  store ptr %.sroa.19.1.i, ptr %i.bb, align 8, !alias.scope !2877, !noalias !2878
  %i.zh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.9.0.i, ptr %i.zh, align 8, !alias.scope !2877, !noalias !2878
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.19.1.i, ptr %i.zi, align 8, !alias.scope !2877, !noalias !2878
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.zg, ptr %i.zj, align 8, !alias.scope !2877, !noalias !2878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2879
  %i.zk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 2 uses
  %i.zm = load i8, ptr %i.zl, align 8, !range !26, !noalias !2880, !noundef !9
  %i.zn = trunc nuw i8 %i.zm to i1
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sink.i.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sink.i.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sink.i.sroa.gep69.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sink.i.sroa.gep71.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sink.i.sroa.gep72.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sink.i.sroa.gep74.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sink.i.sroa.gep75.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br i1 %i.zn, label %._ZN4core3ops8function6FnOnce9call_once17h14ff065ddf9b2044E.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0f1402691206c23eE.exit.i.i.i.i.i.i", !prof !16

._ZN4core3ops8function6FnOnce9call_once17h14ff065ddf9b2044E.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.hk
  %.pre.i.i.i.i.i.i = load i64, ptr %i.zk, align 8, !noalias !2881
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2881
  br label %bb.hl

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0f1402691206c23eE.exit.i.i.i.i.i.i": ; preds = %bb.hk
  %i.zo = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i14 unwind label %bb.ib, !noalias !2879 ; 2 uses

.noexc.i.i.i14:                                   ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0f1402691206c23eE.exit.i.i.i.i.i.i"
  %i.zp = extractvalue { i64, i64 } %i.zo, 0
  %i.zq = extractvalue { i64, i64 } %i.zo, 1      ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store i64 %i.zq, ptr %i.zr, align 8, !noalias !2882
  store i8 1, ptr %i.zl, align 8, !noalias !2882
  br label %bb.hl

bb.hl:                                            ; preds = %.noexc.i.i.i14, %._ZN4core3ops8function6FnOnce9call_once17h14ff065ddf9b2044E.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi18.i.i.i = phi i64 [ %i.zq, %.noexc.i.i.i14 ], [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h14ff065ddf9b2044E.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.zp, %.noexc.i.i.i14 ], [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h14ff065ddf9b2044E.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.zs = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.zs, ptr %i.zk, align 8, !noalias !2881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !2879
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2879
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %.pre-phi18.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !2879
  call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %.not.i.i.i15 = icmp eq i64 %.sroa.24.1.i, 0
  br i1 %.not.i.i.i15, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i", label %bb.hm, !prof !16

.body.i.i.i.i.i:                                  ; preds = %bb.hy, %bb.hx
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h2028026093edaa9fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as) #30, !noalias !2885
  br label %.body.i.i.i16

bb.hm:                                            ; preds = %bb.hl
  %i.zu = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd6539d8f5961372eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at, i64 noundef %.sroa.24.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.43.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i" unwind label %bb.ia, !noalias !2886 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i": ; preds = %bb.hm, %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !2890
  call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  %i.zv = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !2891, !noalias !2893, !nonnull !9, !noundef !9 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8, !alias.scope !2891, !noalias !2893 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %i.zw
  br i1 %.not5.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i.i18:                         ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i"
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.zz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %bb.hn

bb.hn:                                            ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i18
  %i.aaa = phi ptr [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.aab, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aaa, align 8, !noalias !2894 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2894 ; 6 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2894 ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2896
  %i.aac = load <2 x i64>, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !alias.scope !2897, !noalias !2898 ; 3 uses
  %i.aad = shufflevector <2 x i64> %i.aac, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aae = xor <2 x i64> %i.aad, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.aae, ptr %i.ar, align 16, !alias.scope !2899, !noalias !2896
  %i.aaf = shufflevector <2 x i64> %i.aac, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.aag = xor <2 x i64> %i.aaf, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.aag, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !2899, !noalias !2896
  store <2 x i64> %i.aac, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !2899, !noalias !2896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !2899, !noalias !2896
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i) ]
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hc12f8cdcc3e95aa8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.3.0.copyload.i.i.i.i.i.i.i.i), !noalias !2900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2901
  store i8 -1, ptr %i.aq, align 1, !noalias !2901
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hc12f8cdcc3e95aa8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aq, i64 noundef 1), !noalias !2902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2901
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 16, !alias.scope !2903, !noalias !2896
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2903, !noalias !2896
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !2903, !noalias !2896 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2903, !noalias !2896
  %i.aah = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !2903, !noalias !2896, !noundef !9
  %i.aai = shl i64 %i.aah, 56
  %i.aaj = load i64, ptr %i.zy, align 8, !alias.scope !2903, !noalias !2896, !noundef !9
  %i.aak = or i64 %i.aai, %i.aaj                  ; 2 uses
  %i.aal = xor i64 %i.aak, %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aam = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aan = add i64 %i.aal, %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aao = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 13)
  %i.aap = xor i64 %i.aao, %i.aam                 ; 3 uses
  %i.aaq = call i64 @llvm.fshl.i64(i64 %i.aal, i64 %i.aal, i64 16)
  %i.aar = xor i64 %i.aaq, %i.aan                 ; 3 uses
  %i.aas = call i64 @llvm.fshl.i64(i64 %i.aam, i64 %i.aam, i64 32)
  %i.aat = add i64 %i.aan, %i.aap                 ; 3 uses
  %i.aau = add i64 %i.aar, %i.aas                 ; 2 uses
  %i.aav = call i64 @llvm.fshl.i64(i64 %i.aap, i64 %i.aap, i64 17)
  %i.aaw = xor i64 %i.aat, %i.aav                 ; 3 uses
  %i.aax = call i64 @llvm.fshl.i64(i64 %i.aar, i64 %i.aar, i64 21)
  %i.aay = xor i64 %i.aax, %i.aau                 ; 3 uses
  %i.aaz = call i64 @llvm.fshl.i64(i64 %i.aat, i64 %i.aat, i64 32)
  %i.aba = xor i64 %i.aau, %i.aak
  %i.abb = xor i64 %i.aaz, 255
  %i.abc = add i64 %i.aba, %i.aaw                 ; 3 uses
  %i.abd = add i64 %i.aay, %i.abb                 ; 2 uses
  %i.abe = call i64 @llvm.fshl.i64(i64 %i.aaw, i64 %i.aaw, i64 13)
  %i.abf = xor i64 %i.abc, %i.abe                 ; 3 uses
  %i.abg = call i64 @llvm.fshl.i64(i64 %i.aay, i64 %i.aay, i64 16)
  %i.abh = xor i64 %i.abg, %i.abd                 ; 3 uses
  %i.abi = call i64 @llvm.fshl.i64(i64 %i.abc, i64 %i.abc, i64 32)
  %i.abj = add i64 %i.abf, %i.abd                 ; 3 uses
  %i.abk = add i64 %i.abh, %i.abi                 ; 2 uses
  %i.abl = call i64 @llvm.fshl.i64(i64 %i.abf, i64 %i.abf, i64 17)
  %i.abm = xor i64 %i.abj, %i.abl                 ; 3 uses
  %i.abn = call i64 @llvm.fshl.i64(i64 %i.abh, i64 %i.abh, i64 21)
  %i.abo = xor i64 %i.abn, %i.abk                 ; 3 uses
  %i.abp = call i64 @llvm.fshl.i64(i64 %i.abj, i64 %i.abj, i64 32)
  %i.abq = add i64 %i.abm, %i.abk                 ; 3 uses
  %i.abr = add i64 %i.abo, %i.abp                 ; 2 uses
  %i.abs = call i64 @llvm.fshl.i64(i64 %i.abm, i64 %i.abm, i64 13)
  %i.abt = xor i64 %i.abs, %i.abq                 ; 3 uses
  %i.abu = call i64 @llvm.fshl.i64(i64 %i.abo, i64 %i.abo, i64 16)
  %i.abv = xor i64 %i.abu, %i.abr                 ; 3 uses
  %i.abw = call i64 @llvm.fshl.i64(i64 %i.abq, i64 %i.abq, i64 32)
  %i.abx = add i64 %i.abt, %i.abr                 ; 3 uses
  %i.aby = add i64 %i.abv, %i.abw                 ; 2 uses
  %i.abz = call i64 @llvm.fshl.i64(i64 %i.abt, i64 %i.abt, i64 17)
  %i.aca = xor i64 %i.abz, %i.abx                 ; 3 uses
  %i.acb = call i64 @llvm.fshl.i64(i64 %i.abv, i64 %i.abv, i64 21)
  %i.acc = xor i64 %i.acb, %i.aby                 ; 3 uses
  %i.acd = call i64 @llvm.fshl.i64(i64 %i.abx, i64 %i.abx, i64 32)
  %i.ace = add i64 %i.aca, %i.aby
  %i.acf = add i64 %i.acc, %i.acd                 ; 2 uses
  %i.acg = call i64 @llvm.fshl.i64(i64 %i.aca, i64 %i.aca, i64 13)
  %i.ach = xor i64 %i.acg, %i.ace                 ; 3 uses
  %i.aci = call i64 @llvm.fshl.i64(i64 %i.acc, i64 %i.acc, i64 16)
  %i.acj = xor i64 %i.aci, %i.acf                 ; 2 uses
  %i.ack = add i64 %i.ach, %i.acf                 ; 3 uses
  %i.acl = call i64 @llvm.fshl.i64(i64 %i.ach, i64 %i.ach, i64 17)
  %i.acm = call i64 @llvm.fshl.i64(i64 %i.acj, i64 %i.acj, i64 21)
  %i.acn = call i64 @llvm.fshl.i64(i64 %i.ack, i64 %i.ack, i64 32)
  %i.aco = xor i64 %i.acm, %i.acl
  %i.acp = xor i64 %i.aco, %i.acn
  %i.acq = xor i64 %i.acp, %i.ack                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2896
  %i.acr = load i64, ptr %i.zt, align 8, !alias.scope !2904, !noalias !2905, !noundef !9
  %i.acs = icmp eq i64 %i.acr, 0
  br i1 %i.acs, label %bb.ho, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !14

bb.ho:                                            ; preds = %bb.hn
  %i.act = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd6539d8f5961372eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.43.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.hx, !noalias !2898 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ho, %bb.hn
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !2906, !noalias !2907, !nonnull !9, !noundef !9 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zz, align 8, !alias.scope !2906, !noalias !2907, !noundef !9 ; 4 uses
  %i.acu = lshr i64 %i.acq, 57
  %i.acv = trunc nuw nsw i64 %i.acu to i8         ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.acv, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.adv, %bb.hr ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.125.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hr ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.127.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hr ]
  %i.acw = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.adu, %bb.hr ]
  %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acx, align 1, !noalias !2908 ; 3 uses
  %i.acy = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acz = bitcast <16 x i1> %i.acy to i16        ; 2 uses
  %.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.acz, 0
  br i1 %.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i19:             ; preds = %bb.hp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.05.031.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.adk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.acz, %bb.hp ] ; 3 uses
  %i.ada = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.031.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.adb = zext nneg i16 %i.ada to i64
  %i.adc = add i64 %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.adb
  %i.add = and i64 %i.adc, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ade = sub nsw i64 0, %i.add
  %i.adf = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ade ; 2 uses
  %i.adg = getelementptr i8, ptr %i.adf, i64 -8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.adg, align 8, !noalias !2909, !noundef !9
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !12

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i19
  %i.adh = getelementptr i8, ptr %i.adf, i64 -16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.adh, align 8, !noalias !2909, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i), !alias.scope !2910, !noalias !2909
  %i.adi = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.adi, label %bb.hu, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !13

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.hp
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hq, !prof !14

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i19
  %i.adj = add i16 %.sroa.05.031.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.adk = and i16 %i.adj, %.sroa.05.031.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.adk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i19

bb.hq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adl = icmp slt <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.adm = bitcast <16 x i1> %i.adl to i16        ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.adm, 0 ; 2 uses
  %i.adn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.adm, i1 true)
  %i.ado = zext nneg i16 %i.adn to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.ado
  %i.adp = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adq = and i64 %i.adp, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.hq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.adq, %bb.hq ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adr = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ads = bitcast <16 x i1> %i.adr to i16
  %i.adt = icmp eq i16 %i.ads, 0
  br i1 %i.adt, label %bb.hr, label %bb.hs, !prof !14

bb.hr:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hq
  %.sroa.01.127.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.hq ]
  %.sroa.6.125.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.hq ]
  %i.adu = add i64 %i.acw, 16                     ; 2 uses
  %i.adv = add i64 %i.adu, %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.hp

bb.hs:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adx = load i8, ptr %i.adw, align 1, !noalias !2911, !noundef !9 ; 2 uses
  %i.ady = icmp sgt i8 %i.adx, -1
  br i1 %i.ady, label %bb.ht, label %bb.hw, !prof !14

bb.ht:                                            ; preds = %bb.hs
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !2911
  %i.adz = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.aea = bitcast <16 x i1> %i.adz to i16        ; 2 uses
  %i.aeb = icmp ne i16 %i.aea, 0
  call void @llvm.assume(i1 %i.aeb)
  %i.aec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aea, i1 true)
  %i.aed = zext nneg i16 %i.aec to i64            ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aed
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2912
  br label %bb.hw

bb.hu:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aee = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.aee, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i", label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2913
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i"

bb.hw:                                            ; preds = %bb.ht, %bb.hs
  %i.aef = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ht ], [ %i.adx, %bb.hs ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aed, %bb.ht ], [ %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  %i.aeg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aeh = and i8 %i.aef, 1
  %i.aei = zext nneg i8 %i.aeh to i64
  %i.aej = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.aek = and i64 %i.aej, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.acv, ptr %i.aeg, align 1, !noalias !2912
  %i.ael = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aek
  %i.aem = getelementptr i8, ptr %i.ael, i64 16
  store i8 %i.acv, ptr %i.aem, align 1, !noalias !2912
  %i.aen = load <2 x i64>, ptr %i.zt, align 8, !alias.scope !2915, !noalias !2916
  %i.aeo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aei, i64 0
  %i.aep = sub <2 x i64> %i.aen, %i.aeo
  store <2 x i64> %i.aep, ptr %i.zt, align 8, !alias.scope !2915, !noalias !2916
end_hunk_2
