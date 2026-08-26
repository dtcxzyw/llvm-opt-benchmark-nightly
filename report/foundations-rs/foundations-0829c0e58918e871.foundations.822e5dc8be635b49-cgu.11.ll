Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.11?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [43 x i8] c"fatal runtime error: unreachable, aborting\0A", align 1
@1 = private unnamed_addr constant ptr @_RNvYNCNKNvNtCs6AjmZOIP0uL_12thread_local9thread_id6THREAD0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell4CellIB1J_NtB8_6ThreadEEEEEE9call_onceCsbaWXNhtWAp9_11foundations, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtCs55GSN77t6jg_9trackable8LocationNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsbaWXNhtWAp9_11foundations8security6ArgCmpNtB6_5Debug3fmtBA_ }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_boolCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer19erased_serialize_i8CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_i16CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_i32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_i64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_i128CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer19erased_serialize_u8CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_u16CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_u32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_u64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_u128CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_f32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_f64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_charCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_strCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer22erased_serialize_bytesCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_noneCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_someCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer21erased_serialize_unitCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer28erased_serialize_unit_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer29erased_serialize_unit_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer31erased_serialize_newtype_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer32erased_serialize_newtype_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_seqCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer22erased_serialize_tupleCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer29erased_serialize_tuple_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer30erased_serialize_tuple_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_serialize_mapCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer23erased_serialize_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer31erased_serialize_struct_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer24erased_is_human_readableCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer20erased_display_errorCsbaWXNhtWAp9_11foundations }>, align 8
@6 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@7 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/erased-serde-0.4.10/src/ser.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\AF\02\00\00\0E\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_boolCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer19erased_serialize_i8CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i16CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_i128CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer19erased_serialize_u8CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u16CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_u128CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_f32CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_f64CsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_charCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_strCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer22erased_serialize_bytesCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_noneCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_someCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_unitCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer28erased_serialize_unit_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer29erased_serialize_unit_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer31erased_serialize_newtype_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer32erased_serialize_newtype_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_seqCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer22erased_serialize_tupleCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer29erased_serialize_tuple_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer30erased_serialize_tuple_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_mapCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer23erased_serialize_structCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer31erased_serialize_struct_variantCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer24erased_is_human_readableCsbaWXNhtWAp9_11foundations, ptr @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_display_errorCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNtCsduyiHOaxwSq_10serde_json3ser6ESCAPE = external local_unnamed_addr global [256 x i8]
@10 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server12pprof_symbol12pprof_symbol0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsk0CWu4ZZ5RA_9backtrace9symbolize6SymbolEE9call_once6vtableBg_, ptr @_RNCNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server12pprof_symbol12pprof_symbol0s_0Bb_ }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEEB2i_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEENtNtB8_3fmt5Write9write_strB22_, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEENtNtBb_3fmt5Write10write_charB1Z_, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEENtNtBb_3fmt5Write9write_fmtB1Z_ }>, align 8
@12 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@13 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorENtNtB8_3fmt5Write9write_strCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorENtNtBb_3fmt5Write10write_charCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorENtNtBb_3fmt5Write9write_fmtCsbaWXNhtWAp9_11foundations }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCsbaWXNhtWAp9_11foundations }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsbaWXNhtWAp9_11foundations }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics6rewind16RewindableWriterEEB1v_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics6rewind16RewindableWriterENtNtB8_3fmt5Write9write_strB1f_, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics6rewind16RewindableWriterENtNtBb_3fmt5Write10write_charB1c_, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics6rewind16RewindableWriterENtNtBb_3fmt5Write9write_fmtB1c_ }>, align 8
@19 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/sync/mpsc/list.rs\00", align 1
@20 = private unnamed_addr constant [34 x i8] c"could not resolve to any addresses", align 1
@21 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @20, [9 x i8] c"\22\00\00\00\00\00\00\00\14", [7 x i8] undef }>, align 8
@22 = private unnamed_addr constant [2 x i8] c",\0A", align 1
@23 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@24 = private unnamed_addr constant [2 x i8] c": ", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs5brsvYHD4Ou_12erased_serde3serRReNtB4_9Serialize16erased_serializeCsbaWXNhtWAp9_11foundations, ptr @_RNvXs_NtCs5brsvYHD4Ou_12erased_serde3serRReNtB4_9Serialize19do_erased_serializeCsbaWXNhtWAp9_11foundations }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs5brsvYHD4Ou_12erased_serde3serRmNtB4_9Serialize16erased_serializeCsbaWXNhtWAp9_11foundations, ptr @_RNvXs_NtCs5brsvYHD4Ou_12erased_serde3serRmNtB4_9Serialize19do_erased_serializeCsbaWXNhtWAp9_11foundations }>, align 8
@27 = private unnamed_addr constant [1 x i8] c"\22", align 1
@28 = private unnamed_addr constant [5 x i8] c"false", align 1
@29 = private unnamed_addr constant [4 x i8] c"true", align 1
@30 = private unnamed_addr constant [4 x i8] c"null", align 1
@_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS = external local_unnamed_addr global [16 x i8]
@31 = private unnamed_addr constant [1 x i8] c",", align 1
@32 = private unnamed_addr constant [1 x i8] c":", align 1
@33 = private unnamed_addr constant [11 x i8] c"\C1 \00\80`\01\09\C0\01\0A\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNCNKNvNtCs6AjmZOIP0uL_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { i64, [2 x i64] } } }
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuarduEEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuarduEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@36 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@38 = private unnamed_addr constant [43 x i8] c"foundations/src/telemetry/metrics/gauge.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"*\00\00\00\00\00\00\00o\00\00\001\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"g\00\00\00\00\00\00\00\A0\01\00\00-\00\00\00" }>, align 8
@41 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/util/linked_list.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"i\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/util/sharded_list.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"j\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"i\00\00\00\00\00\00\00o\01\00\00*\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"i\00\00\00\00\00\00\00\81\01\00\00=\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"i\00\00\00\00\00\00\00\93\01\00\00I\00\00\00" }>, align 8
@_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@48 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@49 = private unnamed_addr constant [3 x i8] c"min", align 1
@50 = private unnamed_addr constant [3 x i8] c"max", align 1
@51 = private unnamed_addr constant [3 x i8] c"inf", align 1
@52 = private unnamed_addr constant [4 x i8] c"-inf", align 1
@53 = private unnamed_addr constant [3 x i8] c"NaN", align 1
@54 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@55 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs7XllS0bOcsN_6anyhow7contextINtB5_6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBQ_5Write9write_str, ptr @_RNvYINtNtCs7XllS0bOcsN_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write10write_charCsbaWXNhtWAp9_11foundations, ptr @_RNvYINtNtCs7XllS0bOcsN_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write9write_fmtCsbaWXNhtWAp9_11foundations }>, align 8
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtCskPybTjkUzGz_6quanta5ClockNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@57 = private unnamed_addr constant [11 x i8] c"QuantaClock", align 1
@58 = private unnamed_addr constant [5 x i8] c"clock", align 1
@59 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itoa-1.0.18/src/lib.rs\00", align 1
@60 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@61 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/string.rs\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"K\00\00\00\00\00\00\00\96\0B\00\00\0E\00\00\00" }>, align 8
@63 = private unnamed_addr constant [5 x i8] c"Error", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"[\00\00\00\00\00\00\00\BA\00\00\00\01\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"[\00\00\00\00\00\00\00\BB\00\00\00\01\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"[\00\00\00\00\00\00\00\BC\00\00\00\01\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"[\00\00\00\00\00\00\00\BD\00\00\00\01\00\00\00" }>, align 8
@_RNvCs2hX8a5MxWVJ_4itoa13DECIMAL_PAIRS = external local_unnamed_addr global { [200 x i8] }

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12strip_prefixReECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !8 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !15 ; 2 uses
  %i.b = sub nuw i64 %1, %3, !dbg !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %3, !dbg !23
  %.sroa.3.0.i = select i1 %i.a, i64 %i.b, i64 undef, !dbg !23
  %.sroa.0.0.i = select i1 %i.a, ptr %i.c, ptr null, !dbg !23
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0, !dbg !24
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0.i, 1, !dbg !24
  ret { ptr, i64 } %i.e, !dbg !25
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !27 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0, !dbg !58
  br i1 %i.b, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i.i, !dbg !97

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64, !dbg !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !115 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !dbg !118, !noalias !119, !noundef !14 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1, !dbg !133
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i, !dbg !133

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31, !dbg !135
  %i.j = zext nneg i8 %i.i to i32, !dbg !135      ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a, !dbg !138
  tail call void @llvm.assume(i1 %i.k), !dbg !142
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !143 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !dbg !145, !noalias !119, !noundef !14
  %i.n = shl nuw nsw i32 %i.j, 6, !dbg !146
  %i.o = and i8 %i.m, 63, !dbg !150
  %i.p = zext nneg i8 %i.o to i32, !dbg !150      ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p, !dbg !146
  %i.r = icmp samesign ugt i8 %i.g, -33, !dbg !151
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i, label %bb.c, !dbg !151

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32, !dbg !153
  br label %bb.c, !dbg !154

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a, !dbg !157
  tail call void @llvm.assume(i1 %i.t), !dbg !160
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3, !dbg !161 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !dbg !163, !noalias !119, !noundef !14
  %i.w = shl nuw nsw i32 %i.p, 6, !dbg !164
  %i.x = and i8 %i.v, 63, !dbg !167
  %i.y = zext nneg i8 %i.x to i32, !dbg !167
  %i.z = or disjoint i32 %i.w, %i.y, !dbg !164    ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12, !dbg !168
  %i.ab = or disjoint i32 %i.z, %i.aa, !dbg !170
  %i.ac = icmp samesign ugt i8 %i.g, -17, !dbg !171
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i.i.i, label %bb.c, !dbg !171

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a, !dbg !172
  tail call void @llvm.assume(i1 %i.ad), !dbg !175
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !176
  %i.af = load i8, ptr %i.u, align 1, !dbg !178, !noalias !119, !noundef !14
  %i.ag = shl nuw nsw i32 %i.j, 18, !dbg !179
  %i.ah = and i32 %i.ag, 1835008, !dbg !179
  %i.ai = shl nuw nsw i32 %i.z, 6, !dbg !181
  %i.aj = and i8 %i.af, 63, !dbg !183
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !183
  %i.al = or disjoint i32 %i.ai, %i.ak, !dbg !181
  %i.am = or disjoint i32 %i.al, %i.ah, !dbg !184
  br label %bb.c, !dbg !185

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i ], [ %i.f, %bb.b ], !dbg !186 ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112, !dbg !188
  tail call void @llvm.assume(i1 %i.ao), !dbg !188
  %i.ap = ptrtoint ptr %i.an to i64, !dbg !208
  %i.aq = sub i64 %i.ap, %i.e, !dbg !215
  %i.ar = add i64 %i.aq, %i.c, !dbg !217          ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i
  ], !dbg !218

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133, !dbg !233
  br i1 %i.as, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, label %bb.e, !dbg !233

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8, !dbg !234
  switch i32 %i.at, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ], !dbg !241

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760, !dbg !242
  %i.av = zext i1 %i.au to i8, !dbg !242
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !243

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288, !dbg !244
  %i.ax = zext i1 %i.aw to i8, !dbg !244
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !245

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255, !dbg !246
  %i.az = zext nneg i32 %i.ay to i64, !dbg !246
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az, !dbg !247
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !247, !noalias !248, !noundef !14
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !249

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255, !dbg !250
  %i.bd = zext nneg i32 %i.bc to i64, !dbg !250
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd, !dbg !251
  %i.bf = load i8, ptr %i.be, align 1, !dbg !251, !noalias !248, !noundef !14
  %i.bg = lshr i8 %i.bf, 1, !dbg !251
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !252

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ], !dbg !253
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1, !dbg !254
  br i1 %i.bh, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, !dbg !255

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a, !dbg !58
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i, !dbg !97

