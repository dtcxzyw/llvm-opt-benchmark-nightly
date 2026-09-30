Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-930ad21b5d8f1140.routes_macros.fdfe8b3bb0265034-cgu.0?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1160
begin_hunk_0
@144 = private unnamed_addr constant [7 x i8] c"example", align 1
@145 = private unnamed_addr constant [11 x i8] c"schema_type", align 1
@146 = private unnamed_addr constant [10 x i8] c"serde_with", align 1
@147 = private unnamed_addr constant [6 x i8] c"inline", align 1
@148 = private unnamed_addr constant [5 x i8] c"error", align 1
@149 = private unnamed_addr constant [19 x i8] c"missing_field_error", align 1
@150 = private unnamed_addr constant [8 x i8] c"try_from", align 1
@151 = private unnamed_addr constant [8 x i8] c"nullable", align 1
@152 = private unnamed_addr constant [19 x i8] c"skip_serializing_if", align 1
@153 = private unnamed_addr constant [235 x i8] c"unsupported parameter. Supported parameters are: `default`, `schema_default`, `required`, `skip`, `rename`, `example`, `schema_type`, `inline`, `error`, `missing_field_error`, `try_from`, `nullable`, `skip_serializing_if`, `serde_with`", align 1
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\05\02\00\00!\00\00\00" }>, align 8
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\00\02\00\00\22\00\00\00" }>, align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\FB\01\00\00\22\00\00\00" }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\F1\01\00\00\22\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\EC\01\00\00\22\00\00\00" }>, align 8
@159 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\E7\01\00\00\22\00\00\00" }>, align 8
@160 = private unnamed_addr constant [4 x i8] c"with", align 1
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\E4\01\00\00!\00\00\00" }>, align 8
@162 = private unnamed_addr constant [10 x i8] c"value_type", align 1
@163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\DE\01\00\00\22\00\00\00" }>, align 8
@164 = private unnamed_addr constant [34 x i8] c"redundant `schema_type` attribute.", align 1
@165 = private unnamed_addr constant [38 x i8] c"type is identical to this field's type", align 1
@166 = private unnamed_addr constant [29 x i8] c"remove the redudant attribute", align 1
@167 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\D3\01\00\00\22\00\00\00" }>, align 8
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\CC\01\00\00\22\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\CD\01\00\00\22\00\00\00" }>, align 8
@170 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\CE\01\00\00!\00\00\00" }>, align 8
@171 = private unnamed_addr constant [44 x i8] c"option conflicting with `required` or `skip`", align 1
@172 = private unnamed_addr constant [10 x i8] c"rename_all", align 1
@173 = private unnamed_addr constant [11 x i8] c"\22camelCase\22", align 1
@174 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\8C\00\00\00\11\00\00\00" }>, align 8
@175 = private unnamed_addr constant [19 x i8] c"deny_unknown_fields", align 1
@176 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\97\00\00\00\1E\00\00\00" }>, align 8
@177 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\9A\00\00\00!\00\00\00" }>, align 8
@178 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\91\00\00\00\1E\00\00\00" }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\93\00\00\00!\00\00\00" }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\A1\00\00\00\1A\00\00\00" }>, align 8
@181 = private unnamed_addr constant [9 x i8] c"camelCase", align 1
@182 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\A3\00\00\00\09\00\00\00" }>, align 8
@183 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\A5\00\00\00\10\00\00\00" }>, align 8
@184 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\A7\00\00\00\19\00\00\00" }>, align 8
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\A7\00\00\00\14\00\00\00" }>, align 8
@186 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\AB\00\00\00\14\00\00\00" }>, align 8
@187 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\AC\00\00\00\14\00\00\00" }>, align 8
@188 = private unnamed_addr constant [72 x i8] c"Unsupported item attribute, pass parameters inside of #[routes::request]", align 1
@189 = private unnamed_addr constant [57 x i8] c"unsupported parameter. Supported parameters are: `rename`", align 1
@190 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00g\01\00\00\22\00\00\00" }>, align 8
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00h\01\00\00\22\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00i\01\00\00!\00\00\00" }>, align 8
@193 = private unnamed_addr constant [37 x i8] c"Field is missing #[request] attribute", align 1
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\12\01\00\00\11\00\00\00" }>, align 8
@195 = private unnamed_addr constant [82 x i8] c"#[routes::request] does not support `default = value` when Deserialize is required", align 1
@196 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00 \01\00\00\1E\00\00\00" }>, align 8
@197 = private unnamed_addr constant [5 x i8] c"false", align 1
@198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00'\01\00\00\1E\00\00\00" }>, align 8
@199 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00)\01\00\00\1D\00\00\00" }>, align 8
@200 = private unnamed_addr constant [4 x i8] c"true", align 1
@201 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00,\01\00\00\1E\00\00\00" }>, align 8
@202 = private unnamed_addr constant [6 x i8] c"ignore", align 1
@203 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00/\01\00\00\1E\00\00\00" }>, align 8
@204 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\000\01\00\00\1E\00\00\00" }>, align 8
@205 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\001\01\00\00\1D\00\00\00" }>, align 8
@206 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\005\01\00\00\1E\00\00\00" }>, align 8
@207 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\005\01\00\00\19\00\00\00" }>, align 8
@208 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\008\01\00\00\1E\00\00\00" }>, align 8
@209 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\008\01\00\00\19\00\00\00" }>, align 8
@210 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00<\01\00\00\1E\00\00\00" }>, align 8
@211 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00<\01\00\00\19\00\00\00" }>, align 8
@212 = private unnamed_addr constant [7 x i8] c"request", align 1
@213 = private unnamed_addr constant [30 x i8] c"Duplicate #[request] attribute", align 1
@214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\D8\00\00\00\1C\00\00\00" }>, align 8
@215 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\D8\00\00\00\17\00\00\00" }>, align 8
@216 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\DB\00\00\00\1C\00\00\00" }>, align 8
@217 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\DB\00\00\00\17\00\00\00" }>, align 8
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\DF\00\00\00\1C\00\00\00" }>, align 8
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\DF\00\00\00\17\00\00\00" }>, align 8
@220 = private unnamed_addr constant [20 x i8] c"allow_unknown_fields", align 1
@221 = private unnamed_addr constant [14 x i8] c"override_error", align 1
@222 = private unnamed_addr constant [8 x i8] c"no_error", align 1
@223 = private unnamed_addr constant [15 x i8] c"where_predicate", align 1
@224 = private unnamed_addr constant [7 x i8] c"proxied", align 1
@225 = private unnamed_addr constant [7 x i8] c"setting", align 1
@226 = private unnamed_addr constant [8 x i8] c"response", align 1
@227 = private unnamed_addr constant [2 x i8] c"db", align 1
@228 = private unnamed_addr constant [8 x i8] c"validate", align 1
@229 = private unnamed_addr constant [11 x i8] c"serde_bound", align 1
@230 = private unnamed_addr constant [222 x i8] c"unsupported parameter. Supported parameters are: `allow_unknown_fields`, `deny_unknown_fields`, `override_error`, `no_error`, `where_predicate`, `try_from`, `proxied`, `response`, `db`, `validate`, `setting`, `serde_bound`", align 1
@231 = private unnamed_addr constant [5 x i8] c"bound", align 1
@232 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\9A\02\00\00\1D\00\00\00" }>, align 8
@233 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\94\02\00\00\1D\00\00\00" }>, align 8
@234 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00\8E\02\00\00\1A\00\00\00" }>, align 8
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00{\02\00\00\1A\00\00\00" }>, align 8
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"#\00\00\00\00\00\00\00q\02\00\00\1A\00\00\00" }>, align 8
@237 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-diagnostics-0.10.1/src/diagnostic.rs\00", align 1
@238 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @237, [16 x i8] c"u\00\00\00\00\00\00\00\84\00\00\00\17\00\00\00" }>, align 8
@239 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @237, [16 x i8] c"u\00\00\00\00\00\00\00\8B\00\00\00\17\00\00\00" }>, align 8
@240 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00\CC\00\00\00\14\00\00\00" }>, align 8
@241 = private unnamed_addr constant [87 x i8] c"Punctuated::push_value: cannot push value if Punctuated is missing trailing punctuation", align 1
@242 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @241, [8 x i8] c"W\00\00\00\00\00\00\00" }>, align 8
@243 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"b\00\00\00\00\00\00\00\B6\00\00\00\09\00\00\00" }>, align 8
@244 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e8d49aff6f7d551E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17haa884202f8661767E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17h42e99403e03bce94E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h4a16c90b021b6fa9E, ptr @"_ZN115_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h0fa8a55a0032dfeeE", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17hd49f347cdd5cec32E, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17ha31086759a4bb239E }>, align 8
@245 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e8d49aff6f7d551E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17haa884202f8661767E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17h42e99403e03bce94E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h4a16c90b021b6fa9E, ptr @"_ZN111_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h29267579216a75cbE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17he2939f6764508e21E }>, align 8
@246 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e8d49aff6f7d551E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17haa884202f8661767E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17h42e99403e03bce94E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h4a16c90b021b6fa9E, ptr @"_ZN115_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h0fa8a55a0032dfeeE", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17hd49f347cdd5cec32E, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17ha31086759a4bb239E, ptr @244, ptr @"_ZN111_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h29267579216a75cbE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17he2939f6764508e21E, ptr @245, ptr @"_ZN57_$LT$I$u20$as$u20$syn..punctuated..IterTrait$LT$T$GT$$GT$9clone_box17h2b9f07095402e843E" }>, align 8
@247 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h85c4cbec082271a5E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17hcf6b14be6e4c0d5aE, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17hdb74ccec27fb4998E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h75c80bad10c595e0E, ptr @"_ZN115_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17he075d65c06b79e3fE", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h59be3ae5afb240f1E, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17h2f0aef66f12050c9E }>, align 8
@248 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h85c4cbec082271a5E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17hcf6b14be6e4c0d5aE, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17hdb74ccec27fb4998E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h75c80bad10c595e0E, ptr @"_ZN111_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h8b0cab27afaeafbcE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h81cf50b3cbab7f57E }>, align 8
@249 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h85c4cbec082271a5E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17hcf6b14be6e4c0d5aE, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17hdb74ccec27fb4998E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h75c80bad10c595e0E, ptr @"_ZN115_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17he075d65c06b79e3fE", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h59be3ae5afb240f1E, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17h2f0aef66f12050c9E, ptr @247, ptr @"_ZN111_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h8b0cab27afaeafbcE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h81cf50b3cbab7f57E, ptr @248, ptr @"_ZN57_$LT$I$u20$as$u20$syn..punctuated..IterTrait$LT$T$GT$$GT$9clone_box17h252069c707521776E" }>, align 8
@250 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17hd739ec4d2af60177E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17h8dca5842945f3436E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h3335f55d11b4f481E, ptr @"_ZN114_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h8a8070589ad88063E", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17hd07c8777b74749b5E }>, align 8
@251 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17hd739ec4d2af60177E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17h8dca5842945f3436E, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h3335f55d11b4f481E, ptr @"_ZN118_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h21f8cbfd04d37818E", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h1766c7d58129ec6fE, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17h585aa29939c85d2bE, ptr @"_ZN114_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17h8a8070589ad88063E", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17hd07c8777b74749b5E, ptr @250 }>, align 8
@252 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17he688161af1e435b9E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17hf8116850a9a5791bE, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h7435b0b847edae11E, ptr @"_ZN114_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hb35528b207bb044dE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h284b6f4d4559597cE }>, align 8
@253 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E", ptr @_ZN4core4iter6traits8iterator8Iterator9size_hint17he688161af1e435b9E, ptr @_ZN4core4iter6traits8iterator8Iterator10advance_by17hf8116850a9a5791bE, ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h7435b0b847edae11E, ptr @"_ZN118_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hf0063f91eb950680E", ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h854664e8fec6113bE, ptr @_ZN4core4iter6traits12double_ended19DoubleEndedIterator8nth_back17he615f7d19c91d359E, ptr @"_ZN114_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hb35528b207bb044dE", ptr @_ZN4core4iter6traits10exact_size17ExactSizeIterator8is_empty17h284b6f4d4559597cE, ptr @252 }>, align 8
@254 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.117/src/attr.rs\00", align 1
@255 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @254, [16 x i8] c"\\\00\00\00\00\00\00\00\FC\00\00\00'\00\00\00" }>, align 8
@256 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @254, [16 x i8] c"\\\00\00\00\00\00\00\00\FD\00\00\00&\00\00\00" }>, align 8
@257 = private unnamed_addr constant [45 x i8] c"expected attribute arguments in parentheses: ", align 1
@258 = private unnamed_addr constant [1 x i8] c"[", align 1
@259 = private unnamed_addr constant [6 x i8] c"(...)]", align 1
@260 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @257, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @258, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @259, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@261 = private unnamed_addr constant [22 x i8] c"expected parentheses: ", align 1
@262 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @261, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @258, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @259, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@263 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf376163118455707E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd717793223240653E", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E", ptr @_ZN4core3fmt5Write9write_fmt17hae8d7bb6600219e0E }>, align 8
@264 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@265 = private unnamed_addr constant [76 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/string.rs\00", align 1
@266 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @265, [16 x i8] c"K\00\00\00\00\00\00\00\05\0B\00\00\0E\00\00\00" }>, align 8
@267 = private unnamed_addr constant [89 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/iter/traits/iterator.rs\00", align 1
@268 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @267, [16 x i8] c"X\00\00\00\00\00\00\00\EB\07\00\00\09\00\00\00" }>, align 8
@269 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE" }>, align 8
@270 = private unnamed_addr constant [5 x i8] c"Error", align 1
@271 = private unnamed_addr constant [81 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/raw_vec/mod.rs\00", align 1
@272 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @271, [16 x i8] c"P\00\00\00\00\00\00\00*\02\00\00\11\00\00\00" }>, align 8
@273 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"T\00\00\00\00\00\00\00\81\00\00\00\01\00\00\00" }>, align 8
@274 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.106/src/fallback.rs\00", align 1
@275 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @274, [16 x i8] c"h\00\00\00\00\00\00\00\87\03\00\00:\00\00\00" }>, align 8
@276 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@277 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @276, [16 x i8] c"J\00\00\00\00\00\00\00\A7\01\00\00\1F\00\00\00" }>, align 8
@278 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @276, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@_ZN10proc_macro6bridge6client8COUNTERS17h91c562baf780d2a2E = external global { { i32 }, { i32 }, { i32 } }
@279 = private unnamed_addr constant <{ [4 x i8], [4 x i8], ptr, [8 x i8], ptr, ptr, [16 x i8], [4 x i8], [4 x i8], ptr, [8 x i8], ptr, ptr, [16 x i8], [4 x i8], [4 x i8], ptr, [8 x i8], ptr, ptr, [16 x i8] }> <{ [4 x i8] c"\01\00\00\00", [4 x i8] undef, ptr @10, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @_ZN10proc_macro6bridge6client8COUNTERS17h91c562baf780d2a2E, ptr @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17he14dce878e4568e5E, [16 x i8] undef, [4 x i8] c"\01\00\00\00", [4 x i8] undef, ptr @18, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @_ZN10proc_macro6bridge6client8COUNTERS17h91c562baf780d2a2E, ptr @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17h6520283b72e8beb8E, [16 x i8] undef, [4 x i8] c"\01\00\00\00", [4 x i8] undef, ptr @212, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @_ZN10proc_macro6bridge6client8COUNTERS17h91c562baf780d2a2E, ptr @_ZN10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapper17h9f877c971758f388E, [16 x i8] undef }>, align 8
@__rustc_proc_macro_decls_fdfe8b3bb0265034__ = constant <{ ptr, [8 x i8] }> <{ ptr @279, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @__rustc_proc_macro_decls_fdfe8b3bb0265034__], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 dereferenceable_or_null(88) ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e8d49aff6f7d551E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !130, !nonnull !69, !noundef !69 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !130, !nonnull !69, !noundef !69
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a60f6ab75122108E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a60f6ab75122108E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.e, ptr %0, align 8, !alias.scope !130
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hc53089c995584536E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !131, !noalias !132, !align !70, !noundef !69
  store ptr null, ptr %i.f, align 8, !alias.scope !131, !noalias !132
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hc53089c995584536E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17hc53089c995584536E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a60f6ab75122108E.exit", %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0a60f6ab75122108E.exit" ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 dereferenceable_or_null(312) ptr @"_ZN100_$LT$syn..punctuated..PrivateIter$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h85c4cbec082271a5E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !142, !nonnull !69, !noundef !69 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !142, !nonnull !69, !noundef !69
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb2eb6ca769ae44d8E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb2eb6ca769ae44d8E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.e, ptr %0, align 8, !alias.scope !142
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h2a36008252498a26E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !143, !noalias !144, !align !70, !noundef !69
  store ptr null, ptr %i.f, align 8, !alias.scope !143, !noalias !144
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h2a36008252498a26E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h2a36008252498a26E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb2eb6ca769ae44d8E.exit", %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb2eb6ca769ae44d8E.exit" ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$syn..punctuated..Punctuated$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h435707fe2a1b386bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 3 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.e, align 8, !noundef !69 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load ptr, ptr %i.f, align 8, !align !70, !noundef !69 ; 6 uses
  %i.g = icmp ult i64 %.val11, 34937015291116576
  tail call void @llvm.assume(i1 %i.g)
  %.not.i = icmp ne ptr %.val12, null             ; 2 uses
  %..i = zext i1 %.not.i to i64
  %i.h = add nuw nsw i64 %.val11, %..i            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.i = shl nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !174
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #28, !noalias !174 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !173
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.m, align 8, !alias.scope !173
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.n, align 8, !alias.scope !173
  %.sroa.023.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.224.0.copyload = load ptr, ptr %.sroa.224.0..sroa_idx, align 8, !nonnull !69, !noundef !69 ; 6 uses
  %.idx = mul nuw nsw i64 %.val11, 264
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.224.0.copyload, i64 %.idx ; 4 uses
  store ptr %.sroa.224.0.copyload, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.023.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = icmp eq i64 %.val11, 0
  br i1 %i.p, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph": ; preds = %bb.c
  %.sroa.428.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit"

.body:                                            ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #30
          to label %.body13 unwind label %bb.q

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit"
  %i.q = phi ptr [ %.sroa.10.0.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph" ], [ %i.y, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit" ]
  %i.r = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph" ], [ %i.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit" ] ; 3 uses
  %i.s = phi ptr [ %.sroa.224.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.lr.ph" ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit" ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264 ; 4 uses
  %.sroa.026.0.copyload = load i64, ptr %i.s, align 8, !noalias !175 ; 2 uses
  %.not = icmp eq i64 %.sroa.026.0.copyload, 18
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread", label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit"
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.026.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.428.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.428.0..sroa_idx, i64 248, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.u = load i64, ptr %i.d, align 8, !range !71, !alias.scope !178, !noalias !179, !noundef !69
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit"

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had5ac0b787619b60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit_crit_edge" unwind label %bb.f, !noalias !180

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit_crit_edge": ; preds = %bb.e
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !178, !noalias !179
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit"

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$routes_macros..path..RequestBodyArg$GT$17h90a7bcafcdc5a02fE"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.b) #30
          to label %.body unwind label %bb.g, !noalias !178

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !178
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit_crit_edge", %bb.d
  %i.y = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit_crit_edge" ], [ %i.q, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.y, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.z, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false), !noalias !178
  %i.aa = add i64 %i.r, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !178, !noalias !179
  %i.ab = icmp eq ptr %i.t, %i.o
  br i1 %i.ab, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit", %bb.c
  %i.ac = phi ptr [ %.sroa.224.0.copyload, %bb.c ], [ %i.t, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit" ], [ %i.o, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hc35e11c3964010d4E.exit" ] ; 2 uses
  %i.ad = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub nuw i64 %i.ad, %i.ae
  %i.ag = udiv exact i64 %i.af, 264
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$$u5b$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$u5d$$GT$17hb6d1e2c8ddf6002eE"(ptr noalias noundef nonnull align 8 %i.ac, i64 noundef %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !181

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread"
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.ai, label %.body13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = mul nuw i64 %.sroa.023.0.copyload, 264
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.224.0.copyload, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !181
  br label %.body13

bb.j:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a21ed19e509e4ddE.exit.thread"
  %i.ak = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.ak, label %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = mul nuw i64 %.sroa.023.0.copyload, 264
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.224.0.copyload, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !181
  br label %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit"

"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit": ; preds = %bb.k, %bb.j
  %.not.i.not = icmp eq ptr %.val12, null
  %.sroa.035.0.copyload.pre49 = load i64, ptr %i.d, align 8 ; 3 uses
  br i1 %.not.i.not, label %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge", label %bb.l

"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge": ; preds = %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit"
  %.sroa.236.0.copyload.pre = load ptr, ptr %i.m, align 8
  %.sroa.337.0.copyload.pre = load i64, ptr %i.n, align 8
  br label %bb.r

bb.l:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %.val12, i64 256, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.am = load i64, ptr %i.n, align 8, !alias.scope !184, !noalias !185, !noundef !69 ; 3 uses
  %i.an = icmp eq i64 %i.am, %.sroa.035.0.copyload.pre49
  br i1 %i.an, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had5ac0b787619b60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %._crit_edge unwind label %bb.n, !noalias !186

._crit_edge:                                      ; preds = %bb.m
  %.sroa.035.0.copyload.pre.pre = load i64, ptr %i.d, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$routes_macros..path..RequestBodyArg$GT$17h90a7bcafcdc5a02fE"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #30
          to label %.body15 unwind label %bb.o, !noalias !184

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !184
  unreachable

.body15:                                          ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 256, i64 noundef 8) #28
  br label %.body13