_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.020 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.018 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i ], [ %i.c, %bb.e ], !dbg !256 ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.020, %i.a, !dbg !257
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4, !dbg !286

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1, !dbg !287 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !298, !noalias !299, !noundef !14 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1, !dbg !298
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i, !dbg !298

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.020, %i.bl, !dbg !313
  tail call void @llvm.assume(i1 %i.bo), !dbg !318
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2, !dbg !319 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !324, !noalias !299, !noundef !14 ; 3 uses
  %i.br = and i8 %i.bq, 31, !dbg !325
  %i.bs = zext nneg i8 %i.br to i32, !dbg !325
  %i.bt = icmp slt i8 %i.bq, -64, !dbg !329
  br i1 %i.bt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i, label %bb.k, !dbg !332

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32, !dbg !333
  br label %bb.m, !dbg !335

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.020, %i.bp, !dbg !337
  tail call void @llvm.assume(i1 %i.bv), !dbg !340
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3, !dbg !341 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !346, !noalias !299, !noundef !14 ; 3 uses
  %i.by = and i8 %i.bx, 15, !dbg !347
  %i.bz = zext nneg i8 %i.by to i32, !dbg !347
  %i.ca = icmp slt i8 %i.bx, -64, !dbg !350
  br i1 %i.ca, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i.i.i, label %bb.l, !dbg !352

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i.i.i ], !dbg !353
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6, !dbg !354
  %i.cd = and i8 %i.bm, 63, !dbg !357
  %i.ce = zext nneg i8 %i.cd to i32, !dbg !357
  %i.cf = or disjoint i32 %i.cc, %i.ce, !dbg !354
  br label %bb.m, !dbg !358

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.020, %i.bw, !dbg !359
  tail call void @llvm.assume(i1 %i.cg), !dbg !362
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4, !dbg !363 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !368, !noalias !299, !noundef !14
  %i.cj = and i8 %i.ci, 7, !dbg !369
  %i.ck = zext nneg i8 %i.cj to i32, !dbg !369
  %i.cl = shl nuw nsw i32 %i.ck, 6, !dbg !372
  %i.cm = and i8 %i.bx, 63, !dbg !374
  %i.cn = zext nneg i8 %i.cm to i32, !dbg !374
  %i.co = or disjoint i32 %i.cl, %i.cn, !dbg !372
  br label %bb.l, !dbg !375

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i.i.i ], !dbg !376
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6, !dbg !377
  %i.cr = and i8 %i.bq, 63, !dbg !379
  %i.cs = zext nneg i8 %i.cr to i32, !dbg !379
  %i.ct = or disjoint i32 %i.cq, %i.cs, !dbg !377
  br label %bb.k, !dbg !380

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ], !dbg !381 ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112, !dbg !383
  tail call void @llvm.assume(i1 %i.cv), !dbg !383
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ], !dbg !394

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133, !dbg !400
  br i1 %i.cw, label %bb.u, label %bb.o, !dbg !400

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8, !dbg !401
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ], !dbg !403

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760, !dbg !404
  %i.cz = zext i1 %i.cy to i8, !dbg !404
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, !dbg !405

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288, !dbg !406
  %i.db = zext i1 %i.da to i8, !dbg !406
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, !dbg !407

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255, !dbg !408
  %i.dd = zext nneg i32 %i.dc to i64, !dbg !408
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd, !dbg !409
  %i.df = load i8, ptr %i.de, align 1, !dbg !409, !noalias !410, !noundef !14
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, !dbg !411

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255, !dbg !412
  %i.dh = zext nneg i32 %i.dg to i64, !dbg !412
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh, !dbg !413
  %i.dj = load i8, ptr %i.di, align 1, !dbg !413, !noalias !410, !noundef !14
  %i.dk = lshr i8 %i.dj, 1, !dbg !413
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, !dbg !414

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ], !dbg !415
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1, !dbg !416
  br i1 %i.dl, label %bb.t, label %bb.u, !dbg !417

bb.t:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.020, %i.cu, !dbg !257
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4, !dbg !286

bb.u:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.020 to i64
  %i.dp = sub i64 %.sroa.14.018, %i.do
  %i.dq = add i64 %i.dp, %i.dn, !dbg !418
  br label %.loopexit, !dbg !419

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.t, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE3popCsbaWXNhtWAp9_11foundations:bb.a
  br i1 %.not.2.i.i, label %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB2_2TxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2W_6future6future6Futurep6OutputINtNtB2W_6result6ResultINtNtB1J_8response8ResponseB2i_EIB3o_DNtNtB2W_5error5ErrorNtNtB2W_6marker4SendNtB5V_4SyncEL_EEB5T_EL_EEEE13reclaim_blockCsbaWXNhtWAp9_11foundations.exit.i, label %bb.f, !dbg !22955

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.a, align 8, !dbg !22956, !noalias !22902, !nonnull !14, !noundef !14
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 9248, i64 noundef 8) #18, !dbg !22957, !noalias !22902
  br label %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB2_2TxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2W_6future6future6Futurep6OutputINtNtB2W_6result6ResultINtNtB1J_8response8ResponseB2i_EIB3o_DNtNtB2W_5error5ErrorNtNtB2W_6marker4SendNtB5V_4SyncEL_EEB5T_EL_EEEE13reclaim_blockCsbaWXNhtWAp9_11foundations.exit.i, !dbg !22964

_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB2_2TxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2W_6future6future6Futurep6OutputINtNtB2W_6result6ResultINtNtB1J_8response8ResponseB2i_EIB3o_DNtNtB2W_5error5ErrorNtNtB2W_6marker4SendNtB5V_4SyncEL_EEB5T_EL_EEEE13reclaim_blockCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22965, !noalias !22902
  call void @llvm.x86.sse2.pause(), !dbg !22966, !noalias !22902
  %i.al = load ptr, ptr %1, align 8, !dbg !22895, !alias.scope !22902, !nonnull !14, !noundef !14 ; 3 uses
  %.not.i3 = icmp eq ptr %i.ad, %i.al, !dbg !22906
  br i1 %.not.i3, label %_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE14reclaim_blocksCsbaWXNhtWAp9_11foundations.exit, label %.lr.ph.i2, !dbg !22907