bb.p:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.035.0.copyload.pre = phi i64 [ %.sroa.035.0.copyload.pre.pre, %._crit_edge ], [ %.sroa.035.0.copyload.pre49, %bb.l ]
  %i.aq = load ptr, ptr %i.m, align 8, !alias.scope !184, !noalias !185, !nonnull !69, !noundef !69 ; 2 uses
  %i.ar = getelementptr inbounds nuw [256 x i8], ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ar, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !184
  %i.as = add i64 %i.am, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 256, i64 noundef 8) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.u, %bb.s, %.body13, %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.r:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge", %bb.p
  %.sroa.337.0.copyload = phi i64 [ %.sroa.337.0.copyload.pre, %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge" ], [ %i.as, %bb.p ] ; 2 uses
  %.sroa.236.0.copyload = phi ptr [ %.sroa.236.0.copyload.pre, %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge" ], [ %i.aq, %bb.p ] ; 3 uses
  %.sroa.035.0.copyload = phi i64 [ %.sroa.035.0.copyload.pre49, %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17h8731f9827789533cE.exit._crit_edge" ], [ %.sroa.035.0.copyload.pre, %bb.p ]
  %i.au = icmp ult i64 %.sroa.337.0.copyload, 36028797018963968
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %.sroa.236.0.copyload, i64 %.sroa.337.0.copyload
  store ptr %.sroa.236.0.copyload, ptr %0, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.236.0.copyload, ptr %.sroa.232.0..sroa_idx, align 8
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.035.0.copyload, ptr %.sroa.333.0..sroa_idx, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.av, ptr %.sroa.434.0..sroa_idx, align 8
  ret void

.body13:                                          ; preds = %bb.h, %bb.i, %.body, %.body15
  %.pn.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.ao, %.body15 ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ]
  %.sroa.02.1 = phi i1 [ true, %.body ], [ false, %.body15 ], [ true, %bb.h ], [ true, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$routes_macros..path..RequestBodyArg$GT$$GT$17he11aa73f8f7114c4E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %.thread unwind label %bb.q

.thread:                                          ; preds = %.body13, %bb.s
  %.sroa.02.042 = phi i1 [ true, %bb.s ], [ %.sroa.02.1, %.body13 ]
  %.pn.pn.pn41 = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %.pn.pn, %.body13 ]
  %or.cond = and i1 %.not.i, %.sroa.02.042
  br i1 %or.cond, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..path..RequestBodyArg$C$syn..token..Comma$RP$$GT$$GT$17hcfea14faf325590cE"(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %.thread unwind label %bb.q

bb.t:                                             ; preds = %bb.u, %.thread
  resume { ptr, i32 } %.pn.pn.pn41

bb.u:                                             ; preds = %.thread
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..path..RequestBodyArg$GT$$GT$17hf0bc3c6393455b63E"(ptr nonnull %.val12) #30
          to label %bb.t unwind label %bb.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 dereferenceable_or_null(312) ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46f48280600bc7e2E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !196, !nonnull !69, !noundef !69 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !196, !nonnull !69, !noundef !69
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.e, ptr %0, align 8, !alias.scope !196
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h2eab19de3fab11f1E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !197, !noalias !198, !align !70, !noundef !69
  store ptr null, ptr %i.f, align 8, !alias.scope !197, !noalias !198
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h2eab19de3fab11f1E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h2eab19de3fab11f1E.exit": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit", %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6b7210d2da128745E.exit" ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 dereferenceable_or_null(288) ptr @"_ZN103_$LT$syn..punctuated..PrivateIterMut$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e3f25753ef45a4E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !208, !nonnull !69, !noundef !69 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !208, !nonnull !69, !noundef !69
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69ea3309a6e6f845E.exit"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69ea3309a6e6f845E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.e, ptr %0, align 8, !alias.scope !208
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h4b394a8e17e4f74cE.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !209, !noalias !210, !align !70, !noundef !69
  store ptr null, ptr %i.f, align 8, !alias.scope !209, !noalias !210
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h4b394a8e17e4f74cE.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h4b394a8e17e4f74cE.exit": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69ea3309a6e6f845E.exit", %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69ea3309a6e6f845E.exit" ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h084e74e794064800E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 13 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 13 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 12 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 13 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 12 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 9 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 13 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 12 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 9 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 11 uses
  %i.az = alloca [32 x i8], align 8               ; 25 uses
end_hunk_0
begin_hunk_1_@_ZN13routes_macros6routes10try_routes17he4d42556f3619d4bE:bb.a
          to label %bb.ct unwind label %bb.cs, !noalias !1662

.body.i.i138.i.i.i.i:                             ; preds = %.body12.i.i.i.i.i.i, %bb.dg, %bb.de, %bb.da, %bb.cs
  %.pn9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mg, %bb.cs ], [ %i.mz, %.body12.i.i.i.i.i.i ], [ %i.mt, %bb.dg ], [ %i.ml, %bb.da ], [ %i.mr, %bb.de ]
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$syn..punctuated..Punctuated$LT$routes_macros..routes..RouteComponent$C$syn..token..Comma$GT$$GT$17he4df430e2ccfddb6E"(ptr noalias noundef align 8 dereferenceable(32) %i.cs) #30
          to label %.thread138.i.i.i.i.i unwind label %bb.dn, !noalias !1662

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i138.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  br i1 %i.mf, label %._crit_edge.i.i.i.i, label %bb.cu

._crit_edge.i.i.i.i:                              ; preds = %bb.ct
  %.sroa.11.i.sroa.7.0.copyload280.pre.i.i.i.i = load i64, ptr %i.hs, align 8, !noalias !1654
  br label %split.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @"_ZN75_$LT$routes_macros..routes..RouteComponent$u20$as$u20$syn..parse..Parse$GT$5parse17h58aa5175cb1bfe31E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cr, ptr noundef nonnull align 8 %i.da)
          to label %bb.cv unwind label %bb.cs, !noalias !1662

bb.cv:                                            ; preds = %bb.cu
  %i.mh = load i64, ptr %i.cr, align 8, !range !72, !alias.scope !1663, !noalias !1664, !noundef !69 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, -9223372036854775808
  br i1 %i.mi, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %.sroa.692.8.copyload94.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !1654
  %.sroa.10.8.copyload96.i.i.i.i.i = load i32, ptr %.sroa.10.8..sroa.4.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !1654
  br label %.loopexit4246

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.37.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx3.i.i.i.i.i.i, i64 40, i1 false), !noalias !1661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx2.i.i.i.i.i.i, i64 24, i1 false), !noalias !1661
  store i64 %i.mh, ptr %i.cq, align 8, !noalias !1661
  call void @llvm.experimental.noalias.scope.decl(metadata !1665), !noalias !1657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1661
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.hs, align 8, !alias.scope !1665, !noalias !1666, !align !70, !noundef !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val3.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1667
  %i.mj = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #28, !noalias !1667 ; 7 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.cz, label %bb.dh, !prof !81

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #29
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.da, !noalias !1668

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$routes_macros..routes..RouteComponent$GT$17h88b085890e2d9dceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cq) #30
          to label %.body.i.i138.i.i.i.i unwind label %bb.db, !noalias !1669

bb.db:                                            ; preds = %bb.da
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1668
  unreachable

bb.dc:                                            ; preds = %bb.cx
  store ptr @242, ptr %i.co, align 8, !alias.scope !1670, !noalias !1671
  %i.mn = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 1, ptr %i.mn, align 8, !alias.scope !1670, !noalias !1671
  %i.mo = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr null, ptr %i.mo, align 8, !alias.scope !1670, !noalias !1671
  %i.mp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.mp, align 8, !alias.scope !1670, !noalias !1671
  %i.mq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 0, ptr %i.mq, align 8, !alias.scope !1670, !noalias !1671
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #29
          to label %bb.dd unwind label %bb.de, !noalias !1668

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$routes_macros..routes..RouteComponent$GT$17h88b085890e2d9dceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cq) #30
          to label %.body.i.i138.i.i.i.i unwind label %bb.df, !noalias !1669

bb.df:                                            ; preds = %bb.de
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1668
  unreachable

bb.dg:                                            ; preds = %bb.dj, %bb.dh
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i138.i.i.i.i

bb.dh:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.mj, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cq, i64 72, i1 false), !noalias !1669
  store ptr %i.mj, ptr %i.hs, align 8, !alias.scope !1665, !noalias !1666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !1661
  %i.mu = invoke noundef zeroext i1 @_ZN3syn5parse11ParseBuffer8is_empty17hb7c71bb822fae34cE(ptr noundef nonnull align 8 %i.da)
          to label %bb.di unwind label %bb.dg, !noalias !1662

bb.di:                                            ; preds = %bb.dh
  br i1 %i.mu, label %split.loopexit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @"_ZN55_$LT$syn..token..Comma$u20$as$u20$syn..parse..Parse$GT$5parse17hc2b68072bf80f418E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noundef nonnull align 8 %i.da)
          to label %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i unwind label %bb.dg, !noalias !1662

_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i: ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !1672), !noalias !1657
  %i.mv = load i64, ptr %i.cp, align 8, !range !72, !alias.scope !1673, !noalias !1674, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.mv, -9223372036854775808
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.ht, align 8, !alias.scope !1675, !noalias !1661 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i", label %.loopexit4246

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i": ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1676), !noalias !1657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1661
  store ptr null, ptr %i.hs, align 8, !alias.scope !1677, !noalias !1661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(72) %i.mj, i64 72, i1 false), !noalias !1678
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.hu, align 8, !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1680), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1681), !noalias !1657
  %i.mw = load i64, ptr %i.cs, align 8, !range !71, !alias.scope !1682, !noalias !1683, !noundef !69
  %i.mx = icmp eq i64 %i.me, %i.mw
  br i1 %i.mx, label %bb.dk, label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit.i.i.i.i.i.i"

bb.dk:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h40d0a07277001bbbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit_crit_edge.i.i.i.i.i.i" unwind label %bb.dl, !noalias !1684

"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit_crit_edge.i.i.i.i.i.i": ; preds = %bb.dk
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1682, !noalias !1683 ; 2 uses
  %i.my = ptrtoint ptr %.pre.i.i.i.i.i.i to i64
  br label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit.i.i.i.i.i.i"

bb.dl:                                            ; preds = %bb.dk
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$$LP$routes_macros..routes..RouteComponent$C$syn..token..Comma$RP$$GT$17h98c7c4aa91d27e39E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.cn) #30
          to label %.body12.i.i.i.i.i.i unwind label %bb.dm, !noalias !1685

bb.dm:                                            ; preds = %bb.dl
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1686
  unreachable

"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit.i.i.i.i.i.i": ; preds = %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit_crit_edge.i.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i"
  %.sroa.692.0.copyload184.i.i.i.i.i = phi i64 [ %i.my, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit_crit_edge.i.i.i.i.i.i" ], [ %.sroa.692.0.copyload.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i" ]
  %i.nb = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17ha9f5b19c59a61ebfE.exit_crit_edge.i.i.i.i.i.i" ], [ %i.md, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd6457d7519e7f673E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [80 x i8], ptr %i.nb, i64 %i.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.nc, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.cn, i64 80, i1 false), !noalias !1685
  %i.nd = add i64 %i.me, 1                        ; 3 uses
  store i64 %i.nd, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1682, !noalias !1683
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 72, i64 noundef 8) #28, !noalias !1678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1661
  %i.ne = lshr i64 %i.nd, 32
  %i.nf = trunc nuw i64 %i.ne to i32
  br label %bb.cr

.body12.i.i.i.i.i.i:                              ; preds = %bb.dl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef 72, i64 noundef 8) #28, !noalias !1678
  br label %.body.i.i138.i.i.i.i

.loopexit4246:                                    ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i, %bb.cw
  %.sroa.613.0..sroa_idx14.i.sink.i.i.i.i.i = phi ptr [ %.sroa.11.8..sroa.4.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, %bb.cw ], [ %.sroa.613.0..sroa_idx14.i.i.i.i.i.i, %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i = phi i32 [ %.sroa.10.8.copyload96.i.i.i.i.i, %bb.cw ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i ]
  %.sroa.692.0.i.i.i.i.i = phi i64 [ %.sroa.692.8.copyload94.i.i.i.i.i, %bb.cw ], [ %i.mv, %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i.i ]
  %.sroa.11.i.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.613.0..sroa_idx14.i.sink.i.i.i.i.i, align 4, !noalias !1654
  %.sroa.11.i.sroa.7.0..sroa.613.0..sroa_idx14.i.sink.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.613.0..sroa_idx14.i.sink.i.i.i.i.i, i64 4
  %.sroa.11.i.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.i.sroa.7.0..sroa.613.0..sroa_idx14.i.sink.i.sroa_idx.i.i.i.i, align 4, !noalias !1654
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$syn..punctuated..Punctuated$LT$routes_macros..routes..RouteComponent$C$syn..token..Comma$GT$$GT$17he4df430e2ccfddb6E"(ptr noalias noundef align 8 dereferenceable(32) %i.cs)
          to label %.thread151.i.i.i.i.i unwind label %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1655

.thread151.i.i.i.i.i:                             ; preds = %.loopexit4246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1654
  br label %.loopexit362.i.i.i.i

bb.dn:                                            ; preds = %.body.i.i138.i.i.i.i
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1662
  unreachable

split.loopexit.i.i.i.i:                           ; preds = %bb.di
  %i.nh = ptrtoint ptr %i.mj to i64
  br label %split.i.i.i.i

split.i.i.i.i:                                    ; preds = %split.loopexit.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.11.i.sroa.7.0.copyload280.i.i.i.i = phi i64 [ %.sroa.11.i.sroa.7.0.copyload280.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.nh, %split.loopexit.i.i.i.i ] ; 5 uses
  %indvars9991071.i.i.i.i = trunc i64 %i.me to i32 ; 2 uses
  %.sroa.091.0.copyload.i.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !1654 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1654
  %i.ni = icmp eq i64 %.sroa.091.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %i.ni, label %.loopexit362.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %split.i.i.i.i
  store i64 %.sroa.091.0.copyload.i.i.i.i.i, ptr %i.cy, align 8, !noalias !1654
  store i64 %.sroa.692.0.copyload.i.i.i.i.i, ptr %.sroa.627.0..sroa_idx28.i.i.i.i.i, align 8, !noalias !1654
  store i32 %indvars9991071.i.i.i.i, ptr %.sroa.627.sroa.7.0..sroa.627.0..sroa_idx28.sroa_idx.i.i.i.i.i, align 8, !noalias !1654
  store i32 %.sroa.11.i.sroa.0.0.copyload279.i.i.i.i, ptr %.sroa.627.sroa.8.0..sroa.627.0..sroa_idx28.sroa_idx.i.i.i.i.i, align 4, !noalias !1654
  store i64 %.sroa.11.i.sroa.7.0.copyload280.i.i.i.i, ptr %.sroa.627.sroa.8.i.sroa.7.0..sroa.627.sroa.8.0..sroa.627.0..sroa_idx28.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1654
  call void @llvm.experimental.noalias.scope.decl(metadata !1687), !noalias !1657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1654
  %.val11.i.i.i.i.i.i = load i64, ptr %.sroa.627.sroa.7.0..sroa.627.0..sroa_idx28.sroa_idx.i.i.i.i.i, align 8, !alias.scope !1687, !noalias !1688, !noundef !69 ; 4 uses
  %i.nj = inttoptr i64 %.sroa.11.i.sroa.7.0.copyload280.i.i.i.i to ptr ; 4 uses
  %i.nk = icmp ult i64 %.val11.i.i.i.i.i.i, 115292150460684698
  call void @llvm.assume(i1 %i.nk), !noalias !1657
  %.not.i.i81.i.i.i.i.i = icmp ne i64 %.sroa.11.i.sroa.7.0.copyload280.i.i.i.i, 0 ; 4 uses
  %..i.i.i.i.i.i.i = zext i1 %.not.i.i81.i.i.i.i.i to i64
  %i.nl = add nuw nsw i64 %.val11.i.i.i.i.i.i, %..i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1689), !noalias !1657
  %i.nm = icmp eq i64 %i.nl, 0
  %i.nn = inttoptr i64 %.sroa.692.0.copyload.i.i.i.i.i to ptr ; 4 uses
  br i1 %i.nm, label %bb.dr, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.do
  %i.no = mul nuw nsw i64 %i.nl, 72               ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1690
  %i.np = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.no, i64 noundef range(i64 1, 9) 8) #28, !noalias !1690 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.no, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc.i.i144.i.i.i.i unwind label %bb.ee, !noalias !1691

.noexc.i.i144.i.i.i.i:                            ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i"
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dr:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i", %bb.do
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.do ], [ %i.np, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  store i64 %i.nl, ptr %i.cm, align 8, !alias.scope !1689, !noalias !1692
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %i.hv, align 8, !alias.scope !1689, !noalias !1692
  store i64 0, ptr %i.hw, align 8, !alias.scope !1689, !noalias !1692
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.val11.i.i.i.i.i.i, 80
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx.i.i.i.i.i.i ; 3 uses
  store ptr %i.nn, ptr %i.cl, align 8, !noalias !1692
  store i64 %.sroa.091.0.copyload.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i140.i.i.i.i, align 8, !noalias !1692
  store ptr %i.ns, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1692
  %i.nt = icmp eq i64 %.val11.i.i.i.i.i.i, 0
  br i1 %i.nt, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i"

.body.i82.i.i.i.i.i:                              ; preds = %bb.du
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..routes..RouteComponent$C$syn..token..Comma$RP$$GT$$GT$17hbae9730326677a70E"(ptr noalias noundef align 8 dereferenceable(32) %i.cl) #30
          to label %bb.ed unwind label %bb.ec, !noalias !1691

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i": ; preds = %bb.dr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i"
  %i.nu = phi ptr [ %i.oc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.i, %bb.dr ] ; 2 uses
  %i.nv = phi i64 [ %i.oe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ], [ 0, %bb.dr ] ; 4 uses
  %i.nw = phi ptr [ %i.nx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ], [ %i.nn, %bb.dr ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 80 ; 4 uses
  %.sroa.024.0.copyload.i.i.i.i.i.i = load i64, ptr %i.nw, align 8, !noalias !1693 ; 2 uses
  %.not.i.i141.i.i.i.i = icmp eq i64 %.sroa.024.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i141.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i", label %bb.ds

bb.ds:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i"
  %.sroa.426.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 %.sroa.024.0.copyload.i.i.i.i.i.i, ptr %i.ck, align 8, !noalias !1692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.426.0..sroa_idx27.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.426.0..sroa_idx.i.i.i.i.i.i, i64 64, i1 false), !noalias !1691
  call void @llvm.experimental.noalias.scope.decl(metadata !1694), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1695), !noalias !1657
  %i.ny = load i64, ptr %i.cm, align 8, !range !71, !alias.scope !1696, !noalias !1697, !noundef !69
  %i.nz = icmp eq i64 %i.nv, %i.ny
  br i1 %i.nz, label %bb.dt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i"

bb.dt:                                            ; preds = %bb.ds
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h762cb692d6b0f95eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit_crit_edge.i.i.i.i.i.i" unwind label %bb.du, !noalias !1698

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit_crit_edge.i.i.i.i.i.i": ; preds = %bb.dt
  %.pre.i83.i.i.i.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !1696, !noalias !1697
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i"

bb.du:                                            ; preds = %bb.dt
  %i.oa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.nx, ptr %.sroa.2.0..sroa_idx.i.i139.i.i.i.i, align 8, !noalias !1692
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$routes_macros..routes..RouteComponent$GT$17h88b085890e2d9dceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ck) #30
          to label %.body.i82.i.i.i.i.i unwind label %bb.dv, !noalias !1699

bb.dv:                                            ; preds = %bb.du
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1700
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit_crit_edge.i.i.i.i.i.i", %bb.ds
  %i.oc = phi ptr [ %.pre.i83.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit_crit_edge.i.i.i.i.i.i" ], [ %i.nu, %bb.ds ] ; 3 uses
  %i.od = getelementptr inbounds nuw [72 x i8], ptr %i.oc, i64 %i.nv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.od, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !noalias !1699
  %i.oe = add nuw nsw i64 %i.nv, 1                ; 3 uses
  store i64 %i.oe, ptr %i.hw, align 8, !alias.scope !1696, !noalias !1697
  %i.of = icmp eq ptr %i.nx, %i.ns
  br i1 %i.of, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i", %bb.dr
  %i.og = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i, %bb.dr ], [ %i.nu, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i" ], [ %i.oc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.oh = phi i64 [ 0, %bb.dr ], [ %i.nv, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i" ], [ %i.oe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.oi = phi ptr [ %i.nn, %bb.dr ], [ %i.nx, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.i.i.i.i.i.i" ], [ %i.ns, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h97aee1a09b2b8b31E.exit.i.i.i.i.i.i" ]
  store ptr %i.oi, ptr %.sroa.2.0..sroa_idx.i.i139.i.i.i.i, align 8, !noalias !1692
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..routes..RouteComponent$C$syn..token..Comma$RP$$GT$$GT$17hbae9730326677a70E"(ptr noalias noundef align 8 dereferenceable(32) %i.cl)
          to label %bb.dw unwind label %bb.dq, !noalias !1691

bb.dw:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdc760380a6ea7deeE.exit.thread.i.i.i.i.i.i"
  %.not.i.i81.i.i.i.i.i.not = icmp eq i64 %.sroa.11.i.sroa.7.0.copyload280.i.i.i.i, 0
  %.sroa.033.0.copyload.pre46.i.i.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !1692 ; 3 uses
  br i1 %.not.i.i81.i.i.i.i.i.not, label %bb.eg, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(72) %i.nj, i64 72, i1 false), !noalias !1691
  call void @llvm.experimental.noalias.scope.decl(metadata !1701), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1702), !noalias !1657
  %i.oj = icmp eq i64 %i.oh, %.sroa.033.0.copyload.pre46.i.i.i.i.i.i
  br i1 %i.oj, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h762cb692d6b0f95eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %._crit_edge.i.i.i.i.i.i unwind label %bb.dz, !noalias !1703

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dy
  %.pre45.i.i.i.i.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !1704, !noalias !1705
  %.sroa.033.0.copyload.pre.pre.i.i.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !1692
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$routes_macros..routes..RouteComponent$GT$17h88b085890e2d9dceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cj) #30
          to label %.body13.i.i.i.i.i.i unwind label %bb.ea, !noalias !1706