bb.g:                                             ; preds = %.lr.ph
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29, !dbg !22973, !noalias !22902
  unreachable, !dbg !22973

_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE14reclaim_blocksCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB2_2TxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2W_6future6future6Futurep6OutputINtNtB2W_6result6ResultINtNtB1J_8response8ResponseB2i_EIB3o_DNtNtB2W_5error5ErrorNtNtB2W_6marker4SendNtB5V_4SyncEL_EEB5T_EL_EEEE13reclaim_blockCsbaWXNhtWAp9_11foundations.exit.i, %.lr.ph.i2, %.lr.ph.i2.preheader, %.loopexit
  %i.am = phi ptr [ %i.n, %.loopexit ], [ %i.n, %.lr.ph.i2.preheader ], [ %i.al, %.lr.ph.i2 ], [ %i.al, %_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB2_2TxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2W_6future6future6Futurep6OutputINtNtB2W_6result6ResultINtNtB1J_8response8ResponseB2i_EIB3o_DNtNtB2W_5error5ErrorNtNtB2W_6marker4SendNtB5V_4SyncEL_EEB5T_EL_EEEE13reclaim_blockCsbaWXNhtWAp9_11foundations.exit.i ], !dbg !22976
  %i.an = load i64, ptr %i.b, align 8, !dbg !22979, !noundef !14 ; 2 uses
  call void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5blockINtB2_5BlockINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultINtNtB1N_8response8ResponseB2m_EIB3s_DNtNtB30_5error5ErrorNtNtB30_6marker4SendNtB5Z_4SyncEL_EEB5X_EL_EEEE4readCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noundef nonnull align 8 %i.am, i64 noundef %i.an), !dbg !22981
  %i.ao = load i64, ptr %0, align 8, !dbg !22982, !range !22804, !noundef !14
  %switch = icmp ugt i64 %i.ao, -3, !dbg !22985
  br i1 %switch, label %bb.h, label %bb.i, !dbg !22985

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE14reclaim_blocksCsbaWXNhtWAp9_11foundations.exit, %bb.i, %_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE18try_advancing_headCsbaWXNhtWAp9_11foundations.exit
  ret void, !dbg !22894

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEEE14reclaim_blocksCsbaWXNhtWAp9_11foundations.exit
  %i.ap = add i64 %i.an, 1, !dbg !22986
  store i64 %i.ap, ptr %i.b, align 8, !dbg !22989
  br label %bb.h, !dbg !22990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync9broadcast6WaiterE10push_frontCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 !dbg !22991 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !dbg !22992
  %i.b = load ptr, ptr %0, align 8, !dbg !22995, !noundef !14 ; 4 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !23000, !prof !22183

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23001
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23012
  store ptr %i.b, ptr %i.e, align 8, !dbg !23012
  store ptr null, ptr %i.d, align 8, !dbg !23019
  %.not1 = icmp eq ptr %i.b, null, !dbg !23025
  br i1 %.not1, label %bb.e, label %bb.d, !dbg !23027

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6WaiterEEBM_ECsbaWXNhtWAp9_11foundations(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29, !dbg !23028
  unreachable, !dbg !23028

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23031
  store ptr %1, ptr %i.f, align 8, !dbg !23034
  br label %bb.e, !dbg !23040

bb.e:                                             ; preds = %bb.d, %bb.b
  store ptr %1, ptr %0, align 8, !dbg !23041
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23042 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !23042, !noundef !14
  %.not2 = icmp eq ptr %i.h, null, !dbg !23042
  br i1 %.not2, label %bb.g, label %bb.f, !dbg !23049

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void, !dbg !23050

bb.g:                                             ; preds = %bb.e
  store ptr %1, ptr %i.g, align 8, !dbg !23051
  br label %bb.f, !dbg !23052
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvMs2_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync9broadcast6WaiterE6removeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull captures(address, ret: address, provenance) %1) unnamed_addr #6 !dbg !23053 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23054 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !23058, !noundef !14 ; 2 uses
  %.not = icmp eq ptr %i.b, null, !dbg !23065
  br i1 %.not, label %bb.c, label %bb.b, !dbg !23066

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23067
  %i.d = load ptr, ptr %i.c, align 8, !dbg !23067, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !23074
  store ptr %i.d, ptr %i.e, align 8, !dbg !23074
  br label %bb.d, !dbg !23081

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !23082, !noundef !14
  %.not6 = icmp eq ptr %i.f, %1
  br i1 %.not6, label %bb.e, label %bb.j, !dbg !23087

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = phi ptr [ %i.i, %bb.e ], [ %i.d, %bb.b ], !dbg !23088 ; 2 uses
  %.not7 = icmp eq ptr %i.g, null, !dbg !23095
  br i1 %.not7, label %bb.g, label %bb.f, !dbg !23096

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23097
  %i.i = load ptr, ptr %i.h, align 8, !dbg !23097, !noundef !14 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !dbg !23103
  br label %bb.d, !dbg !23081

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !23104
  %i.k = load ptr, ptr %i.a, align 8, !dbg !23107, !noundef !14
  store ptr %i.k, ptr %i.j, align 8, !dbg !23113
  br label %bb.h, !dbg !23119

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23120 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !23120, !noundef !14
  %.not9 = icmp eq ptr %i.m, %1
  br i1 %.not9, label %bb.i, label %bb.j, !dbg !23124

bb.h:                                             ; preds = %bb.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !23125
  br label %bb.j, !dbg !23131

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !dbg !23132, !noundef !14
  store ptr %i.n, ptr %i.l, align 8, !dbg !23138
  br label %bb.h, !dbg !23119

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.h
  %.sroa.0.0 = phi ptr [ %1, %bb.h ], [ null, %bb.c ], [ null, %bb.g ], !dbg !23139
  ret ptr %.sroa.0.0, !dbg !23131
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cs6AjmZOIP0uL_12thread_localINtB5_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1w_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEE6insertB3U_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !23140 {
bb.a:
  %i.a = icmp ult i64 %1, 63, !dbg !23141
  tail call void @llvm.assume(i1 %i.a), !dbg !23148
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !23149 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !dbg !23150 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !23155
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !23165

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 1, %1, !dbg !23166       ; 2 uses
  %i.f = invoke { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBa_3vec3VecINtNtBa_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5H_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EEB4d_(i64 noundef 0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.k, !dbg !23170

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i64 } %i.f, 0, !dbg !23170 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !23179
  %i.h = cmpxchg ptr %i.b, ptr null, ptr %i.g acq_rel acquire, align 8, !dbg !23184 ; 2 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !23184
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !23190

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i1 } %i.h, 0, !dbg !23184
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecINtNtBG_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEEEB4i_(ptr nonnull %i.g, i64 %i.e)
          to label %bb.e unwind label %bb.k, !dbg !23191

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.01.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], !dbg !23198 ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0, i64 %2, !dbg !23199 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !23203 ; 2 uses
  %i.m = load atomic i8, ptr %i.l acquire, align 1, !dbg !23210
  %.not.i = icmp eq i8 %i.m, 0, !dbg !23212
  %.not13 = icmp eq ptr %.sroa.01.0, null, !dbg !23213
  %.not = or i1 %.not13, %.not.i, !dbg !23214
  br i1 %.not, label %bb.j, label %bb.f, !dbg !23217

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23218 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB11_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEB3p_.exit unwind label %bb.g, !dbg !23220

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.h, !dbg !23223

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23220
  unreachable, !dbg !23220

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !23225

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB11_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEB3p_.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !dbg !23226
  br label %bb.i, !dbg !23228

bb.i:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB11_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEB3p_.exit
  ret ptr %i.k, !dbg !23229

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !23230
  store atomic i8 1, ptr %i.l release, align 1, !dbg !23234
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !23239
  %i.r = atomicrmw add ptr %i.q, i64 1 release, align 8, !dbg !23246 ; 0 uses
  br label %bb.i, !dbg !23228