bb.ea:                                            ; preds = %bb.dz
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1707
  unreachable

.body13.i.i.i.i.i.i:                              ; preds = %bb.dz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nj, i64 noundef 72, i64 noundef 8) #28, !noalias !1691
  br label %bb.ed

bb.eb:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %bb.dx
  %.sroa.033.0.copyload.pre.i.i.i.i.i.i = phi i64 [ %.sroa.033.0.copyload.pre.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.033.0.copyload.pre46.i.i.i.i.i.i, %bb.dx ]
  %i.om = phi ptr [ %.pre45.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.og, %bb.dx ] ; 2 uses
  %i.on = getelementptr inbounds nuw [72 x i8], ptr %i.om, i64 %i.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.on, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !noalias !1706
  %i.oo = add i64 %i.oh, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nj, i64 noundef 72, i64 noundef 8) #28, !noalias !1691
  br label %bb.eg

bb.ec:                                            ; preds = %bb.ef, %bb.ee, %bb.ed, %.body.i82.i.i.i.i.i
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1691
  unreachable

bb.ed:                                            ; preds = %.body13.i.i.i.i.i.i, %.body.i82.i.i.i.i.i, %bb.dq
  %.not.i.i81.i.i.i.i.i2611 = phi i1 [ %.not.i.i81.i.i.i.i.i, %.body.i82.i.i.i.i.i ], [ %.not.i.i81.i.i.i.i.i, %bb.dq ], [ true, %.body13.i.i.i.i.i.i ]
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.oa, %.body.i82.i.i.i.i.i ], [ %i.nr, %bb.dq ], [ %i.ok, %.body13.i.i.i.i.i.i ]
  %.sroa.02.1.i.i.i.i.i.i = phi i1 [ true, %.body.i82.i.i.i.i.i ], [ true, %bb.dq ], [ false, %.body13.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$routes_macros..routes..RouteComponent$GT$$GT$17hf743981b1f896d56E"(ptr noalias noundef align 8 dereferenceable(24) %i.cm) #30
          to label %.thread.i.i.i.i.i.i unwind label %bb.ec, !noalias !1691

.thread.i.i.i.i.i.i:                              ; preds = %bb.ee, %bb.ed
  %.not.i.i81.i.i.i.i.i2610 = phi i1 [ %.not.i.i81.i.i.i.i.i, %bb.ee ], [ %.not.i.i81.i.i.i.i.i2611, %bb.ed ]
  %.sroa.02.040.i.i.i.i.i.i = phi i1 [ true, %bb.ee ], [ %.sroa.02.1.i.i.i.i.i.i, %bb.ed ]
  %.pn.pn.pn39.i.i.i.i.i.i = phi { ptr, i32 } [ %i.oq, %bb.ee ], [ %.pn.pn.i.i.i.i.i.i, %bb.ed ] ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %.not.i.i81.i.i.i.i.i2610, %.sroa.02.040.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ef, label %.thread138.i.i.i.i.i

bb.ee:                                            ; preds = %bb.dp
  %i.oq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..RouteComponent$C$syn..token..Comma$RP$$GT$$GT$17h30d1f01fa21cbd50E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.cy) #30
          to label %.thread.i.i.i.i.i.i unwind label %bb.ec, !noalias !1708

bb.ef:                                            ; preds = %.thread.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..routes..RouteComponent$GT$$GT$17h3196770feb20df53E"(ptr nonnull %i.nj) #30
          to label %.thread138.i.i.i.i.i unwind label %bb.ec, !noalias !1691

bb.eg:                                            ; preds = %bb.eb, %bb.dw
  %.sroa.335.0.copyload.i.i.i.i.i.i = phi i64 [ %i.oh, %bb.dw ], [ %i.oo, %bb.eb ] ; 3 uses
  %.sroa.234.0.copyload.i.i.i.i.i.i = phi ptr [ %i.og, %bb.dw ], [ %i.om, %bb.eb ] ; 4 uses
  %.sroa.033.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.033.0.copyload.pre46.i.i.i.i.i.i, %bb.dw ], [ %.sroa.033.0.copyload.pre.i.i.i.i.i.i, %bb.eb ]
  %i.or = icmp ult i64 %.sroa.335.0.copyload.i.i.i.i.i.i, 128102389400760776
  call void @llvm.assume(i1 %i.or), !noalias !1657
  %.idx.i142.i.i.i.i = mul nuw nsw i64 %.sroa.335.0.copyload.i.i.i.i.i.i, 72
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.234.0.copyload.i.i.i.i.i.i, i64 %.idx.i142.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !1654
  store ptr %.sroa.234.0.copyload.i.i.i.i.i.i, ptr %i.cx, align 8, !noalias !1654
  store ptr %.sroa.234.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i143.i.i.i.i, align 8, !noalias !1654
  store i64 %.sroa.033.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1654
  store ptr %i.os, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1654
  %i.ot = icmp eq i64 %.sroa.335.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ot, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.i.i.i.i.i"

bb.eh:                                            ; preds = %bb.ei
  %i.ou = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ow, ptr %.sroa.5.0..sroa_idx.i143.i.i.i.i, align 8, !alias.scope !1709, !noalias !1710
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$syn..punctuated..IntoIter$LT$routes_macros..routes..RouteComponent$GT$$GT$17haf8289fbf5d2869dE"(ptr noalias noundef align 8 dereferenceable(32) %i.cx) #30
          to label %.thread138.i.i.i.i.i unwind label %bb.fd, !noalias !1655

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.i.i.i.i.i": ; preds = %bb.eg, %bb.fb
  %i.ov = phi ptr [ %i.ow, %bb.fb ], [ %.sroa.234.0.copyload.i.i.i.i.i.i, %bb.eg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1709), !noalias !1657
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 72 ; 5 uses
  %.sroa.097.0.copyload98.i.i.i.i.i = load i64, ptr %i.ov, align 8, !noalias !1711 ; 2 uses
  %.not71.i.i.i.i.i = icmp eq i64 %.sroa.097.0.copyload98.i.i.i.i.i, -9223372036854775808
  br i1 %.not71.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.sink.split.i.i.i.i.i", label %bb.ei

bb.ei:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx99.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i64 %.sroa.097.0.copyload98.i.i.i.i.i, ptr %i.cw, align 8, !noalias !1654
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx99.i.i.i.i.i, i64 64, i1 false), !noalias !1655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !1654
  invoke fastcc void @_ZN13routes_macros6routes5Route15apply_component17h559506c84a5d4f41E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias noundef align 8 dereferenceable(296) %i.de, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.cw)
          to label %bb.ez unwind label %bb.eh, !noalias !1655

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.sink.split.i.i.i.i.i": ; preds = %bb.fb, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.i.i.i.i.i"
  store ptr %i.ow, ptr %.sroa.5.0..sroa_idx.i143.i.i.i.i, align 8, !alias.scope !1709, !noalias !1710
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.sink.split.i.i.i.i.i", %bb.eg
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$syn..punctuated..IntoIter$LT$routes_macros..routes..RouteComponent$GT$$GT$17haf8289fbf5d2869dE"(ptr noalias noundef align 8 dereferenceable(32) %i.cx)
          to label %bb.ej unwind label %.thread148.i.loopexit.i.i.i.i, !noalias !1655

bb.ej:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13284.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.ox = load i64, ptr %i.de, align 8, !range !72, !alias.scope !1712, !noalias !1713, !noundef !69 ; 2 uses
  %.not.i150.i.i.i.i = icmp eq i64 %i.ox, -9223372036854775808
  %i.oy = load i64, ptr %i.hm, align 8, !range !72, !alias.scope !1712, !noalias !1713
  %.not1.i.i.i.i.i = icmp eq i64 %i.oy, -9223372036854775808
  %or.cond.i151.i.i.i.i = select i1 %.not.i150.i.i.i.i, i1 %.not1.i.i.i.i.i, i1 false
  %i.oz = load i64, ptr %i.hn, align 8, !range !72, !alias.scope !1712, !noalias !1713
  %.not2.i.i.i.i.i = icmp eq i64 %i.oz, -9223372036854775808
  %or.cond9.i.i.i.i.i = select i1 %or.cond.i151.i.i.i.i, i1 %.not2.i.i.i.i.i, i1 false
  %i.pa = load i64, ptr %i.ho, align 8, !range !72, !alias.scope !1712, !noalias !1713
  %.not3.i.i.i.i.i = icmp eq i64 %i.pa, -9223372036854775808
  %or.cond11.i.i.i.i.i = select i1 %or.cond9.i.i.i.i.i, i1 %.not3.i.i.i.i.i, i1 false
  %i.pb = load i64, ptr %i.hp, align 8, !range !72, !alias.scope !1712, !noalias !1713
  %.not4.i.i.i.i.i = icmp eq i64 %i.pb, -9223372036854775808
  %or.cond13.i.i.i.i.i = select i1 %or.cond11.i.i.i.i.i, i1 %.not4.i.i.i.i.i, i1 false
  %i.pc = load i64, ptr %i.hq, align 8, !range !72, !alias.scope !1712, !noalias !1713, !noundef !69
  %.not5.i.i.i.i.i = icmp eq i64 %i.pc, -9223372036854775808 ; 2 uses
  br i1 %or.cond13.i.i.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  br i1 %.not5.i.i.i.i.i, label %bb.eq, label %bb.eo

bb.el:                                            ; preds = %bb.ej
  br i1 %.not5.i.i.i.i.i, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.pd = invoke noundef i32 @_ZN3syn3lit6LitStr4span17had6a810bd02d5518E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hl)
          to label %.noexc159.i.i.i.i unwind label %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1602

.noexc159.i.i.i.i:                                ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1714
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1715
  %i.pe = call noundef dereferenceable_or_null(131) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 236) 131, i64 noundef range(i64 1, 9) 1) #28, !noalias !1715 ; 4 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %.invoke1457.i.i.i.i, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i.i.i.i.i.i"

.invoke1457.i.i.i.i:                              ; preds = %.noexc162.i.i.i.i, %.noexc159.i.i.i.i
  %i.pg = phi i64 [ 131, %.noexc159.i.i.i.i ], [ 89, %.noexc162.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 16, 236) %i.pg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #29
          to label %.cont1458.i.i.i.i unwind label %.thread148.i.loopexit.split-lp.i.loopexit.split-lp.i.i.i, !noalias !1602

.cont1458.i.i.i.i:                                ; preds = %.invoke1457.i.i.i.i
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i.i.i.i.i.i": ; preds = %.noexc159.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(131) %i.pe, ptr noundef nonnull readonly align 1 dereferenceable(131) @113, i64 range(i64 16, 236) 131, i1 false), !noalias !1716
  invoke void @"_ZN84_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..diagnostic..MultiSpan$GT$10into_spans17hba0a5edac53d6234E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ci, i32 noundef %i.pd)
          to label %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit.i.i.i.i.i unwind label %bb.en, !noalias !1717

bb.en:                                            ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i.i.i.i.i.i"
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pe, i64 noundef 131, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1718
  br label %.thread138.i.i.i.i.i

_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit.i.i.i.i.i: ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13284.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1714
  br label %_ZN13routes_macros6routes5Route5check17ha69948bf71b7f280E.exit.i.i.i.i

bb.eo:                                            ; preds = %bb.ek
  %i.pi = invoke noundef i32 @_ZN3syn3lit6LitStr4span17had6a810bd02d5518E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hl)
          to label %.noexc162.i.i.i.i unwind label %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1602

.noexc162.i.i.i.i:                                ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !1714
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1720
  %i.pj = call noundef dereferenceable_or_null(89) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 236) 89, i64 noundef range(i64 1, 9) 1) #28, !noalias !1720 ; 4 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %.invoke1457.i.i.i.i, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i14.i.i.i.i.i"

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i14.i.i.i.i.i": ; preds = %.noexc162.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(89) %i.pj, ptr noundef nonnull readonly align 1 dereferenceable(89) @114, i64 range(i64 16, 236) 89, i1 false), !noalias !1721
  invoke void @"_ZN84_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..diagnostic..MultiSpan$GT$10into_spans17hba0a5edac53d6234E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, i32 noundef %i.pi)
end_hunk_1
begin_hunk_2_@_ZN13routes_macros6routes10try_routes17he4d42556f3619d4bE:bb.a
  unreachable

bb.gc:                                            ; preds = %bb.gf, %bb.gd
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.gd:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.qx, ptr noundef nonnull readonly align 8 dereferenceable(296) %i.dt, i64 296, i1 false), !noalias !1748
  store ptr %i.qx, ptr %i.hh, align 8, !alias.scope !1744, !noalias !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !1652
  %i.ri = invoke noundef zeroext i1 @_ZN3syn5parse11ParseBuffer8is_empty17hb7c71bb822fae34cE(ptr noundef nonnull align 8 %i.er)
          to label %bb.ge unwind label %bb.gc, !noalias !1653

bb.ge:                                            ; preds = %bb.gd
  br i1 %i.ri, label %split1007.loopexit.i.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  invoke void @"_ZN55_$LT$syn..token..Comma$u20$as$u20$syn..parse..Parse$GT$5parse17hc2b68072bf80f418E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ds, ptr noundef nonnull align 8 %i.er)
          to label %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i unwind label %bb.gc, !noalias !1653

_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i: ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.rj = load i64, ptr %i.ds, align 8, !range !72, !alias.scope !1752, !noalias !1753, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.rj, -9223372036854775808
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.hi, align 8, !alias.scope !1754, !noalias !1652 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i", label %bb.gg

bb.gg:                                            ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i
  %.sroa.11.sroa.0.0.copyload255.i.i.i.i = load i32, ptr %.sroa.613.0..sroa_idx14.i.i.i.i.i, align 4, !noalias !1603
  %.sroa.11.sroa.8.0.copyload258.i.i.i.i = load i64, ptr %.sroa.11.sroa.8.0..sroa.613.0..sroa_idx14.i.sroa_idx.i.i.i.i, align 8, !noalias !1603
  br label %bb.gk

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i": ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !1652
  store ptr null, ptr %i.hh, align 8, !alias.scope !1756, !noalias !1652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.qx, i64 296, i1 false), !noalias !1757
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.hj, align 8, !noalias !1758
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.rk = load i64, ptr %i.du, align 8, !range !71, !alias.scope !1761, !noalias !1762, !noundef !69
  %i.rl = icmp eq i64 %.val1.i15.i.i.i.i.i, %i.rk
  br i1 %i.rl, label %bb.gh, label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i"

bb.gh:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h12d13fbf7ca2e73fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" unwind label %bb.gi, !noalias !1763

"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i": ; preds = %bb.gh
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1761, !noalias !1762 ; 2 uses
  %i.rm = ptrtoint ptr %.pre.i.i.i.i.i to i64
  br label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i"

bb.gi:                                            ; preds = %bb.gh
  %i.rn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.dq)
          to label %.body12.i.i.i.i.i unwind label %bb.gj, !noalias !1764

bb.gj:                                            ; preds = %bb.gi
  %i.ro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1765
  unreachable

"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i": ; preds = %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i"
  %.sroa.6179.0.copyload1002.i.i.i.i = phi i64 [ %i.rm, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" ], [ %.sroa.6179.0.copyload.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i" ]
  %i.rp = phi ptr [ %.pre.i.i.i.i.i, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" ], [ %.val.i14.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.rq = getelementptr inbounds nuw [304 x i8], ptr %i.rp, i64 %.val1.i15.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.rq, ptr noundef nonnull readonly align 8 dereferenceable(304) %i.dq, i64 304, i1 false), !noalias !1764
  %i.rr = add i64 %.val1.i15.i.i.i.i.i, 1         ; 3 uses
  store i64 %i.rr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1761, !noalias !1762
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qx, i64 noundef 296, i64 noundef 8) #28, !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !1652
  %i.rs = lshr i64 %i.rr, 32
  %i.rt = trunc nuw i64 %i.rs to i32
  br label %bb.cb

.body12.i.i.i.i.i:                                ; preds = %bb.gi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qx, i64 noundef 296, i64 noundef 8) #28, !noalias !1757
  br label %.body.i.i.i.i.i

.loopexit366.i.i.i.i:                             ; preds = %bb.fs
  %.sroa.23.sroa.0.0.extract.trunc230.le.i.i.i.i = trunc i64 %.sroa.23.0.copyload208.i.i.i.i to i32
  %.sroa.23.sroa.14.0.extract.trunc239.le.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.14.0.extract.shift238.i.i.i.i to i32
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit366.i.i.i.i, %bb.gg, %.thread316.i.i.i.i, %.thread337.i.i.i.i
  %.sroa.11.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.11.sroa.8.0.copyload258.i.i.i.i, %bb.gg ], [ %.sroa.29.5.ph.i.i.i.i, %.thread316.i.i.i.i ], [ %.sroa.29.3.i.i.i.i, %.thread337.i.i.i.i ], [ %.sroa.29.0.copyload219.i.i.i.i, %.loopexit366.i.i.i.i ]
  %.sroa.11.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.11.sroa.0.0.copyload255.i.i.i.i, %bb.gg ], [ %.sroa.23.sroa.14.5.ph.i.i.i.i, %.thread316.i.i.i.i ], [ %.sroa.23.sroa.14.3.i.i.i.i, %.thread337.i.i.i.i ], [ %.sroa.23.sroa.14.0.extract.trunc239.le.i.i.i.i, %.loopexit366.i.i.i.i ]
  %.sroa.10.0.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.gg ], [ %.sroa.23.sroa.0.5.ph.i.i.i.i, %.thread316.i.i.i.i ], [ %.sroa.23.sroa.0.3.i.i.i.i, %.thread337.i.i.i.i ], [ %.sroa.23.sroa.0.0.extract.trunc230.le.i.i.i.i, %.loopexit366.i.i.i.i ]
  %.sroa.6179.0.i.i.i.i = phi i64 [ %i.rj, %bb.gg ], [ %.sroa.13.5.ph.i.i.i.i, %.thread316.i.i.i.i ], [ %.sroa.13.3.i.i.i.i, %.thread337.i.i.i.i ], [ %.sroa.13.0.copyload201.i.i.i.i, %.loopexit366.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.ru = icmp eq i64 %.val1.i15.i.i.i.i.i, 0
  br i1 %i.ru, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80218e025fb37451E.exit.i.i.i.i.i.i", label %.lr.ph4031.a

"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph4031.a
  %i.rv = icmp eq i64 %i.rx, %.val1.i15.i.i.i.i.i
  br i1 %i.rv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80218e025fb37451E.exit.i.i.i.i.i.i", label %.lr.ph4031.a

.lr.ph4031.a:                                     ; preds = %bb.gk, %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i.i.i4030 = phi i64 [ %i.rx, %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.gk ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [304 x i8], ptr %.val.i14.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i4030
  %i.rx = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i4030, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.rw)
          to label %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit.i.i.i.i.i.i.i.i" unwind label %bb.gl, !noalias !1768

"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit7.i.i.i.i.i.i.i.i": ; preds = %.lr.ph4033.a
  %i.ry = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i4032, 1 ; 2 uses
  %i.rz = icmp eq i64 %i.ry, %.val1.i15.i.i.i.i.i
  br i1 %i.rz, label %.body.i.i.i.i.i.i, label %.lr.ph4033.a

bb.gl:                                            ; preds = %.lr.ph4031.a
  %i.sa = landingpad { ptr, i32 }
          cleanup
  %i.sb = icmp eq i64 %i.rx, %.val1.i15.i.i.i.i.i
  br i1 %i.sb, label %.body.i.i.i.i.i.i, label %.lr.ph4033.a

.lr.ph4033.a:                                     ; preds = %bb.gl, %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit7.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i.i.i4032 = phi i64 [ %i.ry, %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit7.i.i.i.i.i.i.i.i" ], [ %i.rx, %bb.gl ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [304 x i8], ptr %.val.i14.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i4032
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.sc)
          to label %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit7.i.i.i.i.i.i.i.i" unwind label %bb.gm, !noalias !1768

bb.gm:                                            ; preds = %.lr.ph4033.a
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1769
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit7.i.i.i.i.i.i.i.i", %bb.gl
  %.val4.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !range !71, !alias.scope !1767, !noalias !1652, !noundef !69 ; 2 uses
  %i.se = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.se, label %.body16.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %.body.i.i.i.i.i.i
  %i.sf = mul nuw i64 %.val4.i.i.i.i.i.i, 304
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14.i.i.i.i.i, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1768
  br label %.body16.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80218e025fb37451E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$17h157f4124ba38b0c9E.exit.i.i.i.i.i.i.i.i", %bb.gk
  %.val2.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !range !71, !alias.scope !1767, !noalias !1652, !noundef !69 ; 2 uses
  %i.sg = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.sg, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E.exit.i.i.i.i.i", label %bb.go

bb.go:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80218e025fb37451E.exit.i.i.i.i.i.i"
  %i.sh = mul nuw i64 %.val2.i.i.i.i.i.i, 304
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14.i.i.i.i.i, i64 noundef %i.sh, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1768
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E.exit.i.i.i.i.i"

.body16.i.i.i.i.i:                                ; preds = %bb.gn, %.body.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !alias.scope !1766, !noalias !1652, !align !70, !noundef !69
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$routes_macros..routes..Route$GT$$GT$$GT$17hadbd89b1de35fc32E"(ptr %.val1.i.i.i.i.i.i) #30
          to label %.thread300.i.i.i.i unwind label %bb.gr, !noalias !1770

"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E.exit.i.i.i.i.i": ; preds = %bb.go, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80218e025fb37451E.exit.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !alias.scope !1766, !noalias !1652, !align !70, !noundef !69 ; 4 uses
  %i.si = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.si, label %.thread344.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E.exit.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %.val.i.i.i.i.i.i)
          to label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..routes..Route$GT$$GT$17h785b4303bd9d510aE.exit.i.i.i.i.i.i.i" unwind label %bb.gq, !noalias !1770