bb.k:                                             ; preds = %bb.b, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB11_4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEEEB3p_(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #26
          to label %common.resume unwind label %bb.l, !dbg !23228

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23249
  unreachable, !dbg !23249
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cs6AjmZOIP0uL_12thread_localINtB5_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB1w_5boxed3BoxDINtNtB23_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBV_6marker4SendNtB4x_4SyncEL_EB3t_EEEE6insertCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !23250 {
bb.a:
  %i.a = icmp ult i64 %1, 63, !dbg !23251
  tail call void @llvm.assume(i1 %i.a), !dbg !23258
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !23259 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !dbg !23260 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !23265
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !23275

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 1, %1, !dbg !23276       ; 2 uses
  %i.f = invoke { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBa_3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerIBG_DINtNtB2n_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB1w_6marker4SendNtB4C_4SyncEL_EB3y_EEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsbaWXNhtWAp9_11foundations(i64 noundef 0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.k, !dbg !23279

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i64 } %i.f, 0, !dbg !23279 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !23284
  %i.h = cmpxchg ptr %i.b, ptr null, ptr %i.g acq_rel acquire, align 8, !dbg !23288 ; 2 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !23288
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !23294

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i1 } %i.h, 0, !dbg !23288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerIBC_DINtNtB2s_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB4H_4SyncEL_EB3D_EEEEEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.g, i64 %i.e)
          to label %bb.e unwind label %bb.k, !dbg !23295

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.01.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], !dbg !23302 ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0, i64 %2, !dbg !23303 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !23307 ; 2 uses
  %i.m = load atomic i8, ptr %i.l acquire, align 1, !dbg !23314
  %.not.i = icmp eq i8 %i.m, 0, !dbg !23316
  %.not13 = icmp eq ptr %.sroa.01.0, null, !dbg !23317
  %.not = or i1 %.not13, %.not.i, !dbg !23318
  br i1 %.not, label %bb.j, label %bb.f, !dbg !23321

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23322 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBK_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3c_4SyncEL_EB28_EENtNtNtB3e_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB11_5boxed3BoxDINtNtB1y_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB42_4SyncEL_EB2Y_EEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.g, !dbg !23324

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBR_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3j_4SyncEL_EB2f_EENtNtNtB3l_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.h, !dbg !23327

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23324
  unreachable, !dbg !23324

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !23329

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB11_5boxed3BoxDINtNtB1y_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB42_4SyncEL_EB2Y_EEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB7_5boxed3BoxDINtNtBR_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB3j_4SyncEL_EB2f_EENtNtNtB3l_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !dbg !23330
  br label %bb.i, !dbg !23332

bb.i:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB11_5boxed3BoxDINtNtB1y_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB42_4SyncEL_EB2Y_EEEECsbaWXNhtWAp9_11foundations.exit
  ret ptr %i.k, !dbg !23333

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !23334
  store atomic i8 1, ptr %i.l release, align 1, !dbg !23338
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !23343
  %i.r = atomicrmw add ptr %i.q, i64 1 release, align 8, !dbg !23350 ; 0 uses
  br label %bb.i, !dbg !23332

bb.k:                                             ; preds = %bb.b, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtB11_5boxed3BoxDINtNtB1y_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB42_4SyncEL_EB2Y_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #26
          to label %common.resume unwind label %bb.l, !dbg !23332

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23353
  unreachable, !dbg !23353
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cs6AjmZOIP0uL_12thread_localINtB5_11ThreadLocalINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEE6insertB26_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !23354 {
bb.a:
  %i.a = icmp ult i64 %1, 63, !dbg !23355
  tail call void @llvm.assume(i1 %i.a), !dbg !23362
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !23363 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !dbg !23364 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !23369
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !23379

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 1, %1, !dbg !23380       ; 2 uses
  %i.f = invoke { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtBa_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3F_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EEB2q_(i64 noundef 0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.k, !dbg !23383

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i64 } %i.f, 0, !dbg !23383 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !23388
  %i.h = cmpxchg ptr %i.b, ptr null, ptr %i.g acq_rel acquire, align 8, !dbg !23392 ; 2 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1, !dbg !23392
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !23398

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i1 } %i.h, 0, !dbg !23392
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtCs6AjmZOIP0uL_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEEEB2v_(ptr nonnull %i.g, i64 %i.e)
          to label %bb.e unwind label %bb.k, !dbg !23399

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.01.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], !dbg !23406 ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0, i64 %2, !dbg !23407 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !23411 ; 2 uses
  %i.m = load atomic i8, ptr %i.l acquire, align 1, !dbg !23418
  %.not.i = icmp eq i8 %i.m, 0, !dbg !23420
  %.not13 = icmp eq ptr %.sroa.01.0, null, !dbg !23421
  %.not = or i1 %.not13, %.not.i, !dbg !23422
  br i1 %.not, label %bb.j, label %bb.f, !dbg !23425

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23426 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEB1B_.exit unwind label %bb.g, !dbg !23428

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.h, !dbg !23431

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23428
  unreachable, !dbg !23428

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !23433

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEB1B_.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !dbg !23434
  br label %bb.i, !dbg !23436

bb.i:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEB1B_.exit
  ret ptr %i.k, !dbg !23437

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !23438
  store atomic i8 1, ptr %i.l release, align 1, !dbg !23442
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !23447
  %i.r = atomicrmw add ptr %i.q, i64 1 release, align 8, !dbg !23454 ; 0 uses
  br label %bb.i, !dbg !23436

bb.k:                                             ; preds = %bb.b, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #26
          to label %common.resume unwind label %bb.l, !dbg !23436

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !23457
  unreachable, !dbg !23457
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsa_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync9broadcast6WaiterE12into_guardedCsbaWXNhtWAp9_11foundations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull returned %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23458 {
bb.a:
  %.not = icmp eq ptr %0, null, !dbg !23459
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !23462 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !23469

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23470
  store ptr %2, ptr %i.b, align 8, !dbg !23473
  store ptr %0, ptr %i.a, align 8, !dbg !23478
  %.not6 = icmp eq ptr %1, null, !dbg !23483
  br i1 %.not6, label %bb.e, label %bb.d, !dbg !23486, !prof !1053

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23487
  store ptr %2, ptr %i.c, align 8, !dbg !23490
  store ptr %2, ptr %i.a, align 8, !dbg !23496
  br label %bb.f, !dbg !23502

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23503
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23506
  store ptr %2, ptr %i.e, align 8, !dbg !23506
  store ptr %1, ptr %i.d, align 8, !dbg !23513
  br label %bb.f, !dbg !23502

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #29, !dbg !23519
  unreachable, !dbg !23519

bb.f:                                             ; preds = %bb.c, %bb.d
  ret ptr %2, !dbg !23520
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE8pop_backCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !dbg !23521 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !23523, !nonnull !14, !noundef !14 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !23524 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !23529, !noundef !14 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !23536
  br i1 %.not.i, label %bb.b, label %_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE4tailCsbaWXNhtWAp9_11foundations.exit, !dbg !23539, !prof !1053

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29, !dbg !23540
  unreachable, !dbg !23540

_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE4tailCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %.not3.i = icmp eq ptr %i.b, %.val, !dbg !23541
  br i1 %.not3.i, label %bb.d, label %bb.c, !dbg !23547

bb.c:                                             ; preds = %_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE4tailCsbaWXNhtWAp9_11foundations.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23551 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !23555, !noundef !14 ; 3 uses
  %.not7 = icmp eq ptr %i.d, null, !dbg !23562
  br i1 %.not7, label %bb.f, label %bb.e, !dbg !23565, !prof !1053

bb.d:                                             ; preds = %_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE4tailCsbaWXNhtWAp9_11foundations.exit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.b, %bb.e ], [ null, %_RNvMsb_NtNtCs3zuhHmEJ01l_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE4tailCsbaWXNhtWAp9_11foundations.exit ], !dbg !23566
  ret ptr %.sroa.0.0, !dbg !23567

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.a, align 8, !dbg !23568
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !23576
  store ptr %.val, ptr %i.e, align 8, !dbg !23576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !dbg !23582
  br label %bb.d, !dbg !23567

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #29, !dbg !23588
  unreachable, !dbg !23588
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEE3newB1O_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !23589 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23593
  %i.b = load atomic i8, ptr %i.a monotonic, align 8, !dbg !23602
  %.not = icmp ne i8 %i.b, 0, !dbg !23604
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log7testing13TestLogRecordEENCNvMsd_BQ_BN_3new0EB1Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1), !dbg !23605
  ret void, !dbg !23606
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEENtNtB8_3fmt5Write9write_strB22_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23607 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !23610, !nonnull !14, !align !974, !noundef !14
  %i.c = tail call noundef ptr @_RNvYINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !23611 ; 3 uses
  %.not = icmp ne ptr %i.c, null, !dbg !23610     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f, !dbg !23612

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23613 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !23613, !noundef !14 ; 4 uses
  %i.e = icmp eq ptr %.val, null, !dbg !23615
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !23615

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23617
  %i.f = ptrtoint ptr %.val to i64, !dbg !23621   ; 2 uses
  %i.g = and i64 %i.f, 3, !dbg !23624
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 1, label %bb.e
  ], !dbg !23625, !prof !2948

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr), !dbg !23626
  %i.i = and i64 %i.f, 1095216660480, !dbg !23628
  %i.j = icmp ne i64 %i.i, 1095216660480, !dbg !23628
  tail call void @llvm.assume(i1 %i.h), !dbg !23630
  tail call void @llvm.assume(i1 %i.j), !dbg !23630
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !23631

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1, !dbg !23632 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ], !dbg !23636
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23639 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !dbg !23639, !alias.scope !23640
  store i8 3, ptr %i.a, align 8, !dbg !23643, !alias.scope !23640
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.g, !dbg !23644

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23647
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !23615

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit
  ret i1 %.not, !dbg !23648

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8, !dbg !23613
  resume { ptr, i32 } %i.m, !dbg !23649

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8, !dbg !23613
  br label %bb.f, !dbg !23650
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorENtNtB8_3fmt5Write9write_strCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23651 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !23652, !nonnull !14, !align !974, !noundef !14
  %i.c = tail call noundef ptr @_RNvYNtCsgwhc9xWyoN8_9slog_term19TermRecordDecoratorNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !23653 ; 3 uses
  %.not = icmp ne ptr %i.c, null, !dbg !23652     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f, !dbg !23654

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23655 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !23655, !noundef !14 ; 4 uses
  %i.e = icmp eq ptr %.val, null, !dbg !23657
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !23657

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23659
  %i.f = ptrtoint ptr %.val to i64, !dbg !23663   ; 2 uses
  %i.g = and i64 %i.f, 3, !dbg !23666
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 1, label %bb.e
  ], !dbg !23667, !prof !2948

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr), !dbg !23668
  %i.i = and i64 %i.f, 1095216660480, !dbg !23670
  %i.j = icmp ne i64 %i.i, 1095216660480, !dbg !23670
  tail call void @llvm.assume(i1 %i.h), !dbg !23672
  tail call void @llvm.assume(i1 %i.j), !dbg !23672