bb.gq:                                            ; preds = %bb.gp
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 296, i64 noundef 8) #28, !noalias !1770
  br label %.thread300.i.i.i.i

"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..routes..Route$GT$$GT$17h785b4303bd9d510aE.exit.i.i.i.i.i.i.i": ; preds = %bb.gp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 296, i64 noundef 8) #28, !noalias !1770
  br label %.thread344.i.i.i.i

bb.gr:                                            ; preds = %.body16.i.i.i.i.i
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1770
  unreachable

bb.gs:                                            ; preds = %.body.i.i.i.i.i
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1653
  unreachable

.thread344.i.i.i.i:                               ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..routes..Route$GT$$GT$17h785b4303bd9d510aE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !1603
  br label %bb.gt

split1007.loopexit.i.i.i.i:                       ; preds = %bb.ge
  %i.sm = ptrtoint ptr %i.qx to i64
  br label %split1007.i.i.i.i

split1007.i.i.i.i:                                ; preds = %split1007.loopexit.i.i.i.i, %._crit_edge1006.i.i.i.i
  %.sroa.11.sroa.8.0.copyload.i.i.i.i = phi i64 [ %.sroa.11.sroa.8.0.copyload.pre.i.i.i.i, %._crit_edge1006.i.i.i.i ], [ %i.sm, %split1007.loopexit.i.i.i.i ] ; 5 uses
  %indvars11301319.i.i.i = trunc i64 %.val1.i15.i.i.i.i.i to i32 ; 2 uses
  %.sroa.0178.0.copyload.i.i.i.i = load i64, ptr %i.du, align 8, !noalias !1603 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !1603
  %i.sn = icmp eq i64 %.sroa.0178.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.sn, label %bb.gt, label %bb.hb

bb.gt:                                            ; preds = %split1007.i.i.i.i, %.thread344.i.i.i.i
  %.sroa.6179.1353.i.i.i.i = phi i64 [ %.sroa.6179.0.i.i.i.i, %.thread344.i.i.i.i ], [ %.sroa.6179.0.copyload.i.i.i.i, %split1007.i.i.i.i ] ; 3 uses
  %.sroa.10.1352.i.i.i.i = phi i32 [ %.sroa.10.0.i.i.i.i, %.thread344.i.i.i.i ], [ %indvars11301319.i.i.i, %split1007.i.i.i.i ]
  %.sroa.11.sroa.0.1351.i.i.i.i = phi i32 [ %.sroa.11.sroa.0.0.i.i.i.i, %.thread344.i.i.i.i ], [ %.sroa.11.sroa.0.0.copyload.i.i.i.i, %split1007.i.i.i.i ]
  %.sroa.11.sroa.8.1350.i.i.i.i = phi i64 [ %.sroa.11.sroa.8.0.i.i.i.i, %.thread344.i.i.i.i ], [ %.sroa.11.sroa.8.0.copyload.i.i.i.i, %split1007.i.i.i.i ] ; 3 uses
  %.sroa.13.0.insert.ext.i.i.i = zext i32 %.sroa.10.1352.i.i.i.i to i64
  %.sroa.13.4.insert.ext.i.i.i = zext i32 %.sroa.11.sroa.0.1351.i.i.i.i to i64
  %.sroa.13.4.insert.shift.i.i.i = shl nuw i64 %.sroa.13.4.insert.ext.i.i.i, 32
  %.sroa.13.4.insert.insert.i.i.i = or disjoint i64 %.sroa.13.4.insert.shift.i.i.i, %.sroa.13.0.insert.ext.i.i.i
  %i.so = inttoptr i64 %.sroa.13.4.insert.insert.i.i.i to ptr ; 3 uses
  invoke void @"_ZN65_$LT$syn..parse..ParseBuffer$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha22d930e1cfc7039E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %bb.gx unwind label %bb.gu, !noalias !1602

bb.gu:                                            ; preds = %bb.gt
  %i.sp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.sq = load ptr, ptr %i.ic, align 8, !alias.scope !1774, !noalias !1603, !noundef !69 ; 3 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %.body.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ss = load i64, ptr %i.sq, align 8, !noalias !1775, !noundef !69
  %i.st = add i64 %i.ss, -1                       ; 2 uses
  store i64 %i.st, ptr %i.sq, align 8, !noalias !1775
  %i.su = icmp eq i64 %i.st, 0
  br i1 %i.su, label %bb.gw, label %.body.i.i.i.i

bb.gw:                                            ; preds = %bb.gv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %.body.i.i.i.i unwind label %bb.ha, !noalias !1602

bb.gx:                                            ; preds = %bb.gt
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  %i.sv = load ptr, ptr %i.ic, align 8, !alias.scope !1779, !noalias !1603, !noundef !69 ; 3 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i", label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sx = load i64, ptr %i.sv, align 8, !noalias !1780, !noundef !69
  %i.sy = add i64 %i.sx, -1                       ; 2 uses
  store i64 %i.sy, ptr %i.sv, align 8, !noalias !1780
  %i.sz = icmp eq i64 %i.sy, 0
  br i1 %i.sz, label %bb.gz, label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i"

bb.gz:                                            ; preds = %bb.gy
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i" unwind label %.loopexit.i.i.i, !noalias !1602

bb.ha:                                            ; preds = %bb.gw
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1602
  unreachable

bb.hb:                                            ; preds = %split1007.i.i.i.i
  store i64 %.sroa.0178.0.copyload.i.i.i.i, ptr %i.ep, align 8, !noalias !1603
  store i64 %.sroa.6179.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !1603
  store i32 %indvars11301319.i.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !1603
  store i32 %.sroa.11.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 4, !noalias !1603
  store i64 %.sroa.11.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.6.sroa.8.sroa.7.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !1603
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !1603
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !alias.scope !1781, !noalias !1782, !noundef !69 ; 4 uses
  %i.tb = inttoptr i64 %.sroa.11.sroa.8.0.copyload.i.i.i.i to ptr ; 4 uses
  %i.tc = icmp ult i64 %.val11.i.i.i.i.i, 30340039594917026
  call void @llvm.assume(i1 %i.tc)
  %.not.i.i109.i.i.i.i = icmp ne i64 %.sroa.11.sroa.8.0.copyload.i.i.i.i, 0 ; 4 uses
  %..i.i.i.i.i.i = zext i1 %.not.i.i109.i.i.i.i to i64
  %i.td = add nuw nsw i64 %.val11.i.i.i.i.i, %..i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %i.te = icmp eq i64 %i.td, 0
  %i.tf = inttoptr i64 %.sroa.6179.0.copyload.i.i.i.i to ptr ; 4 uses
  br i1 %i.te, label %bb.he, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.hb
  %i.tg = mul nuw nsw i64 %i.td, 296              ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1784
  %i.th = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.tg, i64 noundef range(i64 1, 9) 8) #28, !noalias !1784 ; 2 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.tg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.hr, !noalias !1785

.noexc.i.i.i.i.i:                                 ; preds = %bb.hc
  unreachable

bb.hd:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i"
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.he:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.hb
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.hb ], [ %i.th, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  store i64 %i.td, ptr %i.dp, align 8, !alias.scope !1783, !noalias !1786
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.hy, align 8, !alias.scope !1783, !noalias !1786
  store i64 0, ptr %i.hz, align 8, !alias.scope !1783, !noalias !1786
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.val11.i.i.i.i.i, 304
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.idx.i.i.i.i.i ; 3 uses
  store ptr %i.tf, ptr %i.do, align 8, !noalias !1786
  store i64 %.sroa.0178.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i111.i.i.i.i, align 8, !noalias !1786
  store ptr %i.tk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1786
  %i.tl = icmp eq i64 %.val11.i.i.i.i.i, 0
  br i1 %i.tl, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i"

.body.i113.i.i.i.i:                               ; preds = %bb.hh
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h860745271fd26cc8E"(ptr noalias noundef align 8 dereferenceable(32) %i.do) #30
          to label %bb.hq unwind label %bb.hp, !noalias !1785

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i": ; preds = %bb.he, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i"
  %i.tm = phi ptr [ %i.tu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.he ] ; 2 uses
  %i.tn = phi i64 [ %i.tw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ 0, %bb.he ] ; 4 uses
  %i.to = phi ptr [ %i.tp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ %i.tf, %bb.he ] ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 304 ; 4 uses
  %.sroa.024.0.copyload.i.i.i.i.i = load i64, ptr %i.to, align 8, !noalias !1787 ; 2 uses
  %.not.i112.i.i.i.i = icmp eq i64 %.sroa.024.0.copyload.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i112.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i", label %bb.hf

bb.hf:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i"
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i64 %.sroa.024.0.copyload.i.i.i.i.i, ptr %i.dn, align 8, !noalias !1786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.426.0..sroa_idx27.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.426.0..sroa_idx.i.i.i.i.i, i64 288, i1 false), !noalias !1785
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %i.tq = load i64, ptr %i.dp, align 8, !range !71, !alias.scope !1790, !noalias !1791, !noundef !69
  %i.tr = icmp eq i64 %i.tn, %i.tq
  br i1 %i.tr, label %bb.hg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i"

bb.hg:                                            ; preds = %bb.hf
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc520aab52cf0e3caE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit_crit_edge.i.i.i.i.i" unwind label %bb.hh, !noalias !1792

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit_crit_edge.i.i.i.i.i": ; preds = %bb.hg
  %.pre.i114.i.i.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !1790, !noalias !1791
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i"

bb.hh:                                            ; preds = %bb.hg
  %i.ts = landingpad { ptr, i32 }
          cleanup
  store ptr %i.tp, ptr %.sroa.2.0..sroa_idx.i110.i.i.i.i, align 8, !noalias !1786
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(296) %i.dn) #30
          to label %.body.i113.i.i.i.i unwind label %bb.hi, !noalias !1793

bb.hi:                                            ; preds = %bb.hh
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1794
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit_crit_edge.i.i.i.i.i", %bb.hf
  %i.tu = phi ptr [ %.pre.i114.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit_crit_edge.i.i.i.i.i" ], [ %i.tm, %bb.hf ] ; 3 uses
  %i.tv = getelementptr inbounds nuw [296 x i8], ptr %i.tu, i64 %i.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.tv, ptr noundef nonnull readonly align 8 dereferenceable(296) %i.dn, i64 296, i1 false), !noalias !1793
  %i.tw = add nuw nsw i64 %i.tn, 1                ; 3 uses
  store i64 %i.tw, ptr %i.hz, align 8, !alias.scope !1790, !noalias !1791
  %i.tx = icmp eq ptr %i.tp, %i.tk
  br i1 %i.tx, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i", %bb.he
  %i.ty = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.he ], [ %i.tu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ %i.tm, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i" ] ; 2 uses
  %i.tz = phi i64 [ 0, %bb.he ], [ %i.tw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ %i.tn, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i" ] ; 4 uses
  %i.ua = phi ptr [ %i.tf, %bb.he ], [ %i.tk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1be5c09a0c36b834E.exit.i.i.i.i.i" ], [ %i.tp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.i.i.i.i.i" ]
  store ptr %i.ua, ptr %.sroa.2.0..sroa_idx.i110.i.i.i.i, align 8, !noalias !1786
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h860745271fd26cc8E"(ptr noalias noundef align 8 dereferenceable(32) %i.do)
          to label %bb.hj unwind label %bb.hd, !noalias !1785

bb.hj:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5761f1c8f7908ecaE.exit.thread.i.i.i.i.i"
  %.not.i.i109.i.i.i.i.not = icmp eq i64 %.sroa.11.sroa.8.0.copyload.i.i.i.i, 0
  %.sroa.033.0.copyload.pre46.i.i.i.i.i = load i64, ptr %i.dp, align 8, !noalias !1786 ; 3 uses
  br i1 %.not.i.i109.i.i.i.i.not, label %bb.ht, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dm, ptr noundef nonnull align 8 dereferenceable(296) %i.tb, i64 296, i1 false), !noalias !1785
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.ub = icmp eq i64 %i.tz, %.sroa.033.0.copyload.pre46.i.i.i.i.i
  br i1 %i.ub, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc520aab52cf0e3caE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %._crit_edge.i.i.i.i.i unwind label %bb.hm, !noalias !1797

._crit_edge.i.i.i.i.i:                            ; preds = %bb.hl
  %.pre45.i.i.i.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !1798, !noalias !1799
  %.sroa.033.0.copyload.pre.pre.i.i.i.i.i = load i64, ptr %i.dp, align 8, !noalias !1786
  br label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.uc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(296) %i.dm) #30
          to label %.body13.i.i.i.i.i unwind label %bb.hn, !noalias !1800

bb.hn:                                            ; preds = %bb.hm
  %i.ud = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1801
  unreachable

.body13.i.i.i.i.i:                                ; preds = %bb.hm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tb, i64 noundef 296, i64 noundef 8) #28, !noalias !1785
  br label %bb.hq

bb.ho:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.hk
  %.sroa.033.0.copyload.pre.i.i.i.i.i = phi i64 [ %.sroa.033.0.copyload.pre.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.033.0.copyload.pre46.i.i.i.i.i, %bb.hk ]
  %i.ue = phi ptr [ %.pre45.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ty, %bb.hk ] ; 2 uses
  %i.uf = getelementptr inbounds nuw [296 x i8], ptr %i.ue, i64 %i.tz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.uf, ptr noundef nonnull readonly align 8 dereferenceable(296) %i.dm, i64 296, i1 false), !noalias !1800
  %i.ug = add i64 %i.tz, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tb, i64 noundef 296, i64 noundef 8) #28, !noalias !1785
  br label %bb.ht

bb.hp:                                            ; preds = %bb.hs, %bb.hr, %bb.hq, %.body.i113.i.i.i.i
  %i.uh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1785
  unreachable

bb.hq:                                            ; preds = %.body13.i.i.i.i.i, %.body.i113.i.i.i.i, %bb.hd
  %.not.i.i109.i.i.i.i2904 = phi i1 [ %.not.i.i109.i.i.i.i, %.body.i113.i.i.i.i ], [ %.not.i.i109.i.i.i.i, %bb.hd ], [ true, %.body13.i.i.i.i.i ]
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ts, %.body.i113.i.i.i.i ], [ %i.tj, %bb.hd ], [ %i.uc, %.body13.i.i.i.i.i ]
  %.sroa.02.1.i.i.i.i.i = phi i1 [ true, %.body.i113.i.i.i.i ], [ true, %bb.hd ], [ false, %.body13.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$routes_macros..routes..Route$GT$$GT$17h99ed96ae0ee1e5beE"(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #30
          to label %.thread.i.i.i.i.i unwind label %bb.hp, !noalias !1785

.thread.i.i.i.i.i:                                ; preds = %bb.hr, %bb.hq
  %.not.i.i109.i.i.i.i2903 = phi i1 [ %.not.i.i109.i.i.i.i, %bb.hr ], [ %.not.i.i109.i.i.i.i2904, %bb.hq ]
  %.sroa.02.040.i.i.i.i.i = phi i1 [ true, %bb.hr ], [ %.sroa.02.1.i.i.i.i.i, %bb.hq ]
  %.pn.pn.pn39.i.i.i.i.i = phi { ptr, i32 } [ %i.ui, %bb.hr ], [ %.pn.pn.i.i.i.i.i, %bb.hq ] ; 2 uses
  %or.cond.i.i.i.i.i = and i1 %.not.i.i109.i.i.i.i2903, %.sroa.02.040.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.hs, label %.thread300.i.i.i.i

bb.hr:                                            ; preds = %bb.hc
  %i.ui = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$routes_macros..routes..Route$C$syn..token..Comma$RP$$GT$$GT$17h1f9a1e1326d365d2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ep) #30
          to label %.thread.i.i.i.i.i unwind label %bb.hp, !noalias !1802

bb.hs:                                            ; preds = %.thread.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$routes_macros..routes..Route$GT$$GT$17h785b4303bd9d510aE"(ptr %i.tb) #30
          to label %.thread300.i.i.i.i unwind label %bb.hp, !noalias !1785

bb.ht:                                            ; preds = %bb.ho, %bb.hj
  %.sroa.335.0.copyload.i.i.i.i.i = phi i64 [ %i.tz, %bb.hj ], [ %i.ug, %bb.ho ] ; 3 uses
  %.sroa.234.0.copyload.i.i.i.i.i = phi ptr [ %i.ty, %bb.hj ], [ %i.ue, %bb.ho ] ; 6 uses
  %.sroa.033.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.033.0.copyload.pre46.i.i.i.i.i, %bb.hj ], [ %.sroa.033.0.copyload.pre.i.i.i.i.i, %bb.ho ]
  %i.uj = icmp ult i64 %.sroa.335.0.copyload.i.i.i.i.i, 31160040665049919
  call void @llvm.assume(i1 %i.uj)
  %.idx.i.i.i.i = mul nuw nsw i64 %.sroa.335.0.copyload.i.i.i.i.i, 296 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.234.0.copyload.i.i.i.i.i, i64 %.idx.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !1803
  store ptr %.sroa.234.0.copyload.i.i.i.i.i, ptr %i.dl, align 8, !alias.scope !1804, !noalias !1805
  store ptr %.sroa.234.0.copyload.i.i.i.i.i, ptr %.sroa.5175.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1804, !noalias !1805
  store i64 %.sroa.033.0.copyload.i.i.i.i.i, ptr %.sroa.6176.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1804, !noalias !1805
  store ptr %i.uk, ptr %.sroa.7177.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1804, !noalias !1805
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !1808
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  %i.ul = icmp eq i64 %.sroa.335.0.copyload.i.i.i.i.i, 0
  br i1 %i.ul, label %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i"

"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ht
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.234.0.copyload.i.i.i.i.i, i64 296
  store ptr %i.um, ptr %.sroa.5175.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1811, !noalias !1812
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.234.0.copyload.i.i.i.i.i, align 8, !noalias !1813 ; 2 uses
  %.not.i.i.i.i118.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i118.i.i.i.i, label %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.thread.i.i.i.i.i.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i

"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i", %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !1808
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$syn..punctuated..IntoIter$LT$routes_macros..routes..Route$GT$$GT$17h018108f84f59bdc1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %bb.if unwind label %.thread309.i.i.i.i, !noalias !1602

.thread309.i.i.i.i:                               ; preds = %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.thread.i.i.i.i.i.i.i.i"
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.thread300.i.i.i.i

bb.hu:                                            ; preds = %bb.hv
  %i.uo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef align 8 dereferenceable(296) %i.dj) #30
          to label %bb.ie unwind label %bb.id, !noalias !1814

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.234.0.copyload.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !1808
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.dj, align 8, !noalias !1808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 288, i1 false), !noalias !1814
  %gepdiff.i.i.i.i = add nsw i64 %.idx.i.i.i.i, -296
  %i.up = udiv exact i64 %gepdiff.i.i.i.i, 296
  %i.uq = call i64 @llvm.umax.i64(i64 %i.up, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.uq, 1 ; 2 uses
  %i.ur = mul i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 296 ; 3 uses
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %bb.hw, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1815
  %i.ut = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ur, i64 noundef range(i64 1, 9) 8) #28, !noalias !1815 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, null
  br i1 %i.uu, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ur, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #29
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.hu, !noalias !1814

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.hv
  unreachable

bb.hw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ut, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.uv = icmp samesign ult i64 %i.uq, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.uv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(296) %i.dj, i64 296, i1 false), !noalias !1814
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %i.dk, align 8, !noalias !1808
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1808
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !1808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 32, i1 false), !noalias !1816
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.uw = load ptr, ptr %i.ia, align 8, !alias.scope !1821, !noalias !1822, !nonnull !69, !noundef !69 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !1823, !noalias !1824 ; 2 uses
  %i.ux = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i, %i.uw
  br i1 %i.ux, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h2685d4d121656fefE.exit.i.i.i.i.i.i.i.i.i", label %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i"

"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.hw
  %i.uy = ptrtoint ptr %i.uw to i64
  br label %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i.i.i"

bb.hx:                                            ; preds = %bb.hz
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$syn..punctuated..IntoIter$LT$routes_macros..routes..Route$GT$$GT$17h018108f84f59bdc1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.di) #30
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ib, !noalias !1825

"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i"
  %i.uz = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i" ], [ %i.vf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.va = phi i64 [ 1, %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i" ], [ %i.vh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.val67.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i, %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.lr.ph.i.i.i.i.i.i.i.i.i.i" ], [ %i.vb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.vb = getelementptr inbounds nuw i8, ptr %.val67.i.i.i.i.i.i.i.i.i.i, i64 296 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val67.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1828 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h2685d4d121656fefE.exit.i.loopexit.i.i.i.i.i.i.i.i", label %bb.hy

bb.hy:                                            ; preds = %"_ZN93_$LT$syn..punctuated..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc991366356f68238E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val67.i.i.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !1829
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, ptr %i.dh, align 8, !noalias !1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, i64 288, i1 false), !noalias !1830
  %i.vc = icmp samesign ult i64 %i.va, 31160040665049919
  call void @llvm.assume(i1 %i.vc)
  %i.vd = load i64, ptr %i.dk, align 8, !range !71, !alias.scope !1831, !noalias !1832, !noundef !69
  %i.ve = icmp eq i64 %i.va, %i.vd
  br i1 %i.ve, label %bb.ia, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i_crit_edge.i.i.i.i.i.i.i.i", %bb.hy
  %i.vf = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hecde34d9389fb4eaE.exit.i.i_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.uz, %bb.hy ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [296 x i8], ptr %i.vf, i64 %i.va
end_hunk_2