end_hunk_1
begin_hunk_2_@llvm.umax.i64
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { noinline }
attributes #28 = { noreturn }
attributes #29 = { noinline noreturn }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.dbg.cu = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!6 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !7, producer: "clang LLVM (rustc version 1.100.0-nightly (787af2b8c 2026-08-25))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "foundations/src/lib.rs/@/foundations.822e5dc8be635b49-cgu.11", directory: "/opt-bench/work/foundations-rs/foundations")
!8 = distinct !DISubprogram(name: "strip_prefix<&str>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre12strip_prefixReECsbaWXNhtWAp9_11foundations", scope: !10, file: !9, line: 2459, type: !13, scopeLine: 2459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!9 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "ee5db8a06788b44667bc8f81edc68c2b")
!10 = !DINamespace(name: "{impl#0}", scope: !11)
!11 = !DINamespace(name: "str", scope: !12)
!12 = !DINamespace(name: "core", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !DILocation(line: 984, column: 29, scope: !16, inlinedAt: !20)
!16 = distinct !DISubprogram(name: "is_prefix_of", linkageName: "_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_prefix_of", scope: !18, file: !17, line: 983, type: !13, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!17 = !DIFile(filename: "library/core/src/str/pattern.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "632653a389978f6c4fa6825de87add57")
!18 = !DINamespace(name: "{impl#31}", scope: !19)
!19 = !DINamespace(name: "pattern", scope: !11)
!20 = distinct !DILocation(line: 1020, column: 17, scope: !21, inlinedAt: !22)
!21 = distinct !DISubprogram(name: "strip_prefix_of", linkageName: "_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15strip_prefix_of", scope: !18, file: !17, line: 1019, type: !13, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!22 = distinct !DILocation(line: 2460, column: 16, scope: !8)
!23 = !DILocation(line: 1020, column: 12, scope: !21, inlinedAt: !22)
!24 = !DILocation(line: 1026, column: 6, scope: !21, inlinedAt: !22)
!25 = !DILocation(line: 2461, column: 6, scope: !8)
!26 = distinct !DISubprogram(name: "trim_matches<fn(char) -> bool>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbaWXNhtWAp9_11foundations", scope: !10, file: !9, line: 2378, type: !13, scopeLine: 2378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!27 = !DILocation(line: 970, column: 18, scope: !28, inlinedAt: !33)
!28 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOh3addCsbaWXNhtWAp9_11foundations", scope: !30, file: !29, line: 936, type: !13, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!29 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "a5341b3fd1d82dea6ac2e9001e37d959")
!30 = !DINamespace(name: "{impl#0}", scope: !31)
!31 = !DINamespace(name: "mut_ptr", scope: !32)
!32 = !DINamespace(name: "ptr", scope: !12)
!33 = distinct !DILocation(line: 100, column: 78, scope: !34, inlinedAt: !41)
!34 = distinct !DILexicalBlock(scope: !36, file: !35, line: 96, column: 9)
!35 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "ebc5d6aac232a80fd1dcb153129554c9")
!36 = distinct !DILexicalBlock(scope: !37, file: !35, line: 95, column: 9)
!37 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterhE3newCsbaWXNhtWAp9_11foundations", scope: !38, file: !35, line: 94, type: !13, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!38 = !DINamespace(name: "Iter", scope: !39)
!39 = !DINamespace(name: "iter", scope: !40)
!40 = !DINamespace(name: "slice", scope: !12)
!41 = distinct !DILocation(line: 1040, column: 9, scope: !42, inlinedAt: !45)
!42 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSh4iterCsbaWXNhtWAp9_11foundations", scope: !44, file: !43, line: 1039, type: !13, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!43 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "3864a87bb6bc29c76dd67717f51013ca")
!44 = !DINamespace(name: "{impl#0}", scope: !40)
!45 = distinct !DILocation(line: 1080, column: 39, scope: !46, inlinedAt: !47)
!46 = distinct !DISubprogram(name: "chars", linkageName: "_RNvMNtCs3oUPovFnLWP_4core3stre5chars", scope: !10, file: !9, line: 1079, type: !13, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!47 = distinct !DILocation(line: 1137, column: 51, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "char_indices", linkageName: "_RNvMNtCs3oUPovFnLWP_4core3stre12char_indices", scope: !10, file: !9, line: 1136, type: !13, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!49 = distinct !DILocation(line: 680, column: 81, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "into_searcher<fn(char) -> bool>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCsbaWXNhtWAp9_11foundations", scope: !51, file: !17, line: 679, type: !13, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!51 = !DINamespace(name: "{impl#9}", scope: !19)
!52 = distinct !DILocation(line: 739, column: 35, scope: !53, inlinedAt: !55)
!53 = distinct !DISubprogram(name: "into_searcher<fn(char) -> bool>", linkageName: "_RNvXsr_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCsbaWXNhtWAp9_11foundations", scope: !54, file: !17, line: 738, type: !13, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!54 = !DINamespace(name: "{impl#29}", scope: !19)
!55 = distinct !DILocation(line: 2384, column: 31, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !9, line: 2383, column: 9)
!57 = distinct !DILexicalBlock(scope: !26, file: !9, line: 2382, column: 9)
!58 = !DILocation(line: 1663, column: 9, scope: !59, inlinedAt: !63)
!59 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !61, file: !60, line: 1662, type: !13, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!60 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "a4d50389e713a3b15a513e9fe2df9dcb")
!61 = !DINamespace(name: "{impl#15}", scope: !62)
!62 = !DINamespace(name: "non_null", scope: !32)
!63 = distinct !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !69)
!64 = distinct !DILexicalBlock(scope: !66, file: !65, line: 162, column: 17)
!65 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!66 = distinct !DILexicalBlock(scope: !67, file: !65, line: 161, column: 17)
!67 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations", scope: !68, file: !65, line: 157, type: !13, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!68 = !DINamespace(name: "{impl#171}", scope: !39)
!69 = distinct !DILocation(line: 37, column: 20, scope: !70, inlinedAt: !73)
!70 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations", scope: !72, file: !71, line: 35, type: !13, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!71 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!72 = !DINamespace(name: "validations", scope: !11)
!73 = distinct !DILocation(line: 42, column: 18, scope: !74, inlinedAt: !78)
!74 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !76, file: !75, line: 39, type: !13, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!75 = !DIFile(filename: "library/core/src/str/iter.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "61c2132eeef87b75673cf36bf74bc4da")
!76 = !DINamespace(name: "{impl#0}", scope: !77)
!77 = !DINamespace(name: "iter", scope: !11)
!78 = distinct !DILocation(line: 184, column: 25, scope: !79, inlinedAt: !82)
!79 = distinct !DILexicalBlock(scope: !80, file: !75, line: 183, column: 9)
!80 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next", scope: !81, file: !75, line: 182, type: !13, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!81 = !DINamespace(name: "{impl#5}", scope: !77)
!82 = distinct !DILocation(line: 696, column: 33, scope: !83, inlinedAt: !88)
!83 = distinct !DILexicalBlock(scope: !84, file: !17, line: 696, column: 40)
!84 = distinct !DILexicalBlock(scope: !85, file: !17, line: 695, column: 9)
!85 = distinct !DILexicalBlock(scope: !86, file: !17, line: 692, column: 9)
!86 = distinct !DISubprogram(name: "next<fn(char) -> bool>", linkageName: "_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations", scope: !87, file: !17, line: 691, type: !13, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!87 = !DINamespace(name: "{impl#10}", scope: !19)
!88 = distinct !DILocation(line: 267, column: 24, scope: !89, inlinedAt: !91)
!89 = distinct !DISubprogram(name: "next_reject<core::str::pattern::MultiCharEqSearcher<fn(char) -> bool>>", linkageName: "_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations", scope: !90, file: !17, line: 265, type: !13, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!90 = !DINamespace(name: "Searcher", scope: !19)
!91 = distinct !DILocation(line: 791, column: 20, scope: !92, inlinedAt: !94)
!92 = distinct !DISubprogram(name: "next_reject<fn(char) -> bool>", linkageName: "_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations", scope: !93, file: !17, line: 790, type: !13, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!93 = !DINamespace(name: "{impl#26}", scope: !19)
!94 = distinct !DILocation(line: 2385, column: 39, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !9, line: 2385, column: 53)
!96 = distinct !DILexicalBlock(scope: !56, file: !9, line: 2384, column: 9)
!97 = !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !69)
!98 = !DILocation(line: 733, column: 18, scope: !99, inlinedAt: !104)
!99 = distinct !DILexicalBlock(scope: !101, file: !100, line: 730, column: 9)
!100 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "25118ae25e729b7c815218b31622724c")
!101 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr9const_ptrPh20offset_from_unsignedCsbaWXNhtWAp9_11foundations", scope: !102, file: !100, line: 705, type: !13, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!102 = !DINamespace(name: "{impl#0}", scope: !103)
!103 = !DINamespace(name: "const_ptr", scope: !32)
!104 = distinct !DILocation(line: 892, column: 37, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOh20offset_from_unsignedCsbaWXNhtWAp9_11foundations", scope: !30, file: !29, line: 887, type: !13, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!106 = distinct !DILocation(line: 898, column: 32, scope: !107, inlinedAt: !109)
!107 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhE20offset_from_unsignedCsbaWXNhtWAp9_11foundations", scope: !108, file: !60, line: 893, type: !13, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!108 = !DINamespace(name: "NonNull", scope: !62)
!109 = distinct !DILocation(line: 57, column: 30, scope: !110, inlinedAt: !114)
!110 = distinct !DILexicalBlock(scope: !111, file: !65, line: 33, column: 13)
!111 = distinct !DILexicalBlock(scope: !112, file: !65, line: 25, column: 86)
!112 = distinct !DISubprogram(name: "len<u8>", linkageName: "_RNvXs2I_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsbaWXNhtWAp9_11foundations", scope: !113, file: !65, line: 142, type: !13, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!113 = !DINamespace(name: "{impl#170}", scope: !39)
!114 = distinct !DILocation(line: 695, column: 35, scope: !85, inlinedAt: !88)
!115 = !DILocation(line: 627, column: 28, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhE3addCsbaWXNhtWAp9_11foundations", scope: !108, file: !60, line: 619, type: !13, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!117 = distinct !DILocation(line: 185, column: 40, scope: !64, inlinedAt: !69)
!118 = !DILocation(line: 37, column: 13, scope: !70, inlinedAt: !73)
!119 = !{!120, !122, !124, !126, !127, !129, !130, !132}
!120 = distinct !{!120, !121, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations: argument 0"}
!121 = distinct !{!121, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations"}
!122 = distinct !{!122, !123, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!123 = distinct !{!123, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!124 = distinct !{!124, !125, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations: argument 0"}
!125 = distinct !{!125, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations"}
!126 = distinct !{!126, !125, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbaWXNhtWAp9_11foundations: argument 1"}
!127 = distinct !{!127, !128, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations: argument 0"}
!128 = distinct !{!128, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations"}
!129 = distinct !{!129, !128, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations: argument 1"}
!130 = distinct !{!130, !131, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations: argument 0"}
!131 = distinct !{!131, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations"}
!132 = distinct !{!132, !131, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations: argument 1"}
!133 = !DILocation(line: 38, column: 8, scope: !134, inlinedAt: !73)
!134 = distinct !DILexicalBlock(scope: !70, file: !71, line: 37, column: 5)
!135 = !DILocation(line: 11, column: 5, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core3str11validations15utf8_first_byte", scope: !72, file: !71, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!137 = distinct !DILocation(line: 45, column: 16, scope: !134, inlinedAt: !73)
!138 = !DILocation(line: 1663, column: 9, scope: !59, inlinedAt: !139)
!139 = distinct !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !140)
!140 = distinct !DILocation(line: 48, column: 29, scope: !141, inlinedAt: !73)
!141 = distinct !DILexicalBlock(scope: !134, file: !71, line: 45, column: 5)
!142 = !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !140)
!143 = !DILocation(line: 627, column: 28, scope: !116, inlinedAt: !144)
!144 = distinct !DILocation(line: 185, column: 40, scope: !64, inlinedAt: !140)
!145 = !DILocation(line: 48, column: 22, scope: !141, inlinedAt: !73)
!146 = !DILocation(line: 17, column: 5, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core3str11validations18utf8_acc_cont_byte", scope: !72, file: !71, line: 16, type: !13, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!148 = distinct !DILocation(line: 49, column: 18, scope: !149, inlinedAt: !73)
!149 = distinct !DILexicalBlock(scope: !141, file: !71, line: 48, column: 5)
!150 = !DILocation(line: 17, column: 17, scope: !147, inlinedAt: !148)
!151 = !DILocation(line: 50, column: 8, scope: !152, inlinedAt: !73)
!152 = distinct !DILexicalBlock(scope: !149, file: !71, line: 49, column: 5)
!153 = !DILocation(line: 39, column: 21, scope: !134, inlinedAt: !73)
!154 = !DILocation(line: 0, scope: !155, inlinedAt: !73)
!155 = !DILexicalBlockFile(scope: !134, file: !156, discriminator: 0)
!156 = !DIFile(filename: "foundations/src/lib.rs", directory: "/opt-bench/work/foundations-rs/foundations", checksumkind: CSK_MD5, checksum: "8bff950088ff144d983a5dbf27475810")
!157 = !DILocation(line: 1663, column: 9, scope: !59, inlinedAt: !158)
!158 = distinct !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !159)
!159 = distinct !DILocation(line: 55, column: 33, scope: !152, inlinedAt: !73)
!160 = !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !159)
!161 = !DILocation(line: 627, column: 28, scope: !116, inlinedAt: !162)
!162 = distinct !DILocation(line: 185, column: 40, scope: !64, inlinedAt: !159)
!163 = !DILocation(line: 55, column: 26, scope: !152, inlinedAt: !73)
!164 = !DILocation(line: 17, column: 5, scope: !147, inlinedAt: !165)
!165 = distinct !DILocation(line: 56, column: 19, scope: !166, inlinedAt: !73)
!166 = distinct !DILexicalBlock(scope: !152, file: !71, line: 55, column: 9)
!167 = !DILocation(line: 17, column: 17, scope: !147, inlinedAt: !165)
!168 = !DILocation(line: 57, column: 14, scope: !169, inlinedAt: !73)
!169 = distinct !DILexicalBlock(scope: !166, file: !71, line: 56, column: 9)
!170 = !DILocation(line: 57, column: 9, scope: !169, inlinedAt: !73)
!171 = !DILocation(line: 58, column: 12, scope: !169, inlinedAt: !73)
!172 = !DILocation(line: 1663, column: 9, scope: !59, inlinedAt: !173)
!173 = distinct !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !174)
!174 = distinct !DILocation(line: 63, column: 37, scope: !169, inlinedAt: !73)
!175 = !DILocation(line: 180, column: 28, scope: !64, inlinedAt: !174)
!176 = !DILocation(line: 627, column: 28, scope: !116, inlinedAt: !177)
!177 = distinct !DILocation(line: 185, column: 40, scope: !64, inlinedAt: !174)
!178 = !DILocation(line: 63, column: 30, scope: !169, inlinedAt: !73)
!179 = !DILocation(line: 64, column: 18, scope: !180, inlinedAt: !73)
!180 = distinct !DILexicalBlock(scope: !169, file: !71, line: 63, column: 13)
!181 = !DILocation(line: 17, column: 5, scope: !147, inlinedAt: !182)
!182 = distinct !DILocation(line: 64, column: 37, scope: !180, inlinedAt: !73)
!183 = !DILocation(line: 17, column: 17, scope: !147, inlinedAt: !182)
!184 = !DILocation(line: 64, column: 13, scope: !180, inlinedAt: !73)
!185 = !DILocation(line: 58, column: 9, scope: !169, inlinedAt: !73)
!186 = !DILocation(line: 57, column: 51, scope: !110, inlinedAt: !187)
!187 = distinct !DILocation(line: 697, column: 35, scope: !83, inlinedAt: !88)
!188 = !DILocation(line: 34, column: 9, scope: !189, inlinedAt: !193)
!189 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core4char7convert18from_u32_unchecked", scope: !191, file: !190, line: 26, type: !13, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!190 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "06f18dc36f52feefd195ff986dbdcce9")
!191 = !DINamespace(name: "convert", scope: !192)
!192 = !DINamespace(name: "char", scope: !12)
!193 = distinct !DILocation(line: 243, column: 18, scope: !194, inlinedAt: !198)
!194 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc18from_u32_unchecked", scope: !196, file: !195, line: 241, type: !13, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!195 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "c381eae6cf3a72bdac180e2569a5879d")
!196 = !DINamespace(name: "{impl#0}", scope: !197)
!197 = !DINamespace(name: "methods", scope: !192)
!198 = distinct !DILocation(line: 42, column: 59, scope: !199, inlinedAt: !201)
!199 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0CsbaWXNhtWAp9_11foundations", scope: !200, file: !75, line: 42, type: !13, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!200 = !DINamespace(name: "next", scope: !76)
!201 = distinct !DILocation(line: 1163, column: 29, scope: !202, inlinedAt: !207)
!202 = distinct !DILexicalBlock(scope: !204, file: !203, line: 1163, column: 13)
!203 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "6b6523786d7acedb57d33f9868027e9f")
!204 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsbaWXNhtWAp9_11foundations", scope: !205, file: !203, line: 1158, type: !13, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!205 = !DINamespace(name: "Option", scope: !206)
!206 = !DINamespace(name: "option", scope: !12)
!207 = distinct !DILocation(line: 42, column: 50, scope: !74, inlinedAt: !78)
!208 = !DILocation(line: 733, column: 18, scope: !99, inlinedAt: !209)
!209 = distinct !DILocation(line: 892, column: 37, scope: !105, inlinedAt: !210)
!210 = distinct !DILocation(line: 898, column: 32, scope: !107, inlinedAt: !211)
!211 = distinct !DILocation(line: 57, column: 30, scope: !110, inlinedAt: !212)
!212 = distinct !DILocation(line: 188, column: 42, scope: !213, inlinedAt: !82)
!213 = distinct !DILexicalBlock(scope: !214, file: !75, line: 187, column: 17)
!214 = distinct !DILexicalBlock(scope: !79, file: !75, line: 186, column: 13)
!215 = !DILocation(line: 189, column: 38, scope: !216, inlinedAt: !82)
!216 = distinct !DILexicalBlock(scope: !213, file: !75, line: 188, column: 17)
!217 = !DILocation(line: 189, column: 17, scope: !216, inlinedAt: !82)
!218 = !DILocation(line: 1088, column: 9, scope: !219, inlinedAt: !220)
!219 = distinct !DISubprogram(name: "is_whitespace", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespace", scope: !196, file: !195, line: 1087, type: !13, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!220 = distinct !DILocation(line: 166, column: 5, scope: !221, inlinedAt: !227)
!221 = distinct !DISubprogram(name: "call_mut<fn(char) -> bool, (char)>", linkageName: "_RNvYNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceINtNtNtB9_3ops8function5FnMutTcEE8call_mutCsbaWXNhtWAp9_11foundations", scope: !223, file: !222, line: 166, type: !226, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!222 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "5fd63130e402556f5b2ba11cb847a9a0")
!223 = !DINamespace(name: "FnMut", scope: !224)
!224 = !DINamespace(name: "function", scope: !225)
!225 = !DINamespace(name: "ops", scope: !12)
!226 = !DISubroutineType(cc: DW_CC_nocall, types: !14)
!227 = distinct !DILocation(line: 641, column: 9, scope: !228, inlinedAt: !230)
!228 = distinct !DISubprogram(name: "matches<fn(char) -> bool>", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbaWXNhtWAp9_11foundations", scope: !229, file: !17, line: 640, type: !226, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!229 = !DINamespace(name: "{impl#5}", scope: !19)
!230 = distinct !DILocation(line: 699, column: 29, scope: !231, inlinedAt: !88)
!231 = distinct !DILexicalBlock(scope: !232, file: !17, line: 698, column: 13)
!232 = distinct !DILexicalBlock(scope: !83, file: !17, line: 697, column: 13)
!233 = !DILocation(line: 1090, column: 13, scope: !219, inlinedAt: !220)
!234 = !DILocation(line: 921, column: 15, scope: !235, inlinedAt: !240)
!235 = distinct !DISubprogram(name: "lookup", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup", scope: !237, file: !236, line: 919, type: !13, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!236 = !DIFile(filename: "library/core/src/unicode/unicode_data.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "6057eeba8cfc36a5ef26d8074791bdd0")
!237 = !DINamespace(name: "white_space", scope: !238)
!238 = !DINamespace(name: "unicode_data", scope: !239)
!239 = !DINamespace(name: "unicode", scope: !12)
!240 = distinct !DILocation(line: 1091, column: 18, scope: !219, inlinedAt: !220)
!241 = !DILocation(line: 921, column: 9, scope: !235, inlinedAt: !240)
!242 = !DILocation(line: 923, column: 19, scope: !235, inlinedAt: !240)
!243 = !DILocation(line: 923, column: 36, scope: !235, inlinedAt: !240)
!244 = !DILocation(line: 925, column: 19, scope: !235, inlinedAt: !240)
!245 = !DILocation(line: 925, column: 36, scope: !235, inlinedAt: !240)
!246 = !DILocation(line: 922, column: 33, scope: !235, inlinedAt: !240)
!247 = !DILocation(line: 922, column: 18, scope: !235, inlinedAt: !240)
!248 = !{!124, !126, !127, !129, !130, !132}
!249 = !DILocation(line: 922, column: 59, scope: !235, inlinedAt: !240)
!250 = !DILocation(line: 924, column: 34, scope: !235, inlinedAt: !240)
!251 = !DILocation(line: 924, column: 19, scope: !235, inlinedAt: !240)
!252 = !DILocation(line: 924, column: 60, scope: !235, inlinedAt: !240)
!253 = !DILocation(line: 0, scope: !235, inlinedAt: !240)
!254 = !DILocation(line: 928, column: 6, scope: !235, inlinedAt: !240)
!255 = !DILocation(line: 699, column: 16, scope: !231, inlinedAt: !88)
!256 = !DILocation(line: 0, scope: !26)
!257 = !DILocation(line: 1663, column: 9, scope: !258, inlinedAt: !259)
!258 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !61, file: !60, line: 1662, type: !13, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!259 = distinct !DILocation(line: 44, column: 20, scope: !260, inlinedAt: !264)
!260 = distinct !DILexicalBlock(scope: !261, file: !65, line: 33, column: 13)
!261 = distinct !DILexicalBlock(scope: !262, file: !65, line: 25, column: 86)
!262 = distinct !DISubprogram(name: "next_back<u8>", linkageName: "_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations", scope: !263, file: !65, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!263 = !DINamespace(name: "{impl#172}", scope: !39)
!264 = distinct !DILocation(line: 83, column: 26, scope: !265, inlinedAt: !266)
!265 = distinct !DISubprogram(name: "next_code_point_reverse<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations", scope: !72, file: !71, line: 78, type: !13, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!266 = distinct !DILocation(line: 128, column: 18, scope: !267, inlinedAt: !269)
!267 = distinct !DISubprogram(name: "next_back", linkageName: "_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back", scope: !268, file: !75, line: 125, type: !13, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!268 = !DINamespace(name: "{impl#2}", scope: !77)
!269 = distinct !DILocation(line: 216, column: 19, scope: !270, inlinedAt: !272)
!270 = distinct !DISubprogram(name: "next_back", linkageName: "_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back", scope: !271, file: !75, line: 215, type: !13, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!271 = !DINamespace(name: "{impl#6}", scope: !77)
!272 = distinct !DILocation(line: 716, column: 33, scope: !273, inlinedAt: !278)
!273 = distinct !DILexicalBlock(scope: !274, file: !17, line: 716, column: 45)
!274 = distinct !DILexicalBlock(scope: !275, file: !17, line: 715, column: 9)
!275 = distinct !DILexicalBlock(scope: !276, file: !17, line: 712, column: 9)
!276 = distinct !DISubprogram(name: "next_back<fn(char) -> bool>", linkageName: "_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsbaWXNhtWAp9_11foundations", scope: !277, file: !17, line: 711, type: !13, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!277 = !DINamespace(name: "{impl#11}", scope: !19)
!278 = distinct !DILocation(line: 332, column: 24, scope: !279, inlinedAt: !281)
!279 = distinct !DISubprogram(name: "next_reject_back<core::str::pattern::MultiCharEqSearcher<fn(char) -> bool>>", linkageName: "_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations", scope: !280, file: !17, line: 330, type: !13, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!280 = !DINamespace(name: "ReverseSearcher", scope: !19)
!281 = distinct !DILocation(line: 805, column: 20, scope: !282, inlinedAt: !284)
!282 = distinct !DISubprogram(name: "next_reject_back<fn(char) -> bool>", linkageName: "_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations", scope: !283, file: !17, line: 804, type: !13, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!283 = !DINamespace(name: "{impl#27}", scope: !19)
!284 = distinct !DILocation(line: 2390, column: 39, scope: !285)
!285 = distinct !DILexicalBlock(scope: !96, file: !9, line: 2390, column: 58)
!286 = !DILocation(line: 25, column: 86, scope: !261, inlinedAt: !264)
!287 = !DILocation(line: 572, column: 28, scope: !288, inlinedAt: !289)
!288 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhE6offsetCsbaWXNhtWAp9_11foundations", scope: !108, file: !60, line: 564, type: !13, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!289 = distinct !DILocation(line: 685, column: 27, scope: !290, inlinedAt: !291)
!290 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullhE3subCsbaWXNhtWAp9_11foundations", scope: !108, file: !60, line: 674, type: !13, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!291 = distinct !DILocation(line: 132, column: 36, scope: !292, inlinedAt: !295)
!292 = distinct !DILexicalBlock(scope: !293, file: !65, line: 21, column: 13)
!293 = distinct !DILexicalBlock(scope: !294, file: !65, line: 11, column: 90)
!294 = distinct !DISubprogram(name: "pre_dec_end<u8>", linkageName: "_RNvMs2H_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhE11pre_dec_endCsbaWXNhtWAp9_11foundations", scope: !38, file: !65, line: 119, type: !13, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!295 = distinct !DILocation(line: 84, column: 31, scope: !296, inlinedAt: !297)
!296 = distinct !DISubprogram(name: "next_back_unchecked<u8>", linkageName: "_RNvMs2H_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhE19next_back_uncheckedCsbaWXNhtWAp9_11foundations", scope: !38, file: !65, line: 81, type: !13, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!297 = distinct !DILocation(line: 442, column: 35, scope: !262, inlinedAt: !264)
!298 = !DILocation(line: 84, column: 22, scope: !265, inlinedAt: !266)
!299 = !{!300, !302, !304, !306, !307, !309, !310, !312}
!300 = distinct !{!300, !301, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations: argument 0"}
!301 = distinct !{!301, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsbaWXNhtWAp9_11foundations"}
!302 = distinct !{!302, !303, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!303 = distinct !{!303, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!304 = distinct !{!304, !305, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsbaWXNhtWAp9_11foundations: argument 0"}
!305 = distinct !{!305, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsbaWXNhtWAp9_11foundations"}
!306 = distinct !{!306, !305, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCsbaWXNhtWAp9_11foundations: argument 1"}
!307 = distinct !{!307, !308, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations: argument 0"}
!308 = distinct !{!308, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations"}
!309 = distinct !{!309, !308, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations: argument 1"}
!310 = distinct !{!310, !311, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations: argument 0"}
!311 = distinct !{!311, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations"}
!312 = distinct !{!312, !311, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations: argument 1"}
!313 = !DILocation(line: 1663, column: 9, scope: !258, inlinedAt: !314)
!314 = distinct !DILocation(line: 44, column: 20, scope: !260, inlinedAt: !315)
!315 = distinct !DILocation(line: 93, column: 29, scope: !316, inlinedAt: !266)
!316 = distinct !DILexicalBlock(scope: !317, file: !71, line: 90, column: 5)
!317 = distinct !DILexicalBlock(scope: !265, file: !71, line: 83, column: 5)
!318 = !DILocation(line: 25, column: 86, scope: !261, inlinedAt: !315)
!319 = !DILocation(line: 572, column: 28, scope: !288, inlinedAt: !320)
!320 = distinct !DILocation(line: 685, column: 27, scope: !290, inlinedAt: !321)
!321 = distinct !DILocation(line: 132, column: 36, scope: !292, inlinedAt: !322)
!322 = distinct !DILocation(line: 84, column: 31, scope: !296, inlinedAt: !323)
!323 = distinct !DILocation(line: 442, column: 35, scope: !262, inlinedAt: !315)
!324 = !DILocation(line: 93, column: 22, scope: !316, inlinedAt: !266)
!325 = !DILocation(line: 11, column: 5, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core3str11validations15utf8_first_byte", scope: !72, file: !71, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!327 = distinct !DILocation(line: 94, column: 10, scope: !328, inlinedAt: !266)
!328 = distinct !DILexicalBlock(scope: !316, file: !71, line: 93, column: 5)
!329 = !DILocation(line: 24, column: 5, scope: !330, inlinedAt: !331)
!330 = distinct !DISubprogram(name: "utf8_is_cont_byte", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core3str11validations17utf8_is_cont_byte", scope: !72, file: !71, line: 23, type: !13, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!331 = distinct !DILocation(line: 95, column: 8, scope: !328, inlinedAt: !266)
!332 = !DILocation(line: 95, column: 8, scope: !328, inlinedAt: !266)
!333 = !DILocation(line: 84, column: 53, scope: !334, inlinedAt: !266)
!334 = distinct !DILexicalBlock(scope: !265, file: !71, line: 84, column: 9)
!335 = !DILocation(line: 0, scope: !336, inlinedAt: !266)
!336 = !DILexicalBlockFile(scope: !265, file: !156, discriminator: 0)
!337 = !DILocation(line: 1663, column: 9, scope: !258, inlinedAt: !338)
!338 = distinct !DILocation(line: 44, column: 20, scope: !260, inlinedAt: !339)
!339 = distinct !DILocation(line: 98, column: 33, scope: !328, inlinedAt: !266)
!340 = !DILocation(line: 25, column: 86, scope: !261, inlinedAt: !339)
!341 = !DILocation(line: 572, column: 28, scope: !288, inlinedAt: !342)
!342 = distinct !DILocation(line: 685, column: 27, scope: !290, inlinedAt: !343)
!343 = distinct !DILocation(line: 132, column: 36, scope: !292, inlinedAt: !344)
!344 = distinct !DILocation(line: 84, column: 31, scope: !296, inlinedAt: !345)
!345 = distinct !DILocation(line: 442, column: 35, scope: !262, inlinedAt: !339)
!346 = !DILocation(line: 98, column: 26, scope: !328, inlinedAt: !266)
!347 = !DILocation(line: 11, column: 5, scope: !326, inlinedAt: !348)
!348 = distinct !DILocation(line: 99, column: 14, scope: !349, inlinedAt: !266)
!349 = distinct !DILexicalBlock(scope: !328, file: !71, line: 98, column: 9)
!350 = !DILocation(line: 24, column: 5, scope: !330, inlinedAt: !351)
!351 = distinct !DILocation(line: 100, column: 12, scope: !349, inlinedAt: !266)
!352 = !DILocation(line: 100, column: 12, scope: !349, inlinedAt: !266)
!353 = !DILocation(line: 0, scope: !328, inlinedAt: !266)
!354 = !DILocation(line: 17, column: 5, scope: !355, inlinedAt: !356)
!355 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core3str11validations18utf8_acc_cont_byte", scope: !72, file: !71, line: 16, type: !13, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!356 = distinct !DILocation(line: 109, column: 10, scope: !328, inlinedAt: !266)
!357 = !DILocation(line: 17, column: 17, scope: !355, inlinedAt: !356)
!358 = !DILocation(line: 112, column: 2, scope: !265, inlinedAt: !266)
!359 = !DILocation(line: 1663, column: 9, scope: !258, inlinedAt: !360)
!360 = distinct !DILocation(line: 44, column: 20, scope: !260, inlinedAt: !361)
!361 = distinct !DILocation(line: 103, column: 37, scope: !349, inlinedAt: !266)
!362 = !DILocation(line: 25, column: 86, scope: !261, inlinedAt: !361)
!363 = !DILocation(line: 572, column: 28, scope: !288, inlinedAt: !364)
!364 = distinct !DILocation(line: 685, column: 27, scope: !290, inlinedAt: !365)
!365 = distinct !DILocation(line: 132, column: 36, scope: !292, inlinedAt: !366)
!366 = distinct !DILocation(line: 84, column: 31, scope: !296, inlinedAt: !367)
!367 = distinct !DILocation(line: 442, column: 35, scope: !262, inlinedAt: !361)
!368 = !DILocation(line: 103, column: 30, scope: !349, inlinedAt: !266)
!369 = !DILocation(line: 11, column: 5, scope: !326, inlinedAt: !370)
!370 = distinct !DILocation(line: 104, column: 18, scope: !371, inlinedAt: !266)
!371 = distinct !DILexicalBlock(scope: !349, file: !71, line: 103, column: 13)
!372 = !DILocation(line: 17, column: 5, scope: !355, inlinedAt: !373)
!373 = distinct !DILocation(line: 105, column: 18, scope: !371, inlinedAt: !266)
!374 = !DILocation(line: 17, column: 17, scope: !355, inlinedAt: !373)
!375 = !DILocation(line: 100, column: 9, scope: !349, inlinedAt: !266)
!376 = !DILocation(line: 0, scope: !349, inlinedAt: !266)
!377 = !DILocation(line: 17, column: 5, scope: !355, inlinedAt: !378)
!378 = distinct !DILocation(line: 107, column: 14, scope: !349, inlinedAt: !266)
!379 = !DILocation(line: 17, column: 17, scope: !355, inlinedAt: !378)
!380 = !DILocation(line: 95, column: 5, scope: !328, inlinedAt: !266)
!381 = !DILocation(line: 33, column: 72, scope: !111, inlinedAt: !382)
!382 = distinct !DILocation(line: 717, column: 35, scope: !273, inlinedAt: !278)
!383 = !DILocation(line: 34, column: 9, scope: !384, inlinedAt: !385)
!384 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core4char7convert18from_u32_unchecked", scope: !191, file: !190, line: 26, type: !13, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!385 = distinct !DILocation(line: 243, column: 18, scope: !386, inlinedAt: !387)
!386 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc18from_u32_unchecked", scope: !196, file: !195, line: 241, type: !13, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!387 = distinct !DILocation(line: 128, column: 67, scope: !388, inlinedAt: !390)
end_hunk_2
