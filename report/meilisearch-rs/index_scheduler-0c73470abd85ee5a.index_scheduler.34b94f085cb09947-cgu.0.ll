Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0
@6162 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2502, [16 x i8] c"Z\00\00\00\00\00\00\00/\01\00\00.\00\00\00" }>, align 8
@6163 = private unnamed_addr constant [19 x i8] c"ReadingPayloadStats", align 1
@6164 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @6163, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@6165 = private unnamed_addr constant [7 x i8] c"Replace", align 1
@6166 = private unnamed_addr constant [6 x i8] c"Update", align 1
@6167 = private unnamed_addr constant [6 x i8] c"Delete", align 1
@6168 = private unnamed_addr constant [14 x i8] c"DeleteByFilter", align 1
@6169 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr60drop_in_place$LT$milli..prompt..document..ParseableArray$GT$17h1d389db058d2cbc3E", [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$milli..prompt..document..ParseableArray$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab25e05ec3a44c6E", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2909ffb04c1722efE", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17hae30a11971380f4cE", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h053fc7f2e47ef899E", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h41117eccb4495e28E", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hd1986c3fad34c275E", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h9a382627f384267fE", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h9185a4f4f1706accE", ptr @_ZN11liquid_core5model5value4view9ValueView9as_scalar17h70be00fe1b838076E, ptr @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hf746a4529b75bf8aE, ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h94c03ca96ae71b5dE", ptr @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h8b468f03b7628e70E", ptr @_ZN11liquid_core5model5value4view9ValueView9as_object17h403a0653aefdb9b4E, ptr @_ZN11liquid_core5model5value4view9ValueView9is_object17h084e68fa13f478fdE, ptr @_ZN11liquid_core5model5value4view9ValueView8as_state17h6f4917e2c0262b09E, ptr @_ZN11liquid_core5model5value4view9ValueView8is_state17hb0ba66b86a2cffc4E, ptr @_ZN11liquid_core5model5value4view9ValueView6is_nil17hb7890b27e1627080E }>, align 8
@6170 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr58drop_in_place$LT$milli..prompt..document..ParseableMap$GT$17h5ed5c10f935b6a58E", [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN74_$LT$milli..prompt..document..ParseableMap$u20$as$u20$core..fmt..Debug$GT$3fmt17h2200e75d063799f6E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2046051647e74f15E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17h9dbd047c0d2d947cE", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h857ebf1718342150E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h9f7fcebd35873da3E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hd751d5b9e25de708E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h3d4b0b61449eb6deE", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hd633826a142342f8E", ptr @_ZN11liquid_core5model5value4view9ValueView9as_scalar17hbb1dde771e5e7dd8E, ptr @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h389ec66623d34f06E, ptr @_ZN11liquid_core5model5value4view9ValueView8as_array17h2ba0d5625d40192bE, ptr @_ZN11liquid_core5model5value4view9ValueView8is_array17h6a051acff2c81af0E, ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hbc89d215e2957f23E", ptr @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h35e5ee5b3c63f6b8E", ptr @_ZN11liquid_core5model5value4view9ValueView8as_state17hb5cd2a7d18c6fa0fE, ptr @_ZN11liquid_core5model5value4view9ValueView8is_state17h2a6033998c2432dbE, ptr @_ZN11liquid_core5model5value4view9ValueView6is_nil17h9fa9073e9b12993dE }>, align 8
@6171 = private unnamed_addr constant [33 x i8] c"a character literal was not valid", align 1
@6172 = private unnamed_addr constant [5 x i8] c"the '", align 1
@6173 = private unnamed_addr constant [31 x i8] c"' component could not be parsed", align 1
@6174 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @6172, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @6173, [8 x i8] c"\1F\00\00\00\00\00\00\00" }>, align 8
@6175 = private unnamed_addr constant [61 x i8] c"unexpected trailing characters; the end of input was expected", align 1
@6176 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @1010, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @1010, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@6177 = private unnamed_addr constant [5 x i8] c"Field", align 1
@6178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h07ab1c34235ff886E" }>, align 8
@6179 = private unnamed_addr constant [7 x i8] c"Pattern", align 1
@6180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6121, [16 x i8] c"e\00\00\00\00\00\00\00G\00\00\00\14\00\00\00" }>, align 8
@6181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcd14600c2cd52e63E" }>, align 8
@6182 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h193e10446d25ae6eE" }>, align 8
@6183 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha8ffacd46f70a106E" }>, align 8
@6184 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h11110f5231b13bf8E" }>, align 8
@6185 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h35f376027540f6c9E" }>, align 8
@6186 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hef55118b796e3824E" }>, align 8
@6187 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hda3b34f3156c8141E" }>, align 8
@6188 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h92d7c2b12b90bafbE" }>, align 8
@6189 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha33d7f5704768965E" }>, align 8
@6190 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h95d768071b24f1a5E" }>, align 8
@6191 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h713b797997232b30E" }>, align 8
@6192 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h79383015ad009d4fE" }>, align 8
@6193 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1f16dd604abde487E" }>, align 8
@6194 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h932475ebe80543b7E" }>, align 8
@6195 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h19ddaaf48d88fd94E" }>, align 8
@6196 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha8417002eaacc45cE" }>, align 8
@6197 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h33c808ab8881ab90E" }>, align 8
@6198 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8ff76ecb351b66a8E" }>, align 8
@6199 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1fe13d6a2b2ededfE" }>, align 8
@6200 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfb2a5f3aea234804E" }>, align 8
@6201 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc27929675434b691E" }>, align 8
@6202 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h17d9a1341b897945E" }>, align 8
@6203 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5a910ab9b9e596a6E" }>, align 8
@6204 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6c7b6a66aebc5b26E" }>, align 8
@6205 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4c2b01f14c0f2e2aE" }>, align 8
@6206 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hff8e15447080c5c5E" }>, align 8
@6207 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6d7b71641f450335E" }>, align 8
@6208 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hbab77aee43e12884E" }>, align 8
@6209 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he8e5d06d81fa0ddcE" }>, align 8
@6210 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6210ed52fbef1b70E" }>, align 8
@6211 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he744726e77a50820E" }>, align 8
@6212 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0b142124d4cae40aE" }>, align 8
@6213 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4ce7625fe51d75d5E" }>, align 8
@6214 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb1f4385248370ec1E" }>, align 8
@6215 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6b7d9fe65ee599c4E" }>, align 8
@6216 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h369fe7aaf14a3f3fE" }>, align 8
@6217 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h104f8978c79df9ddE" }>, align 8
@6218 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8be00636249d2708E" }>, align 8
@6219 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8e11b9e6ac04b253E" }>, align 8
@6220 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc4e47337fef985aaE" }>, align 8
@6221 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7bf2397422fcacceE" }>, align 8
@6222 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd6e2011452f42d42E" }>, align 8
@6223 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h98f3df4851f4fed0E" }>, align 8
@6224 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h575e0c9c4e253259E" }>, align 8
@6225 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd9922cb23336ef11E" }>, align 8
@6226 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h58578c641fd60aacE" }>, align 8
@6227 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7ad4979e4fa57150E" }>, align 8
@6228 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hec85fe505fcc654eE" }>, align 8
@6229 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h4e33effb112c5a82E" }>, align 8
@6230 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h942a52e2ffe84fe1E" }>, align 8
@6231 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6fe3956181dc3c7fE" }>, align 8
@6232 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb4b8a8fa2a391891E" }>, align 8
@6233 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb7c482a46e7c2258E" }>, align 8
@6234 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcb73ec240d17ff84E" }>, align 8
@6235 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2087a2efeb58d3b8E" }>, align 8
@6236 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf5e4e96d472e0ea5E" }>, align 8
@6237 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hac5338415cf16a82E" }>, align 8
@6238 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8ee383b5f293647fE" }>, align 8
@6239 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h16b2af5caf3d4509E" }>, align 8
@6240 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17heef0cd6b9520287bE" }>, align 8
@6241 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h045f766da20d56b0E" }>, align 8
@6242 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6b364496dd0a189eE" }>, align 8
@6243 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6ddd99bb7137e625E" }>, align 8
@6244 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9aaf5734931dfc16E" }>, align 8
@6245 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hee361bc626f19db2E" }>, align 8
@6246 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hce48b44b2f8e05a7E" }>, align 8
@6247 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2d16b5e5dd34c2f1E" }>, align 8
@6248 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h487e7258ee6c0370E" }>, align 8
@6249 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd58e980768d74b10E" }>, align 8
@6250 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfafe741fb5b49853E" }>, align 8
@6251 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb01d4d4e635b7393E" }>, align 8
@6252 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h563542e9172d931eE" }>, align 8
@6253 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h6d0c2b08f103f965E" }>, align 8
@6254 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h27055aed2f65c9a1E" }>, align 8
@6255 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hecdcb44268869ab6E" }>, align 8
@6256 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hfdc1c546b358bf94E" }>, align 8
@6257 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9e21c965d538acb6E" }>, align 8
@6258 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he5f3de92d5760b42E" }>, align 8
@6259 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hf0d646904727de81E" }>, align 8
@6260 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha7add3739df21400E" }>, align 8
@6261 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2167381d03237db9E" }>, align 8
@6262 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hab36b317d8d58102E" }>, align 8
@6263 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h9b6da57a3946c080E" }>, align 8
@6264 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h69b5cb07d843d669E" }>, align 8
@6265 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h496e75a92d2827edE" }>, align 8
@6266 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0bfff70757ba0318E" }>, align 8
@6267 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1c5415d43d0fa5deE" }>, align 8
@6268 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hb2a96d722b5ad942E" }>, align 8
@6269 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8d196f1f09480828E" }>, align 8
@6270 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1dca4a9be740c98cE" }>, align 8
@6271 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8b6306655dfac848E" }>, align 8
@6272 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hda640dab6d4d0b8dE" }>, align 8
@6273 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd8577e8826162549E" }>, align 8
@6274 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he8272328d98f203dE" }>, align 8
@6275 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hbfeec3e527315677E" }>, align 8
@6276 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0a6d2d605c2fd9beE" }>, align 8
@6277 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17ha26a63c107352351E" }>, align 8
@6278 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hc8b7c80dac478a61E" }>, align 8
@6279 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hec204e2b058674e8E" }>, align 8
@6280 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0204d381306fb180E" }>, align 8
@6281 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17haeda8b9f2fd9a574E" }>, align 8
@6282 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h7cb7c48b3d58faabE" }>, align 8
@6283 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0e52be53e1f3cba4E" }>, align 8
@6284 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h8ecdce4defb2f236E" }>, align 8
@6285 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h040c9da4165e0bf7E" }>, align 8
@6286 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h60f03ead9226505cE" }>, align 8
@6287 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2ab882a2eb3d748dE" }>, align 8
@6288 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hbb9ef64e5a1f3cb5E" }>, align 8
@6289 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5a03722a2dede00dE" }>, align 8
@6290 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he54acd812cf17b0fE" }>, align 8
@6291 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h22d068cb81d4b16dE" }>, align 8
@6292 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h54548dc84b20992bE" }>, align 8
@6293 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hd5077c05c0f36cccE" }>, align 8
@6294 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h3a32fdbfec4d0732E" }>, align 8
@6295 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17he4f8fa2c64cf4c32E" }>, align 8
@6296 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17haf21b152b025b991E" }>, align 8
@6297 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0758acd5e0b5065bE" }>, align 8
@6298 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h630497c03d509141E" }>, align 8
@6299 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h2e2fde70cb711d57E" }>, align 8
@6300 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h56f2db3744d0a4bbE" }>, align 8
@6301 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h036d8db046e62db1E" }>, align 8
@6302 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h1c7b215b615e5514E" }>, align 8
@6303 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr60drop_in_place$LT$liquid_core..model..object..map..Object$GT$17hdddac10033b6778cE", [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$liquid_core..model..object..map..Object$u20$as$u20$core..fmt..Debug$GT$3fmt17hde2fa95f31cab0c2E", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8as_debug17h7755a98ab707ec08E", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$6render17h37e186fbd6eddfdbE", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$6source17hbc60bd409a3e384dE", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9type_name17hcddfbd2d725846a6E", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$11query_state17haea7d4e90f8dc16dE", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$7to_kstr17h2194fa7e2aa1d4acE", ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8to_value17hbd0e85448a51982eE", ptr @_ZN11liquid_core5model5value4view9ValueView9as_scalar17h84c50e2e6ecd7376E, ptr @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h3229e2f13d3a8fa1E, ptr @_ZN11liquid_core5model5value4view9ValueView8as_array17hbe40c72d9dcd0bbaE, ptr @_ZN11liquid_core5model5value4view9ValueView8is_array17h9db0eab88aa97d50E, ptr @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9as_object17h733f59e16430dc4bE", ptr @_ZN11liquid_core5model5value4view9ValueView9is_object17h08710950ea58a065E, ptr @_ZN11liquid_core5model5value4view9ValueView8as_state17h66ede08fd943708dE, ptr @_ZN11liquid_core5model5value4view9ValueView8is_state17h192b8ef5a2873fb0E, ptr @_ZN11liquid_core5model5value4view9ValueView6is_nil17hfb1163e9d4cd5ee4E }>, align 8
@6304 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @308, [16 x i8] c"b\00\00\00\00\00\00\00\EB\02\00\00*\00\00\00" }>, align 8
@6305 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @308, [16 x i8] c"b\00\00\00\00\00\00\00\00\03\00\00*\00\00\00" }>, align 8
@6306 = private unnamed_addr constant [6 x i8] c".meili", align 1
@6307 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/meilisearch-rs/meilisearch/crates/milli/src/filterable_attributes_rules.rs\00", align 1
@6308 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6307, [16 x i8] c"Z\00\00\00\00\00\00\00\0D\00\00\001\00\00\00" }>, align 8
@6309 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @70, [16 x i8] c"d\00\00\00\00\00\00\00\B4\06\00\00\1F\00\00\00" }>, align 8
@6310 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\80\E0", [4 x i8] undef }>, align 8
@6311 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cellulite-0.3.2/src/builder.rs:255:70", align 1
@6312 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cellulite-0.3.2/src/builder.rs\00", align 1
@6313 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6312, [16 x i8] c"c\00\00\00\00\00\00\00\F9\00\00\00N\00\00\00" }>, align 8
@6314 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6312, [16 x i8] c"c\00\00\00\00\00\00\00\F8\00\00\00N\00\00\00" }>, align 8
@6315 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6312, [16 x i8] c"c\00\00\00\00\00\00\009\00\00\00G\00\00\00" }>, align 8
@6316 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6312, [16 x i8] c"c\00\00\00\00\00\00\00:\00\00\00F\00\00\00" }>, align 8
@6317 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cellulite-0.3.2/src/builder.rs:519:77", align 1
@6318 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cellulite-0.3.2/src/builder.rs:453:70", align 1
@6319 = private unnamed_addr constant [5 x i8] c"-item", align 1
@6320 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @6319, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@6321 = private unnamed_addr constant [5 x i8] c"-cell", align 1
@6322 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @6321, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@6323 = private unnamed_addr constant [7 x i8] c"-update", align 1
@6324 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @6323, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@6325 = private unnamed_addr constant [9 x i8] c"-metadata", align 1
@6326 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @6325, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@6327 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/geo-types-0.7.17/src/geometry/line_string.rs\00", align 1
@6328 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6327, [16 x i8] c"q\00\00\00\00\00\00\00:\01\00\00\14\00\00\00" }>, align 8
@_ZN9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN17h0540fd16b3f266fbE = external local_unnamed_addr global { { ptr } }
@6329 = private unnamed_addr constant [28 x i8] c"Hash table capacity overflow", align 1
@6330 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @6329, [8 x i8] c"\1C\00\00\00\00\00\00\00" }>, align 8
@6331 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.15.5/src/raw/mod.rs\00", align 1
@6332 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6331, [16 x i8] c"d\00\00\00\00\00\00\00%\00\00\00(\00\00\00" }>, align 8
@"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE" = private unnamed_addr constant [13 x i16] [i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6], align 2
@"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE" = private unnamed_addr constant [13 x i16] [i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 0], align 2
@"switch.table._ZN15index_scheduler10processing1_103_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$index_scheduler..processing..DumpCreationProgress$GT$8previous17h61025612a4deb2e3E" = private unnamed_addr constant [10 x i8] c"\0A\00\01\02\03\04\05\06\07\08", align 1
@switch.table._ZN15index_scheduler14IndexScheduler17put_chat_settings17h4ac3ecf07b95a21aE = private unnamed_addr constant [4 x ptr] [ptr @1612, ptr @1613, ptr @1614, ptr @1615], align 8
@switch.table._ZN15index_scheduler14IndexScheduler17put_chat_settings17h4ac3ecf07b95a21aE.9054 = private unnamed_addr constant [4 x i8] c"\06\0B\07\04", align 8
@"switch.table._ZN15index_scheduler9scheduler12create_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$24start_processing_network17h167d4cac6db9da39E" = private unnamed_addr constant [3 x i16] [i16 352, i16 328, i16 400], align 8
@switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061 = private unnamed_addr constant [20 x i8] c"\00\02\02\01\02\03\05\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11", align 1
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h040095174ba1e604E" = private unnamed_addr constant [3 x i8] c"\11\12\0B", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h040095174ba1e604E.9062" = private unnamed_addr constant [3 x ptr] [ptr @4462, ptr @4463, ptr @4464], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h076246a6ae245317E" = private unnamed_addr constant [4 x i8] c"\08\07\04\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h076246a6ae245317E.9063" = private unnamed_addr constant [4 x ptr] [ptr @2921, ptr @2922, ptr @2923, ptr @2924], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ddd176eb983acc0E" = private unnamed_addr constant [9 x i8] c"\06\07\07\07\0B\08\08\0C\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ddd176eb983acc0E.9065" = private unnamed_addr constant [9 x ptr] [ptr @2477, ptr @2478, ptr @2479, ptr @2480, ptr @2481, ptr @2482, ptr @2483, ptr @2484, ptr @2485], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ee2318bc9865b4eE" = private unnamed_addr constant [5 x i8] c"\05\0C\0B\0B\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2ee2318bc9865b4eE.9066" = private unnamed_addr constant [5 x ptr] [ptr @3344, ptr @3345, ptr @3346, ptr @3347, ptr @3348], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3656f836d4a9b0f1E" = private unnamed_addr constant [75 x i8] c"-\16\1C\1E\1C$#\1E\18%#%\1D'%(0/.*& \18\0F\16\17\0F\1B!&\1B\0F\18\1E'\19&\1F\1C\16' 0 &\1E,&\12'$ \1C\1C\18\14%\22(\19 \1A(\15\18\1C\1C\18\1C\18\1D\12\1F\15\17", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3656f836d4a9b0f1E.9067" = private unnamed_addr constant [75 x ptr] [ptr @3257, ptr @3258, ptr @3259, ptr @3260, ptr @3261, ptr @3262, ptr @3263, ptr @3264, ptr @3265, ptr @3266, ptr @3267, ptr @3268, ptr @3269, ptr @3270, ptr @3271, ptr @3272, ptr @3273, ptr @3274, ptr @3275, ptr @3276, ptr @3277, ptr @3278, ptr @3279, ptr @3280, ptr @3281, ptr @3282, ptr @3283, ptr @3284, ptr @3285, ptr @3286, ptr @3287, ptr @3288, ptr @3289, ptr @3290, ptr @3291, ptr @3292, ptr @3293, ptr @3294, ptr @3295, ptr @3296, ptr @3297, ptr @3298, ptr @3299, ptr @3300, ptr @3301, ptr @3302, ptr @3303, ptr @3304, ptr @3305, ptr @3306, ptr @3307, ptr @3308, ptr @3309, ptr @3310, ptr @3311, ptr @3312, ptr @3313, ptr @3314, ptr @3315, ptr @3316, ptr @3317, ptr @3318, ptr @3319, ptr @3320, ptr @3321, ptr @3322, ptr @3323, ptr @3324, ptr @3325, ptr @3326, ptr @3327, ptr @3328, ptr @3329, ptr @3330, ptr @3331], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h589fd31325b4350fE" = private unnamed_addr constant [4 x i8] c"\04\07\03\09", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h589fd31325b4350fE.9068" = private unnamed_addr constant [4 x ptr] [ptr @2983, ptr @2984, ptr @2985, ptr @2986], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h64d2ea78619c9f85E" = private unnamed_addr constant [58 x i8] c"\03\06\0C\0C\0C\0F\0A\0A\0A\0D\0D\0B\08\0B\0B\08\0B\0B\0E\08\08\0A\0A\08\0B\0C\0F\07\07\07\0A\0A\17\1A\06\0A\0D\0F\08\08\0B\10\10\13\06\0B\0E\0E\0E\0B\0E\0A\0C\15\18\18\18\15", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h64d2ea78619c9f85E.9070" = private unnamed_addr constant [58 x ptr] [ptr @3635, ptr @3746, ptr @3747, ptr @3748, ptr @3749, ptr @3750, ptr @3751, ptr @3752, ptr @3753, ptr @3754, ptr @3755, ptr @3756, ptr @3757, ptr @3758, ptr @3759, ptr @3760, ptr @3761, ptr @3762, ptr @1345, ptr @3763, ptr @3764, ptr @3765, ptr @3766, ptr @3767, ptr @3768, ptr @3769, ptr @3770, ptr @2935, ptr @3771, ptr @3772, ptr @3773, ptr @3774, ptr @3775, ptr @3776, ptr @1368, ptr @3777, ptr @3778, ptr @3779, ptr @3780, ptr @3781, ptr @3782, ptr @3783, ptr @3784, ptr @3785, ptr @3786, ptr @3787, ptr @3788, ptr @3789, ptr @3790, ptr @3791, ptr @3792, ptr @3793, ptr @3794, ptr @3795, ptr @3796, ptr @3797, ptr @3798, ptr @3799], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h657de4c16c28060dE" = private unnamed_addr constant [3 x i8] c"\06\06\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h657de4c16c28060dE.9071" = private unnamed_addr constant [3 x ptr] [ptr @4391, ptr @4393, ptr @2983], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9073bccf7afce7a4E" = private unnamed_addr constant [4 x i8] c"\06\0C\05\05", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9073bccf7afce7a4E.9073" = private unnamed_addr constant [4 x ptr] [ptr @4374, ptr @4375, ptr @3344, ptr @4376], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haa5bcaeff90b73b7E" = private unnamed_addr constant [18 x i8] c"\06\05\08\07\06\0A\10\18\03\11\0F\07\08\07\0E\10\0C\0F", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haa5bcaeff90b73b7E.9075" = private unnamed_addr constant [18 x ptr] [ptr @4732, ptr @4733, ptr @4734, ptr @4735, ptr @4736, ptr @4737, ptr @4738, ptr @4739, ptr @4740, ptr @4741, ptr @4742, ptr @4743, ptr @4744, ptr @4745, ptr @4746, ptr @4747, ptr @4748, ptr @4749], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacde994b2edec573E" = private unnamed_addr constant [139 x i8] c"\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacde994b2edec573E.9076" = private unnamed_addr constant [139 x ptr] [ptr @4037, ptr @4038, ptr @4039, ptr @4040, ptr @4041, ptr @4042, ptr @4043, ptr @4044, ptr @4045, ptr @4046, ptr @4047, ptr @4048, ptr @4049, ptr @4050, ptr @4051, ptr @4052, ptr @4053, ptr @4054, ptr @4055, ptr @4056, ptr @4057, ptr @4058, ptr @4059, ptr @4060, ptr @4061, ptr @4062, ptr @4063, ptr @4064, ptr @4065, ptr @4066, ptr @4067, ptr @4068, ptr @4069, ptr @4070, ptr @4071, ptr @4072, ptr @4073, ptr @4074, ptr @4075, ptr @4076, ptr @4077, ptr @4078, ptr @4079, ptr @4080, ptr @4081, ptr @4082, ptr @4083, ptr @4084, ptr @4085, ptr @4086, ptr @4087, ptr @4088, ptr @4089, ptr @4090, ptr @4091, ptr @4092, ptr @4093, ptr @4094, ptr @4095, ptr @4096, ptr @4097, ptr @4098, ptr @4099, ptr @4100, ptr @4101, ptr @4102, ptr @4103, ptr @4104, ptr @4105, ptr @4106, ptr @4107, ptr @4108, ptr @4109, ptr @4110, ptr @4111, ptr @4112, ptr @4113, ptr @4114, ptr @4115, ptr @4116, ptr @4117, ptr @4118, ptr @4119, ptr @4120, ptr @4121, ptr @4122, ptr @4123, ptr @4124, ptr @4125, ptr @4126, ptr @4127, ptr @4128, ptr @4129, ptr @4130, ptr @4131, ptr @4132, ptr @4133, ptr @4134, ptr @4135, ptr @4136, ptr @4137, ptr @4138, ptr @4139, ptr @4140, ptr @4141, ptr @4142, ptr @4143, ptr @4144, ptr @4145, ptr @4146, ptr @4147, ptr @4148, ptr @4149, ptr @4150, ptr @4151, ptr @4152, ptr @4153, ptr @4154, ptr @4155, ptr @4156, ptr @4157, ptr @4158, ptr @4159, ptr @4160, ptr @4161, ptr @4162, ptr @4163, ptr @4164, ptr @4165, ptr @4166, ptr @4167, ptr @4168, ptr @4169, ptr @4170, ptr @4171, ptr @4172, ptr @4173, ptr @4174, ptr @4175], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc596b9273c51ff6eE" = private unnamed_addr constant [70 x ptr] [ptr @4173, ptr @4120, ptr @4119, ptr @4154, ptr @4175, ptr @4159, ptr @4152, ptr @4131, ptr @4112, ptr @4123, ptr @4117, ptr @4168, ptr @4135, ptr @4109, ptr @4126, ptr @4133, ptr @4125, ptr @4172, ptr @4151, ptr @4108, ptr @4132, ptr @4137, ptr @4147, ptr @4116, ptr @4161, ptr @4122, ptr @4167, ptr @4146, ptr @4128, ptr @4115, ptr @4118, ptr @4113, ptr @4111, ptr @4142, ptr @4134, ptr @4153, ptr @4157, ptr @4127, ptr @4160, ptr @4143, ptr @4140, ptr @4139, ptr @4121, ptr @4162, ptr @4171, ptr @4169, ptr @4165, ptr @4124, ptr @4170, ptr @4149, ptr @4110, ptr @4130, ptr @4163, ptr @4150, ptr @4141, ptr @4148, ptr @4144, ptr @4145, ptr @4155, ptr @4136, ptr @4166, ptr @4107, ptr @4174, ptr @4158, ptr @4106, ptr @4138, ptr @4156, ptr @4114, ptr @4164, ptr @4129], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbbed370fa96c88aE" = private unnamed_addr constant [4 x i8] c"\04\06\08\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbbed370fa96c88aE.9077" = private unnamed_addr constant [4 x ptr] [ptr @6156, ptr @3746, ptr @4398, ptr @3112], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17heae62839fd304d2cE" = private unnamed_addr constant [4 x i8] c"\08\07\05\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17heae62839fd304d2cE.9079" = private unnamed_addr constant [4 x ptr] [ptr @2921, ptr @2922, ptr @2982, ptr @2924], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfb4c0a38c3afd537E" = private unnamed_addr constant [3 x i8] c"\04\03\09", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfb4c0a38c3afd537E.9080" = private unnamed_addr constant [3 x ptr] [ptr @3634, ptr @3635, ptr @3636], align 8
@"switch.table._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h89d92bbb496fb633E.9082" = private unnamed_addr constant [5 x ptr] [ptr @1336, ptr @1337, ptr @1338, ptr @1339, ptr @1340], align 8
@"switch.table._ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h6fe1383906d22f45E" = private unnamed_addr constant [13 x i8] c"\01\02\03\04\05\06\00\01\02\03\04\05\06", align 1
@switch.table._ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE = private unnamed_addr constant [13 x i16] [i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7], align 2
@"switch.table._ZN51_$LT$bbqueue..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h203824060cfe7b76E" = private unnamed_addr constant [3 x i8] c"\10\0F\0C", align 8
@"switch.table._ZN51_$LT$bbqueue..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h203824060cfe7b76E.9086" = private unnamed_addr constant [3 x ptr] [ptr @2291, ptr @2292, ptr @2293], align 8
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E" = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E.9087" = private unnamed_addr constant [10 x ptr] [ptr @2911, ptr @2912, ptr @2913, ptr @2914, ptr @2915, ptr @2916, ptr @2917, ptr @2918, ptr @2919, ptr @2920], align 8
@"switch.table._ZN67_$LT$meilisearch_types..error..Code$u20$as$u20$core..fmt..Debug$GT$3fmt17h6432e731e76c82aeE" = private unnamed_addr constant [289 x i8] c"\13\0E!\0C\0A\18\10\15\0C\11\13\16\18\18\16\12\12\18\17\17\19\17\22\1C\12\13\0D\1C&\1F\08\0D\14\18\16\14\12\11\13\10\12\1B\15\1E\15\1E!\15\13\19\17\17\1B\12\17\12\11\12\14\15\15\16\18\11\12\16\1A\13\0F\18\1F\1C&-\1B##\1D\1D\1A!#\1F\18\18\14\15\14\12\1A\19\11!\1D\22\22\1D!\22#\1C\17\17\13\1A\14&\1B\10\13\14\1D\1C\18\13\12\1D\14\13\11\0E\17\16\13\13\12 \1D\1E$#\17%$\11\15\18#\1B\22 !\1A\1B\17#\1A\19\1D\18\1B#!\18!\1E\19\17\1C\22\0C%\16\10\1E\12\11\1A\1A\19\1B\1B\1A\15\0F\10\12\13\10\0F\10\07\11\10\16\14\16\14\1A\12\11\1B\0F\10\11\0E\13\12\12\16\13\09\0F\11\10\0D\19\13\11\0D\15\0C\10\0D\10\0E \14\16\15\16\14\18\1B\15\14\11\1D$\1C\18\10\13\18\1C\18\22$('\0C\22\1A\1E\1F!\1B\1C\1B\1C!,+,.#\18)!\22  #\22\19\15\12\16\14\16\0F\11\15\10\12\0F\14\1A\1E\1D\1E# \1E\22\1F#$\19", align 8
@"switch.table._ZN67_$LT$meilisearch_types..error..Code$u20$as$u20$core..fmt..Debug$GT$3fmt17h6432e731e76c82aeE.9088" = private unnamed_addr constant [289 x ptr] [ptr @3354, ptr @3355, ptr @3356, ptr @3357, ptr @3358, ptr @3359, ptr @3360, ptr @3361, ptr @3362, ptr @3363, ptr @3364, ptr @3365, ptr @3366, ptr @3367, ptr @3368, ptr @3369, ptr @3370, ptr @3371, ptr @3372, ptr @3373, ptr @3219, ptr @3217, ptr @3218, ptr @3213, ptr @3152, ptr @3374, ptr @3151, ptr @3375, ptr @3376, ptr @3377, ptr @3378, ptr @3379, ptr @3380, ptr @3381, ptr @3382, ptr @3383, ptr @3384, ptr @3385, ptr @3386, ptr @3387, ptr @3231, ptr @3388, ptr @3389, ptr @3390, ptr @3391, ptr @3392, ptr @3393, ptr @3394, ptr @3395, ptr @3396, ptr @3397, ptr @3398, ptr @3399, ptr @3400, ptr @2818, ptr @3401, ptr @2807, ptr @3402, ptr @3403, ptr @3404, ptr @2872, ptr @2873, ptr @3405, ptr @3406, ptr @3407, ptr @3408, ptr @3409, ptr @3410, ptr @3172, ptr @3411, ptr @3412, ptr @3413, ptr @3414, ptr @3415, ptr @3416, ptr @3417, ptr @3418, ptr @3419, ptr @3420, ptr @3421, ptr @3422, ptr @3423, ptr @3424, ptr @3425, ptr @3426, ptr @3427, ptr @3428, ptr @3429, ptr @3430, ptr @3431, ptr @3432, ptr @3433, ptr @3434, ptr @3435, ptr @3436, ptr @3437, ptr @3438, ptr @3439, ptr @3440, ptr @3441, ptr @3442, ptr @3443, ptr @3444, ptr @3445, ptr @3446, ptr @3447, ptr @3448, ptr @2843, ptr @3449, ptr @3450, ptr @3451, ptr @3452, ptr @3453, ptr @3454, ptr @3455, ptr @3456, ptr @3457, ptr @3458, ptr @3459, ptr @3460, ptr @3461, ptr @3462, ptr @3463, ptr @3464, ptr @3465, ptr @3466, ptr @3467, ptr @3468, ptr @3469, ptr @3470, ptr @3471, ptr @3472, ptr @3473, ptr @3474, ptr @3475, ptr @3476, ptr @3477, ptr @3478, ptr @3479, ptr @3480, ptr @3481, ptr @3482, ptr @3483, ptr @3484, ptr @3485, ptr @3486, ptr @3487, ptr @3488, ptr @3489, ptr @3490, ptr @3491, ptr @3492, ptr @3493, ptr @3494, ptr @3495, ptr @3496, ptr @3497, ptr @3498, ptr @3499, ptr @3500, ptr @3501, ptr @3502, ptr @3503, ptr @2846, ptr @3504, ptr @3505, ptr @3506, ptr @3507, ptr @3508, ptr @3509, ptr @3510, ptr @3511, ptr @3512, ptr @3171, ptr @3513, ptr @3514, ptr @3515, ptr @3168, ptr @3169, ptr @3516, ptr @3517, ptr @2308, ptr @3195, ptr @3518, ptr @3519, ptr @3520, ptr @3521, ptr @3522, ptr @3523, ptr @3524, ptr @2849, ptr @3525, ptr @3526, ptr @3527, ptr @3528, ptr @3529, ptr @3530, ptr @3531, ptr @3532, ptr @3214, ptr @2855, ptr @3533, ptr @3534, ptr @3535, ptr @3536, ptr @3537, ptr @3538, ptr @3539, ptr @3540, ptr @3541, ptr @3542, ptr @3174, ptr @3175, ptr @3176, ptr @3543, ptr @2874, ptr @3544, ptr @3545, ptr @3546, ptr @3547, ptr @3548, ptr @3549, ptr @3550, ptr @3551, ptr @3552, ptr @2864, ptr @3553, ptr @3554, ptr @3555, ptr @3556, ptr @3557, ptr @3558, ptr @3559, ptr @3560, ptr @3561, ptr @3562, ptr @3563, ptr @3564, ptr @3565, ptr @3566, ptr @3567, ptr @3568, ptr @3569, ptr @3570, ptr @3571, ptr @3572, ptr @3573, ptr @3574, ptr @3575, ptr @3576, ptr @3577, ptr @3578, ptr @3579, ptr @3580, ptr @3581, ptr @3582, ptr @3583, ptr @3584, ptr @3585, ptr @3586, ptr @3587, ptr @3588, ptr @3589, ptr @3590, ptr @3222, ptr @3591, ptr @3592, ptr @3593, ptr @3594, ptr @3595, ptr @3596, ptr @3597, ptr @3598, ptr @3599, ptr @3600, ptr @3601, ptr @3602, ptr @3603, ptr @3604, ptr @3605, ptr @3606, ptr @3607, ptr @3608, ptr @3609, ptr @3610, ptr @3611, ptr @3612, ptr @3613, ptr @3614], align 8
@"switch.table._ZN67_$LT$meilisearch_types..tasks..Kind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd306f2b0bff549fcE.9089" = private unnamed_addr constant [18 x ptr] [ptr @1342, ptr @1355, ptr @1350, ptr @1345, ptr @3615, ptr @3616, ptr @3617, ptr @1366, ptr @1359, ptr @1362, ptr @3618, ptr @3619, ptr @1368, ptr @1371, ptr @1374, ptr @1378, ptr @1380, ptr @3620], align 8
@"switch.table._ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d6acd8a09968eaE" = private unnamed_addr constant [5 x i8] c"\08\0A\09\06\08", align 8
@"switch.table._ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Debug$GT$3fmt17hd0d6acd8a09968eaE.9090" = private unnamed_addr constant [5 x ptr] [ptr @3875, ptr @3876, ptr @3877, ptr @3878, ptr @3879], align 8
@"switch.table._ZN70_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Debug$GT$3fmt17h3387484cfd846cdcE" = private unnamed_addr constant [6 x i8] c"\10\0F\0F\0E\10\0F", align 8
@"switch.table._ZN70_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Debug$GT$3fmt17h3387484cfd846cdcE.9091" = private unnamed_addr constant [6 x ptr] [ptr @3965, ptr @3966, ptr @3967, ptr @3968, ptr @3969, ptr @3970], align 8
@"switch.table._ZN76_$LT$milli..attribute_patterns..PatternMatch$u20$as$u20$core..fmt..Debug$GT$3fmt17h854193cba95dd5f4E" = private unnamed_addr constant [3 x i8] c"\06\05\07", align 8
@"switch.table._ZN76_$LT$milli..attribute_patterns..PatternMatch$u20$as$u20$core..fmt..Debug$GT$3fmt17h854193cba95dd5f4E.9092" = private unnamed_addr constant [3 x ptr] [ptr @2725, ptr @4381, ptr @4382], align 8
@"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E" = private unnamed_addr constant [6 x i8] c"\06\0B\06\0C\04\09", align 8
@"switch.table._ZN76_$LT$milli..vector..settings..EmbedderSource$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f1cd8c94d335d98E.9093" = private unnamed_addr constant [6 x ptr] [ptr @4391, ptr @4392, ptr @4393, ptr @4394, ptr @4395, ptr @4396], align 8
@"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E" = private unnamed_addr constant [3 x i8] c"\09\06\08", align 8
@"switch.table._ZN76_$LT$milli..vector..settings..NestingContext$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e1de01cfa3d1cc8E.9094" = private unnamed_addr constant [3 x ptr] [ptr @4397, ptr @3746, ptr @4398], align 8
@"switch.table._ZN85_$LT$index_scheduler..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h0800a47064805c0eE" = private unnamed_addr constant [6 x i8] c"\AA\A7\AC\A9\AB\A8", align 2
@"switch.table._ZN92_$LT$meilisearch_types..tasks..network..NetworkTopologyState$u20$as$u20$core..fmt..Debug$GT$3fmt17hc35722862a8d1ccaE" = private unnamed_addr constant [6 x i8] c"\14\12\12\10\11\08", align 8
@"switch.table._ZN92_$LT$meilisearch_types..tasks..network..NetworkTopologyState$u20$as$u20$core..fmt..Debug$GT$3fmt17hc35722862a8d1ccaE.9095" = private unnamed_addr constant [6 x ptr] [ptr @2, ptr @4, ptr @6, ptr @8, ptr @10, ptr @12], align 8
@"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E" = private unnamed_addr constant [18 x ptr] [ptr @1310, ptr @1311, ptr @1312, ptr @1313, ptr @1314, ptr @1315, ptr @1316, ptr @1317, ptr @1318, ptr @1319, ptr @1320, ptr @1321, ptr @1265, ptr @1322, ptr @1323, ptr @1324, ptr @1325, ptr @1326], align 8
@"switch.table._ZN94_$LT$index_scheduler..IndexScheduler..notify_webhooks..TaskReader$u20$as$u20$std..io..Read$GT$4read17h3f046459bd7c7037E.9096" = private unnamed_addr constant [18 x i8] c"\18\0F\10\0E\0D\0D\0B\09\0F\0C\0C\10\06\0F\0F\15\09\08", align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h0f8f02a6b3ad254dE"(ptr %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.c = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !307, !noalias !308, !noundef !57
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !307, !noalias !308, !noundef !57 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.thread.i, label %_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.i, !prof !58

_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.thread.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !310, !noalias !311, !nonnull !57, !noundef !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i8 34, ptr %i.k, align 1, !noalias !312
  %i.l = add nuw i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !310, !noalias !311
  br label %bb.b

_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.i: ; preds = %bb.a
  %i.m = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hbe79b55d1a9a1d7aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @315, i64 noundef 1), !noalias !306 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %_ZN10serde_json3ser18format_escaped_str17hb1af85c5aef908d6E.exit.thread

bb.b:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.i, %_ZN10serde_json3ser9Formatter12begin_string17h789c6f5a865013c4E.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i, %bb.b
  %.sroa.8.0.ph.i.i = phi i64 [ %i.aj, %_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i ], [ %1, %bb.b ] ; 8 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.ah, %_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i.i29 = icmp eq i64 %.sroa.8.0.ph.i.i, 0
  br i1 %exitcond.not.i.i29, label %.outer.i.i._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.06.0.i.i30, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.8.0.ph.i.i
  br i1 %exitcond.not.i.i, label %.outer.i.i._crit_edge, label %.lr.ph

.outer.i.i._crit_edge:                            ; preds = %.outer.i.i, %bb.c
  %i.s = icmp eq i64 %.sroa.8.0.ph.i.i, 0
  %.pre18.i = load i64, ptr %i.d, align 8, !noalias !306 ; 5 uses
  br i1 %i.s, label %_ZN10serde_json3ser27format_escaped_str_contents17hbb923f73c143de0eE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.outer.i.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.t = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !314, !noalias !315, !noundef !57
  %i.u = icmp sgt i64 %.pre18.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = sub nsw i64 %i.t, %.pre18.i
  %i.w = icmp ult i64 %.sroa.8.0.ph.i.i, %i.v
  br i1 %i.w, label %bb.e, label %_ZN10serde_json3ser27format_escaped_str_contents17hbb923f73c143de0eE.exit.i, !prof !58

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.x = load ptr, ptr %i.n, align 8, !alias.scope !317, !noalias !318, !nonnull !57, !noundef !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i, i64 range(i64 1, -1) %.sroa.8.0.ph.i.i, i1 false), !noalias !317
  %i.z = add i64 %.pre18.i, %.sroa.8.0.ph.i.i     ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !317, !noalias !318
  br label %_ZN10serde_json3ser27format_escaped_str_contents17hbb923f73c143de0eE.exit.thread.i

.lr.ph:                                           ; preds = %.outer.i.i, %bb.c
  %.sroa.06.0.i.i30 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i30
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !319, !noundef !57 ; 3 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17h0276473040442971E, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !319, !noundef !57 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i, i64 %.sroa.06.0.i.i30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.06.0.i.i30, -1
  %i.aj = add i64 %.sroa.8.0.ph.i.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.06.0.i.i30, 0
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.al = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !320, !noalias !321, !noundef !57
  %i.am = load i64, ptr %i.d, align 8, !alias.scope !320, !noalias !321, !noundef !57 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = sub nsw i64 %i.al, %i.am
  %i.ap = icmp ult i64 %.sroa.06.0.i.i30, %i.ao
  br i1 %i.ap, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.thread.i.i, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.i.i, !prof !58

_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.thread.i.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.aq = load ptr, ptr %i.n, align 8, !alias.scope !323, !noalias !324, !nonnull !57, !noundef !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i, i64 range(i64 1, -1) %.sroa.06.0.i.i30, i1 false), !noalias !323
  %i.as = add i64 %i.am, %.sroa.06.0.i.i30
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !323, !noalias !324
  br label %bb.h

_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.i.i: ; preds = %bb.g
  %i.at = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hbe79b55d1a9a1d7aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.ph.i.i, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i30) ; 2 uses
  %.not21.i.i = icmp eq ptr %i.at, null
  br i1 %.not21.i.i, label %bb.h, label %_ZN10serde_json3ser18format_escaped_str17hb1af85c5aef908d6E.exit.thread

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.i.i, %_ZN10serde_json3ser9Formatter21write_string_fragment17h7654458c7096f22cE.exit26.thread.i.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !319
  %i.av = and i8 %i.ab, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = lshr i8 %i.ab, 4
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !319, !noundef !57
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !319, !noundef !57
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !319
  store i8 %i.ba, ptr %i.p, align 4, !noalias !319
  store i8 %i.bc, ptr %i.q, align 1, !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.bd = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !325, !noalias !326, !noundef !57
  %i.be = load i64, ptr %i.d, align 8, !alias.scope !325, !noalias !326, !noundef !57 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = sub nsw i64 %i.bd, %i.be
  %i.bh = icmp ugt i64 %i.bg, 6
  br i1 %i.bh, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hbe79b55d1a9a1d7aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 6)
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit.i.i.i"

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bj = load ptr, ptr %i.n, align 8, !alias.scope !328, !noalias !329, !nonnull !57, !noundef !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -1) 6, i1 false), !noalias !328
  %i.bl = add nuw i64 %i.be, 6
  store i64 %i.bl, ptr %i.d, align 8, !alias.scope !328, !noalias !329
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit.i.i.i": ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i27.i.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  store i8 92, ptr %i.a, align 2, !noalias !319
  store i8 %i.ae, ptr %i.o, align 1, !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.bm = load i64, ptr %.0.val, align 8, !range !56, !alias.scope !330, !noalias !331, !noundef !57
  %i.bn = load i64, ptr %i.d, align 8, !alias.scope !330, !noalias !331, !noundef !57 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = sub nsw i64 %i.bm, %i.bn
  %i.bq = icmp ugt i64 %i.bp, 2
  br i1 %i.bq, label %bb.n, label %bb.m, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hbe79b55d1a9a1d7aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 2)
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit7.i.i.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.bs = load ptr, ptr %i.n, align 8, !alias.scope !333, !noalias !334, !nonnull !57, !noundef !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn
  %i.bu = load i16, ptr %i.a, align 2, !noalias !335
  store i16 %i.bu, ptr %i.bt, align 1, !noalias !333
  %i.bv = add nuw i64 %i.bn, 2
  store i64 %i.bv, ptr %i.d, align 8, !alias.scope !333, !noalias !334
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit7.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit7.i.i.i": ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i

_ZN10serde_json3ser9Formatter17write_char_escape17h450eb12200724c45E.exit.i.i: ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit7.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit.i.i.i"
  %.sroa.02.0.i.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit7.i.i.i" ], [ %.sroa.0.0.i.i.i27.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hd5e87d21f8bad430E.exit.i.i.i" ] ; 2 uses
  %.not22.i.i = icmp eq ptr %.sroa.02.0.i.i.i, null
end_hunk_0
begin_hunk_1_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hab6075b9cf666c52E":bb.a
bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !98226
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ai, ptr %i.r, align 8, !noalias !98226
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3031, i64 noundef 26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3027, i64 noundef 3, ptr noundef nonnull align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !98226
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ak, ptr %i.q, align 8, !noalias !98226
  %i.al = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2314, i64 noundef 3, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3032)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !98226
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.am, ptr %i.p, align 8, !noalias !98226
  %i.an = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3034, i64 noundef 14, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3033)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3035, i64 noundef 28), !noalias !98224
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.j:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3036, i64 noundef 26), !noalias !98224
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !98226
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.aq, ptr %i.o, align 8, !noalias !98226
  %i.ar = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3037, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3038, i64 noundef 7, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2080)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !98226
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.as, ptr %i.n, align 8, !noalias !98226
  %i.at = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3040, i64 noundef 15, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3039)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !98226
  store ptr %i.v, ptr %i.m, align 8, !noalias !98226
  %i.au = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3042, i64 noundef 17, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3041)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !98226
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.av, ptr %i.l, align 8, !noalias !98226
  %i.aw = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2857, i64 noundef 9, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2317)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !98226
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ax, ptr %i.k, align 8, !noalias !98226
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3044, i64 noundef 12, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3043)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !98226
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.az, ptr %i.j, align 8, !noalias !98226
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3046, i64 noundef 13, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3045)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !98226
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bb, ptr %i.i, align 8, !noalias !98226
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3047, i64 noundef 5, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2026)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.r:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !98226
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.bf, ptr %i.h, align 8, !noalias !98226
  %i.bg = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3049, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3050, i64 noundef 13, ptr noundef nonnull readonly align 1 %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3027, i64 noundef 3, ptr noundef nonnull readonly align 1 %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3048, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @908, i64 noundef 5, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2350)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.s:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !98226
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.bj, ptr %i.g, align 8, !noalias !98226
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3051, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3050, i64 noundef 13, ptr noundef nonnull readonly align 1 %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3027, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3048, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3052, i64 noundef 12, ptr noundef nonnull readonly align 1 %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2341, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @908, i64 noundef 5, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2350)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !98226
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bl, ptr %i.f, align 8, !noalias !98226
  %i.bm = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2420, i64 noundef 4, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2794)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.u:                                             ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3053, i64 noundef 17), !noalias !98224
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.v:                                             ; preds = %bb.a
  %i.bo = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3054, i64 noundef 20), !noalias !98224
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.w:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !98226
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.br, ptr %i.e, align 8, !noalias !98226
  %i.bs = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3055, i64 noundef 22, ptr noundef nonnull readonly align 1 %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2378, ptr noundef nonnull readonly align 1 %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2378, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !98226
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bt, ptr %i.d, align 8, !noalias !98226
  %i.bu = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3057, i64 noundef 10, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3056)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98226
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bv, ptr %i.c, align 8, !noalias !98226
  %i.bw = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3059, i64 noundef 11, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3058)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98226
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bx, ptr %i.b, align 8, !noalias !98226
  %i.by = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2801, i64 noundef 14, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2800)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98226
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.bz, ptr %i.a, align 8, !noalias !98226
  %i.ca = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2864, i64 noundef 20, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2863)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98226
  br label %"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit"

"_ZN64_$LT$milli..error..InternalError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5cc3f07d96a8463cE.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.in.i = phi i1 [ %i.ad, %bb.c ], [ %i.af, %bb.d ], [ %i.ah, %bb.e ], [ %i.aj, %bb.f ], [ %i.al, %bb.g ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ], [ %i.ar, %bb.k ], [ %i.at, %bb.l ], [ %i.au, %bb.m ], [ %i.aw, %bb.n ], [ %i.ay, %bb.o ], [ %i.ba, %bb.p ], [ %i.bc, %bb.q ], [ %i.bg, %bb.r ], [ %i.bk, %bb.s ], [ %i.bm, %bb.t ], [ %i.bn, %bb.u ], [ %i.bo, %bb.v ], [ %i.bs, %bb.w ], [ %i.bu, %bb.x ], [ %i.bw, %bb.y ], [ %i.by, %bb.z ], [ %i.ca, %bb.aa ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17habadb7372f81653eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98230)
  %i.c = load i64, ptr %i.b, align 8, !range !83, !alias.scope !98230, !noalias !98231, !noundef !57
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98232
  store ptr %i.b, ptr %i.a, align 8, !noalias !98232
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3113, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4469, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98232
  br label %"_ZN78_$LT$index_scheduler..scheduler..ModifiedTasks$u20$as$u20$core..fmt..Debug$GT$3fmt17h92da04f2ca089f8fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4467, i64 noundef 15), !noalias !98230
  br label %"_ZN78_$LT$index_scheduler..scheduler..ModifiedTasks$u20$as$u20$core..fmt..Debug$GT$3fmt17h92da04f2ca089f8fE.exit"

"_ZN78_$LT$index_scheduler..scheduler..ModifiedTasks$u20$as$u20$core..fmt..Debug$GT$3fmt17h92da04f2ca089f8fE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacde994b2edec573E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %.val = load i8, ptr %i.a, align 1, !range !190, !noundef !57 ; 2 uses
  %i.b = zext i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacde994b2edec573E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacde994b2edec573E.9076", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17had0649f0fc51d1d3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98236)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !98236, !noalias !98237, !noundef !57
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98238
  store ptr %i.b, ptr %i.a, align 8, !noalias !98238
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3113, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3135)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98238
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h97c2eafe8d7e8119E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3112, i64 noundef 4), !noalias !98236
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h97c2eafe8d7e8119E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h97c2eafe8d7e8119E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae25e300e94d49f0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98242)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !98242, !noalias !98243, !align !61, !noundef !57
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98244
  store ptr %i.b, ptr %i.a, align 8, !noalias !98244
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3113, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98244
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h90667caf2aad4c0bE.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3112, i64 noundef 4), !noalias !98242
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h90667caf2aad4c0bE.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h90667caf2aad4c0bE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hafa0ee3ccb451307E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98252
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !98253
  %.idx.i.i = mul nuw nsw i64 %.val1, 24
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h65dc61bf7e365ea8E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98254
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !98254
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2071) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98254
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h65dc61bf7e365ea8E.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h65dc61bf7e365ea8E.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98252
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0d9405285783dd1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98258)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !98258, !noalias !98259, !align !61, !noundef !57
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98260
  store ptr %i.b, ptr %i.a, align 8, !noalias !98260
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3113, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3120)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98260
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h448fde7740bdd828E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3112, i64 noundef 4), !noalias !98258
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h448fde7740bdd828E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h448fde7740bdd828E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb13ed6cb2f9e14d9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98264
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !98264
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4929, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2850, i64 noundef 8, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4926, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4798, i64 noundef 9, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4927, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4930, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4928)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98264
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb19996ffed06da0aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98268)
  %i.c = load i64, ptr %i.b, align 8, !range !91, !alias.scope !98268, !noalias !98269, !noundef !57
  %.not.i = icmp eq i64 %i.c, -9223372036854775803
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98270
  store ptr %i.b, ptr %i.a, align 8, !noalias !98270
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3113, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2059)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98270
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h79a44b5833a94256E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3112, i64 noundef 4), !noalias !98268
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h79a44b5833a94256E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h79a44b5833a94256E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb23a3e0a2e00cfe5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !163, !noundef !57 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !98274, !noalias !98275, !noundef !57 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h50c0f8c81bb6c463E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hd7ec11e909e70495E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit"

"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h27e1f960e92162ceE.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2d44390882b51feE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17haeb63ca629add04aE":bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.lz, %bb.lp, %bb.lh, %bb.lg
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.lg ], [ %i.fh, %bb.lz ], [ %lpad.phi.i.i.i, %bb.lh ], [ %i.ey, %bb.lp ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.ll, %bb.g
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ep, %bb.ll ]
  store i64 %storemerge.i.i.i, ptr %i.as, align 8, !noalias !212489
  call void @llvm.experimental.noalias.scope.decl(metadata !212490)
  call void @llvm.experimental.noalias.scope.decl(metadata !212491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !212492
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17hd72221b623066d80E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ay = load i8, ptr %i.q, align 8, !range !74, !noalias !212492, !noundef !57
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !212492, !nonnull !57, !align !61, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !212492
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !range !74, !noalias !212492, !noundef !57
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !212492
  br i1 %i.bd, label %bb.k, label %.thread36.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.s, align 8, !alias.scope !212494, !noalias !212495, !nonnull !57, !align !61, !noundef !57 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212496)
  call void @llvm.experimental.noalias.scope.decl(metadata !212497)
  call void @llvm.experimental.noalias.scope.decl(metadata !212498)
  call void @llvm.experimental.noalias.scope.decl(metadata !212499)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !212500, !noalias !212501, !noundef !57 ; 5 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !212502, !noalias !212503 ; 2 uses
  %i.bi = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !212500, !noalias !212501, !nonnull !57, !align !64, !noundef !57 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212504)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !212505, !noundef !57
  switch i8 %i.bn, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  ], !prof !117

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bo = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.bf, align 8, !alias.scope !212506, !noalias !212503
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bo, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !212507
  store i64 5, ptr %i.l, align 8, !noalias !212507
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !212507
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !212507
  store i64 10, ptr %i.m, align 8, !noalias !212507
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !212507
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

bb.o:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !74, !alias.scope !212508, !noalias !212509, !noundef !57
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.v

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !212510)
  call void @llvm.experimental.noalias.scope.decl(metadata !212511)
  call void @llvm.experimental.noalias.scope.decl(metadata !212512)
  call void @llvm.experimental.noalias.scope.decl(metadata !212513)
  call void @llvm.experimental.noalias.scope.decl(metadata !212514)
  call void @llvm.experimental.noalias.scope.decl(metadata !212515)
  call void @llvm.experimental.noalias.scope.decl(metadata !212516)
  call void @llvm.experimental.noalias.scope.decl(metadata !212517)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i
  %i.bu = phi i64 [ %i.bx, %bb.p ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !212518, !noundef !57 ; 2 uses
  switch i8 %i.bw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = add i64 %i.bu, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.bf, align 8, !alias.scope !212519, !noalias !212520
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !212521
  %i.by = icmp eq i8 %i.bw, 34
  br i1 %i.by, label %bb.q, label %bb.r, !prof !58

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !212521
  store i64 5, ptr %i.k, align 8, !noalias !212521
  %i.bz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !212521
  br label %bb.u

bb.q:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bf, align 8, !alias.scope !212522, !noalias !212523
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !212524, !noalias !212523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !212521
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.cc = load i64, ptr %i.i, align 8, !range !72, !noalias !212521, !noundef !57
  %i.cd = icmp eq i64 %i.cc, 2
  %i.ce = load ptr, ptr %i.au, align 8, !noalias !212521 ; 3 uses
  br i1 %i.cd, label %bb.s, label %bb.t

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

bb.s:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !212521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212521
  br label %bb.u

bb.t:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !212521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h119f28009eb093e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc12.i.i.i:                                   ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !212521
  %i.cg = load i8, ptr %i.j, align 8, !range !74, !noalias !212521, !noundef !57
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %switch.lookup, !prof !60

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !212521
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.r ]
  %i.cj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212521
  br label %bb.u

bb.u:                                             ; preds = %.noexc13.i.i.i, %bb.s, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc9.i.i.i ], [ %i.cj, %.noexc13.i.i.i ], [ %i.ce, %bb.s ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

switch.lookup:                                    ; preds = %.noexc12.i.i.i
  %i.ck = load i8, ptr %i.av, align 1, !range !190, !noalias !212521, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212521
  br label %.thread.i.i.i

default.unreachable:                              ; preds = %.noexc22.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !212508, !noalias !212509, !noundef !57
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !alias.scope !212508, !noalias !212509
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.kz, label %bb.w, !prof !60

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cp = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.bf, align 8, !alias.scope !212525, !noalias !212509
  call void @llvm.experimental.noalias.scope.decl(metadata !212526)
  call void @llvm.experimental.noalias.scope.decl(metadata !212527)
  call void @llvm.experimental.noalias.scope.decl(metadata !212528)
  call void @llvm.experimental.noalias.scope.decl(metadata !212529)
  %i.cq = icmp ult i64 %i.cp, %i.bh
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cr = phi i64 [ %i.cu, %bb.x ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !212530, !noundef !57
  switch i8 %i.ct, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !118

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %i.cr, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bf, align 8, !alias.scope !212531, !noalias !212532
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !212533
  store i64 3, ptr %i.f, align 8, !noalias !212533
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !212533
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !212533
  store i64 17, ptr %i.g, align 8, !noalias !212533
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc15.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !212533
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !212533
  call void @llvm.experimental.noalias.scope.decl(metadata !212534)
  call void @llvm.experimental.noalias.scope.decl(metadata !212535)
  call void @llvm.experimental.noalias.scope.decl(metadata !212536)
  call void @llvm.experimental.noalias.scope.decl(metadata !212537)
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.bf, align 8, !alias.scope !212538, !noalias !212539
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !212540, !noalias !212539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !212541
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc16.i.i.i:                                   ; preds = %bb.z
  %i.cz = load i64, ptr %i.d, align 8, !range !72, !noalias !212541, !noundef !57
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !212541, !nonnull !57, !noundef !57 ; 2 uses
  br i1 %i.da, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !138

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !212541
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !212541
  invoke fastcc void @"_ZN195_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h119f28009eb093e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !range !74, !noalias !212533
  %i.dc = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !212541
  br i1 %i.dc, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !129

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !212533
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !212533
  store i64 10, ptr %i.h, align 8, !noalias !212533
  %i.dd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc18.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !212533
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.de = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc19.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !212533
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc17.i.i.i
  %i.dg = load i8, ptr %i.ax, align 1, !range !190, !noalias !212533, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !212533
  call void @llvm.experimental.noalias.scope.decl(metadata !212542)
  call void @llvm.experimental.noalias.scope.decl(metadata !212543)
  %i.dh = load i64, ptr %i.bg, align 8, !alias.scope !212544, !noalias !212545, !noundef !57 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !212546, !noalias !212547 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !212544, !noalias !212545, !nonnull !57, !align !64, !noundef !57
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212548)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !212549, !noundef !57
  switch i8 %i.dm, label %bb.af [
    i8 32, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
    i8 58, label %bb.ag
  ], !prof !89

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dn = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.bf, align 8, !alias.scope !212550, !noalias !212547
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !212551
  store i64 3, ptr %i.b, align 8, !noalias !212551
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc20.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc20.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !212551
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !212551
  store i64 6, ptr %i.c, align 8, !noalias !212551
  %i.dp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc21.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493

.noexc21.i.i.i:                                   ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !212551
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad
  %i.dq = add i64 %i.dk, 1
  store i64 %i.dq, ptr %i.bf, align 8, !alias.scope !212552, !noalias !212553
  %i.dr = invoke fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h1fb3aa380eadb51aE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc22.i.i.i unwind label %.loopexit.i.i.i, !noalias !212493 ; 140 uses

.noexc22.i.i.i:                                   ; preds = %bb.ag
  %.not835.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dr, null ; 139 uses
  switch i8 %i.dg, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.am
    i8 6, label %bb.an
    i8 7, label %bb.ao
    i8 8, label %bb.ap
    i8 9, label %bb.aq
    i8 10, label %bb.ar
    i8 11, label %bb.as
    i8 12, label %bb.at
    i8 13, label %bb.au
    i8 14, label %bb.av
    i8 15, label %bb.aw
    i8 16, label %bb.ax
    i8 17, label %bb.ay
end_hunk_2
begin_hunk_3_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17haeb63ca629add04aE":bb.a

bb.js:                                            ; preds = %bb.ej
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jt:                                            ; preds = %bb.ek
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ju:                                            ; preds = %bb.el
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jv:                                            ; preds = %bb.em
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jw:                                            ; preds = %bb.en
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jx:                                            ; preds = %bb.eo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jy:                                            ; preds = %bb.ep
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.jz:                                            ; preds = %bb.eq
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ka:                                            ; preds = %bb.er
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kb:                                            ; preds = %bb.es
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kc:                                            ; preds = %bb.et
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kd:                                            ; preds = %bb.eu
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ke:                                            ; preds = %bb.ev
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kf:                                            ; preds = %bb.ew
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kg:                                            ; preds = %bb.ex
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kh:                                            ; preds = %bb.ey
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ki:                                            ; preds = %bb.ez
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kj:                                            ; preds = %bb.fa
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kk:                                            ; preds = %bb.fb
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kl:                                            ; preds = %bb.fc
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.km:                                            ; preds = %bb.fd
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kn:                                            ; preds = %bb.fe
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ko:                                            ; preds = %bb.ff
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kp:                                            ; preds = %bb.fg
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kq:                                            ; preds = %bb.fh
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kr:                                            ; preds = %bb.fi
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ks:                                            ; preds = %bb.fj
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kt:                                            ; preds = %bb.fk
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ku:                                            ; preds = %bb.fl
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kv:                                            ; preds = %bb.fm
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kw:                                            ; preds = %bb.fn
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.kx:                                            ; preds = %bb.fo
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

bb.ky:                                            ; preds = %bb.fp
  br label %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"

"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.noexc21.i.i.i, %.noexc20.i.i.i, %.noexc19.i.i.i, %.noexc18.i.i.i, %.noexc15.i.i.i, %.noexc14.i.i.i
  %.sroa.1458.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.fo ], [ undef, %bb.fq ], [ %i.cw, %.noexc15.i.i.i ], [ undef, %bb.fr ], [ %i.dr, %bb.ah ], [ undef, %bb.fs ], [ %i.dr, %bb.ai ], [ undef, %bb.ft ], [ %i.dr, %bb.aj ], [ undef, %bb.fu ], [ %i.dr, %bb.ak ], [ undef, %bb.fv ], [ %i.dr, %bb.al ], [ undef, %bb.fw ], [ %i.dr, %bb.am ], [ undef, %bb.fx ], [ %i.dr, %bb.an ], [ undef, %bb.fy ], [ %i.dr, %bb.ao ], [ undef, %bb.fz ], [ %i.dr, %bb.ap ], [ undef, %bb.ga ], [ %i.dr, %bb.aq ], [ undef, %bb.gb ], [ %i.dr, %bb.ar ], [ undef, %bb.gc ], [ %i.dr, %bb.as ], [ undef, %bb.gd ], [ %i.dr, %bb.at ], [ undef, %bb.ge ], [ %i.dr, %bb.au ], [ undef, %bb.gf ], [ %i.dr, %bb.av ], [ undef, %bb.gg ], [ %i.dr, %bb.aw ], [ undef, %bb.gh ], [ %i.dr, %bb.ax ], [ undef, %bb.gi ], [ %i.dr, %bb.ay ], [ undef, %bb.gj ], [ %i.dr, %bb.az ], [ undef, %bb.gk ], [ %i.dr, %bb.ba ], [ undef, %bb.gl ], [ %i.dr, %bb.bb ], [ undef, %bb.gm ], [ %i.dr, %bb.bc ], [ undef, %bb.gn ], [ %i.dr, %bb.bd ], [ undef, %bb.go ], [ %i.dr, %bb.be ], [ undef, %bb.gp ], [ %i.dr, %bb.bf ], [ undef, %bb.gq ], [ %i.dr, %bb.bg ], [ undef, %bb.gr ], [ %i.dr, %bb.bh ], [ undef, %bb.gs ], [ %i.dr, %bb.bi ], [ undef, %bb.gt ], [ %i.dr, %bb.bj ], [ undef, %bb.gu ], [ %i.dr, %bb.bk ], [ undef, %bb.gv ], [ %i.dr, %bb.bl ], [ undef, %bb.gw ], [ %i.dr, %bb.bm ], [ undef, %bb.gx ], [ %i.dr, %bb.bn ], [ undef, %bb.gy ], [ %i.dr, %bb.bo ], [ undef, %bb.gz ], [ %i.dr, %bb.bp ], [ undef, %bb.ha ], [ %i.dr, %bb.bq ], [ undef, %bb.hb ], [ %i.dr, %bb.br ], [ undef, %bb.hc ], [ %i.dr, %bb.bs ], [ undef, %bb.hd ], [ %i.dr, %bb.bt ], [ undef, %bb.he ], [ %i.dr, %bb.bu ], [ undef, %bb.hf ], [ %i.dr, %bb.bv ], [ undef, %bb.hg ], [ %i.dr, %bb.bw ], [ undef, %bb.hh ], [ %i.dr, %bb.bx ], [ undef, %bb.hi ], [ %i.dr, %bb.by ], [ undef, %bb.hj ], [ %i.dr, %bb.bz ], [ undef, %bb.hk ], [ %i.dr, %bb.ca ], [ undef, %bb.hl ], [ %i.dr, %bb.cb ], [ undef, %bb.hm ], [ %i.dr, %bb.cc ], [ undef, %bb.hn ], [ %i.dr, %bb.cd ], [ undef, %bb.ho ], [ %i.dr, %bb.ce ], [ undef, %bb.hp ], [ %i.dr, %bb.cf ], [ undef, %bb.hq ], [ %i.dr, %bb.cg ], [ undef, %bb.hr ], [ %i.dr, %bb.ch ], [ undef, %bb.hs ], [ %i.dr, %bb.ci ], [ undef, %bb.ht ], [ %i.dr, %bb.cj ], [ undef, %bb.hu ], [ %i.dr, %bb.ck ], [ undef, %bb.hv ], [ %i.dr, %bb.cl ], [ undef, %bb.hw ], [ %i.dr, %bb.cm ], [ undef, %bb.hx ], [ %i.dr, %bb.cn ], [ undef, %bb.hy ], [ %i.dr, %bb.co ], [ undef, %bb.hz ], [ %i.dr, %bb.cp ], [ undef, %bb.ia ], [ %i.dr, %bb.cq ], [ undef, %bb.ib ], [ %i.dr, %bb.cr ], [ undef, %bb.ic ], [ %i.dr, %bb.cs ], [ undef, %bb.id ], [ %i.dr, %bb.ct ], [ undef, %bb.ie ], [ %i.dr, %bb.cu ], [ undef, %bb.if ], [ %i.dr, %bb.cv ], [ undef, %bb.ig ], [ %i.dr, %bb.cw ], [ undef, %bb.ih ], [ %i.dr, %bb.cx ], [ undef, %bb.ii ], [ %i.dr, %bb.cy ], [ undef, %bb.ij ], [ %i.dr, %bb.cz ], [ undef, %bb.ik ], [ %i.dr, %bb.da ], [ undef, %bb.il ], [ %i.dr, %bb.db ], [ undef, %bb.im ], [ %i.dr, %bb.dc ], [ undef, %bb.in ], [ %i.dr, %bb.dd ], [ undef, %bb.io ], [ %i.dr, %bb.de ], [ undef, %bb.ip ], [ %i.dr, %bb.df ], [ undef, %bb.iq ], [ %i.dr, %bb.dg ], [ undef, %bb.ir ], [ %i.dr, %bb.dh ], [ undef, %bb.is ], [ %i.dr, %bb.di ], [ undef, %bb.it ], [ %i.dr, %bb.dj ], [ undef, %bb.iu ], [ %i.dr, %bb.dk ], [ undef, %bb.iv ], [ %i.dr, %bb.dl ], [ undef, %bb.iw ], [ %i.dr, %bb.dm ], [ undef, %bb.ix ], [ %i.dr, %bb.dn ], [ undef, %bb.iy ], [ %i.dr, %bb.do ], [ undef, %bb.iz ], [ %i.dr, %bb.dp ], [ undef, %bb.ja ], [ %i.dr, %bb.dq ], [ undef, %bb.jb ], [ %i.dr, %bb.dr ], [ undef, %bb.jc ], [ %i.dr, %bb.ds ], [ undef, %bb.jd ], [ %i.dr, %bb.dt ], [ undef, %bb.je ], [ %i.dr, %bb.du ], [ undef, %bb.jf ], [ %i.dr, %bb.dv ], [ undef, %bb.jg ], [ %i.dr, %bb.dw ], [ undef, %bb.jh ], [ %i.dr, %bb.dx ], [ undef, %bb.ji ], [ %i.dr, %bb.dy ], [ undef, %bb.jj ], [ %i.dr, %bb.dz ], [ undef, %bb.jk ], [ %i.dr, %bb.ea ], [ undef, %bb.jl ], [ %i.dr, %bb.eb ], [ undef, %bb.jm ], [ %i.dr, %bb.ec ], [ undef, %bb.jn ], [ %i.dr, %bb.ed ], [ undef, %bb.jo ], [ %i.dr, %bb.ee ], [ undef, %bb.jp ], [ %i.dr, %bb.ef ], [ undef, %bb.jq ], [ %i.dr, %bb.eg ], [ undef, %bb.jr ], [ %i.dr, %bb.eh ], [ undef, %bb.js ], [ %i.dr, %bb.ei ], [ undef, %bb.jt ], [ %i.dr, %bb.ej ], [ undef, %bb.ju ], [ %i.dr, %bb.ek ], [ undef, %bb.jv ], [ %i.dr, %bb.el ], [ undef, %bb.jw ], [ %i.dr, %bb.em ], [ undef, %bb.jx ], [ %i.dr, %bb.en ], [ undef, %bb.jy ], [ %i.dr, %bb.eo ], [ undef, %bb.jz ], [ %i.dr, %bb.ep ], [ undef, %bb.ka ], [ %i.dr, %bb.eq ], [ undef, %bb.kb ], [ %i.dr, %bb.er ], [ undef, %bb.kc ], [ %i.dr, %bb.es ], [ undef, %bb.kd ], [ %i.dr, %bb.et ], [ undef, %bb.ke ], [ %i.dr, %bb.eu ], [ undef, %bb.kf ], [ %i.dr, %bb.ev ], [ undef, %bb.kg ], [ %i.dr, %bb.ew ], [ undef, %bb.kh ], [ %i.dr, %bb.ex ], [ undef, %bb.ki ], [ %i.dr, %bb.ey ], [ undef, %bb.kj ], [ %i.dr, %bb.ez ], [ undef, %bb.kk ], [ %i.dr, %bb.fa ], [ undef, %bb.kl ], [ %i.dr, %bb.fb ], [ undef, %bb.km ], [ %i.dr, %bb.fc ], [ undef, %bb.kn ], [ %i.dr, %bb.fd ], [ undef, %bb.ko ], [ %i.dr, %bb.fe ], [ undef, %bb.kp ], [ %i.dr, %bb.ff ], [ undef, %bb.kq ], [ %i.dr, %bb.fg ], [ undef, %bb.kr ], [ %i.dr, %bb.fh ], [ undef, %bb.ks ], [ %i.dr, %bb.fi ], [ undef, %bb.kt ], [ %i.dr, %bb.fj ], [ undef, %bb.ku ], [ %i.dr, %bb.fk ], [ undef, %bb.kv ], [ %i.dr, %bb.fl ], [ undef, %bb.kw ], [ %i.dr, %bb.fm ], [ undef, %bb.kx ], [ %i.dr, %bb.fn ], [ undef, %bb.ky ], [ %i.dp, %.noexc21.i.i.i ], [ %i.do, %.noexc20.i.i.i ], [ %i.dd, %.noexc18.i.i.i ], [ %i.df, %.noexc19.i.i.i ], [ %i.cv, %.noexc14.i.i.i ], [ %i.dr, %bb.fp ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.fo ], [ 0, %bb.fq ], [ undef, %.noexc15.i.i.i ], [ 1, %bb.fr ], [ undef, %bb.ah ], [ 2, %bb.fs ], [ undef, %bb.ai ], [ 3, %bb.ft ], [ undef, %bb.aj ], [ 4, %bb.fu ], [ undef, %bb.ak ], [ 5, %bb.fv ], [ undef, %bb.al ], [ 6, %bb.fw ], [ undef, %bb.am ], [ 7, %bb.fx ], [ undef, %bb.an ], [ 8, %bb.fy ], [ undef, %bb.ao ], [ 9, %bb.fz ], [ undef, %bb.ap ], [ 10, %bb.ga ], [ undef, %bb.aq ], [ 11, %bb.gb ], [ undef, %bb.ar ], [ 12, %bb.gc ], [ undef, %bb.as ], [ 13, %bb.gd ], [ undef, %bb.at ], [ 14, %bb.ge ], [ undef, %bb.au ], [ 15, %bb.gf ], [ undef, %bb.av ], [ 16, %bb.gg ], [ undef, %bb.aw ], [ 17, %bb.gh ], [ undef, %bb.ax ], [ 18, %bb.gi ], [ undef, %bb.ay ], [ 19, %bb.gj ], [ undef, %bb.az ], [ 20, %bb.gk ], [ undef, %bb.ba ], [ 21, %bb.gl ], [ undef, %bb.bb ], [ 22, %bb.gm ], [ undef, %bb.bc ], [ 23, %bb.gn ], [ undef, %bb.bd ], [ 24, %bb.go ], [ undef, %bb.be ], [ 25, %bb.gp ], [ undef, %bb.bf ], [ 26, %bb.gq ], [ undef, %bb.bg ], [ 27, %bb.gr ], [ undef, %bb.bh ], [ 28, %bb.gs ], [ undef, %bb.bi ], [ 29, %bb.gt ], [ undef, %bb.bj ], [ 30, %bb.gu ], [ undef, %bb.bk ], [ 31, %bb.gv ], [ undef, %bb.bl ], [ 32, %bb.gw ], [ undef, %bb.bm ], [ 33, %bb.gx ], [ undef, %bb.bn ], [ 34, %bb.gy ], [ undef, %bb.bo ], [ 35, %bb.gz ], [ undef, %bb.bp ], [ 36, %bb.ha ], [ undef, %bb.bq ], [ 37, %bb.hb ], [ undef, %bb.br ], [ 38, %bb.hc ], [ undef, %bb.bs ], [ 39, %bb.hd ], [ undef, %bb.bt ], [ 40, %bb.he ], [ undef, %bb.bu ], [ 41, %bb.hf ], [ undef, %bb.bv ], [ 42, %bb.hg ], [ undef, %bb.bw ], [ 43, %bb.hh ], [ undef, %bb.bx ], [ 44, %bb.hi ], [ undef, %bb.by ], [ 45, %bb.hj ], [ undef, %bb.bz ], [ 46, %bb.hk ], [ undef, %bb.ca ], [ 47, %bb.hl ], [ undef, %bb.cb ], [ 48, %bb.hm ], [ undef, %bb.cc ], [ 49, %bb.hn ], [ undef, %bb.cd ], [ 50, %bb.ho ], [ undef, %bb.ce ], [ 51, %bb.hp ], [ undef, %bb.cf ], [ 52, %bb.hq ], [ undef, %bb.cg ], [ 53, %bb.hr ], [ undef, %bb.ch ], [ 54, %bb.hs ], [ undef, %bb.ci ], [ 55, %bb.ht ], [ undef, %bb.cj ], [ 56, %bb.hu ], [ undef, %bb.ck ], [ 57, %bb.hv ], [ undef, %bb.cl ], [ 58, %bb.hw ], [ undef, %bb.cm ], [ 59, %bb.hx ], [ undef, %bb.cn ], [ 60, %bb.hy ], [ undef, %bb.co ], [ 61, %bb.hz ], [ undef, %bb.cp ], [ 62, %bb.ia ], [ undef, %bb.cq ], [ 63, %bb.ib ], [ undef, %bb.cr ], [ 64, %bb.ic ], [ undef, %bb.cs ], [ 65, %bb.id ], [ undef, %bb.ct ], [ 66, %bb.ie ], [ undef, %bb.cu ], [ 67, %bb.if ], [ undef, %bb.cv ], [ 68, %bb.ig ], [ undef, %bb.cw ], [ 69, %bb.ih ], [ undef, %bb.cx ], [ 70, %bb.ii ], [ undef, %bb.cy ], [ 71, %bb.ij ], [ undef, %bb.cz ], [ 72, %bb.ik ], [ undef, %bb.da ], [ 73, %bb.il ], [ undef, %bb.db ], [ 74, %bb.im ], [ undef, %bb.dc ], [ 75, %bb.in ], [ undef, %bb.dd ], [ 76, %bb.io ], [ undef, %bb.de ], [ 77, %bb.ip ], [ undef, %bb.df ], [ 78, %bb.iq ], [ undef, %bb.dg ], [ 79, %bb.ir ], [ undef, %bb.dh ], [ 80, %bb.is ], [ undef, %bb.di ], [ 81, %bb.it ], [ undef, %bb.dj ], [ 82, %bb.iu ], [ undef, %bb.dk ], [ 83, %bb.iv ], [ undef, %bb.dl ], [ 84, %bb.iw ], [ undef, %bb.dm ], [ 85, %bb.ix ], [ undef, %bb.dn ], [ 86, %bb.iy ], [ undef, %bb.do ], [ 87, %bb.iz ], [ undef, %bb.dp ], [ 88, %bb.ja ], [ undef, %bb.dq ], [ 89, %bb.jb ], [ undef, %bb.dr ], [ 90, %bb.jc ], [ undef, %bb.ds ], [ 91, %bb.jd ], [ undef, %bb.dt ], [ 92, %bb.je ], [ undef, %bb.du ], [ 93, %bb.jf ], [ undef, %bb.dv ], [ 94, %bb.jg ], [ undef, %bb.dw ], [ 95, %bb.jh ], [ undef, %bb.dx ], [ 96, %bb.ji ], [ undef, %bb.dy ], [ 97, %bb.jj ], [ undef, %bb.dz ], [ 98, %bb.jk ], [ undef, %bb.ea ], [ 99, %bb.jl ], [ undef, %bb.eb ], [ 100, %bb.jm ], [ undef, %bb.ec ], [ 101, %bb.jn ], [ undef, %bb.ed ], [ 102, %bb.jo ], [ undef, %bb.ee ], [ 103, %bb.jp ], [ undef, %bb.ef ], [ 104, %bb.jq ], [ undef, %bb.eg ], [ 105, %bb.jr ], [ undef, %bb.eh ], [ 106, %bb.js ], [ undef, %bb.ei ], [ 107, %bb.jt ], [ undef, %bb.ej ], [ 108, %bb.ju ], [ undef, %bb.ek ], [ 109, %bb.jv ], [ undef, %bb.el ], [ 110, %bb.jw ], [ undef, %bb.em ], [ 111, %bb.jx ], [ undef, %bb.en ], [ 112, %bb.jy ], [ undef, %bb.eo ], [ 113, %bb.jz ], [ undef, %bb.ep ], [ 114, %bb.ka ], [ undef, %bb.eq ], [ 115, %bb.kb ], [ undef, %bb.er ], [ 116, %bb.kc ], [ undef, %bb.es ], [ 117, %bb.kd ], [ undef, %bb.et ], [ 118, %bb.ke ], [ undef, %bb.eu ], [ 119, %bb.kf ], [ undef, %bb.ev ], [ 120, %bb.kg ], [ undef, %bb.ew ], [ 121, %bb.kh ], [ undef, %bb.ex ], [ 122, %bb.ki ], [ undef, %bb.ey ], [ 123, %bb.kj ], [ undef, %bb.ez ], [ 124, %bb.kk ], [ undef, %bb.fa ], [ 125, %bb.kl ], [ undef, %bb.fb ], [ 126, %bb.km ], [ undef, %bb.fc ], [ 127, %bb.kn ], [ undef, %bb.fd ], [ -128, %bb.ko ], [ undef, %bb.fe ], [ -127, %bb.kp ], [ undef, %bb.ff ], [ -126, %bb.kq ], [ undef, %bb.fg ], [ -125, %bb.kr ], [ undef, %bb.fh ], [ -124, %bb.ks ], [ undef, %bb.fi ], [ -123, %bb.kt ], [ undef, %bb.fj ], [ -122, %bb.ku ], [ undef, %bb.fk ], [ -121, %bb.kv ], [ undef, %bb.fl ], [ -120, %bb.kw ], [ undef, %bb.fm ], [ -119, %bb.kx ], [ undef, %bb.fn ], [ -118, %bb.ky ], [ undef, %.noexc21.i.i.i ], [ undef, %.noexc20.i.i.i ], [ undef, %.noexc18.i.i.i ], [ undef, %.noexc19.i.i.i ], [ undef, %.noexc14.i.i.i ], [ undef, %bb.fp ]
  %.sink.i11.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.fo ], [ false, %bb.fq ], [ true, %.noexc15.i.i.i ], [ false, %bb.fr ], [ true, %bb.ah ], [ false, %bb.fs ], [ true, %bb.ai ], [ false, %bb.ft ], [ true, %bb.aj ], [ false, %bb.fu ], [ true, %bb.ak ], [ false, %bb.fv ], [ true, %bb.al ], [ false, %bb.fw ], [ true, %bb.am ], [ false, %bb.fx ], [ true, %bb.an ], [ false, %bb.fy ], [ true, %bb.ao ], [ false, %bb.fz ], [ true, %bb.ap ], [ false, %bb.ga ], [ true, %bb.aq ], [ false, %bb.gb ], [ true, %bb.ar ], [ false, %bb.gc ], [ true, %bb.as ], [ false, %bb.gd ], [ true, %bb.at ], [ false, %bb.ge ], [ true, %bb.au ], [ false, %bb.gf ], [ true, %bb.av ], [ false, %bb.gg ], [ true, %bb.aw ], [ false, %bb.gh ], [ true, %bb.ax ], [ false, %bb.gi ], [ true, %bb.ay ], [ false, %bb.gj ], [ true, %bb.az ], [ false, %bb.gk ], [ true, %bb.ba ], [ false, %bb.gl ], [ true, %bb.bb ], [ false, %bb.gm ], [ true, %bb.bc ], [ false, %bb.gn ], [ true, %bb.bd ], [ false, %bb.go ], [ true, %bb.be ], [ false, %bb.gp ], [ true, %bb.bf ], [ false, %bb.gq ], [ true, %bb.bg ], [ false, %bb.gr ], [ true, %bb.bh ], [ false, %bb.gs ], [ true, %bb.bi ], [ false, %bb.gt ], [ true, %bb.bj ], [ false, %bb.gu ], [ true, %bb.bk ], [ false, %bb.gv ], [ true, %bb.bl ], [ false, %bb.gw ], [ true, %bb.bm ], [ false, %bb.gx ], [ true, %bb.bn ], [ false, %bb.gy ], [ true, %bb.bo ], [ false, %bb.gz ], [ true, %bb.bp ], [ false, %bb.ha ], [ true, %bb.bq ], [ false, %bb.hb ], [ true, %bb.br ], [ false, %bb.hc ], [ true, %bb.bs ], [ false, %bb.hd ], [ true, %bb.bt ], [ false, %bb.he ], [ true, %bb.bu ], [ false, %bb.hf ], [ true, %bb.bv ], [ false, %bb.hg ], [ true, %bb.bw ], [ false, %bb.hh ], [ true, %bb.bx ], [ false, %bb.hi ], [ true, %bb.by ], [ false, %bb.hj ], [ true, %bb.bz ], [ false, %bb.hk ], [ true, %bb.ca ], [ false, %bb.hl ], [ true, %bb.cb ], [ false, %bb.hm ], [ true, %bb.cc ], [ false, %bb.hn ], [ true, %bb.cd ], [ false, %bb.ho ], [ true, %bb.ce ], [ false, %bb.hp ], [ true, %bb.cf ], [ false, %bb.hq ], [ true, %bb.cg ], [ false, %bb.hr ], [ true, %bb.ch ], [ false, %bb.hs ], [ true, %bb.ci ], [ false, %bb.ht ], [ true, %bb.cj ], [ false, %bb.hu ], [ true, %bb.ck ], [ false, %bb.hv ], [ true, %bb.cl ], [ false, %bb.hw ], [ true, %bb.cm ], [ false, %bb.hx ], [ true, %bb.cn ], [ false, %bb.hy ], [ true, %bb.co ], [ false, %bb.hz ], [ true, %bb.cp ], [ false, %bb.ia ], [ true, %bb.cq ], [ false, %bb.ib ], [ true, %bb.cr ], [ false, %bb.ic ], [ true, %bb.cs ], [ false, %bb.id ], [ true, %bb.ct ], [ false, %bb.ie ], [ true, %bb.cu ], [ false, %bb.if ], [ true, %bb.cv ], [ false, %bb.ig ], [ true, %bb.cw ], [ false, %bb.ih ], [ true, %bb.cx ], [ false, %bb.ii ], [ true, %bb.cy ], [ false, %bb.ij ], [ true, %bb.cz ], [ false, %bb.ik ], [ true, %bb.da ], [ false, %bb.il ], [ true, %bb.db ], [ false, %bb.im ], [ true, %bb.dc ], [ false, %bb.in ], [ true, %bb.dd ], [ false, %bb.io ], [ true, %bb.de ], [ false, %bb.ip ], [ true, %bb.df ], [ false, %bb.iq ], [ true, %bb.dg ], [ false, %bb.ir ], [ true, %bb.dh ], [ false, %bb.is ], [ true, %bb.di ], [ false, %bb.it ], [ true, %bb.dj ], [ false, %bb.iu ], [ true, %bb.dk ], [ false, %bb.iv ], [ true, %bb.dl ], [ false, %bb.iw ], [ true, %bb.dm ], [ false, %bb.ix ], [ true, %bb.dn ], [ false, %bb.iy ], [ true, %bb.do ], [ false, %bb.iz ], [ true, %bb.dp ], [ false, %bb.ja ], [ true, %bb.dq ], [ false, %bb.jb ], [ true, %bb.dr ], [ false, %bb.jc ], [ true, %bb.ds ], [ false, %bb.jd ], [ true, %bb.dt ], [ false, %bb.je ], [ true, %bb.du ], [ false, %bb.jf ], [ true, %bb.dv ], [ false, %bb.jg ], [ true, %bb.dw ], [ false, %bb.jh ], [ true, %bb.dx ], [ false, %bb.ji ], [ true, %bb.dy ], [ false, %bb.jj ], [ true, %bb.dz ], [ false, %bb.jk ], [ true, %bb.ea ], [ false, %bb.jl ], [ true, %bb.eb ], [ false, %bb.jm ], [ true, %bb.ec ], [ false, %bb.jn ], [ true, %bb.ed ], [ false, %bb.jo ], [ true, %bb.ee ], [ false, %bb.jp ], [ true, %bb.ef ], [ false, %bb.jq ], [ true, %bb.eg ], [ false, %bb.jr ], [ true, %bb.eh ], [ false, %bb.js ], [ true, %bb.ei ], [ false, %bb.jt ], [ true, %bb.ej ], [ false, %bb.ju ], [ true, %bb.ek ], [ false, %bb.jv ], [ true, %bb.el ], [ false, %bb.jw ], [ true, %bb.em ], [ false, %bb.jx ], [ true, %bb.en ], [ false, %bb.jy ], [ true, %bb.eo ], [ false, %bb.jz ], [ true, %bb.ep ], [ false, %bb.ka ], [ true, %bb.eq ], [ false, %bb.kb ], [ true, %bb.er ], [ false, %bb.kc ], [ true, %bb.es ], [ false, %bb.kd ], [ true, %bb.et ], [ false, %bb.ke ], [ true, %bb.eu ], [ false, %bb.kf ], [ true, %bb.ev ], [ false, %bb.kg ], [ true, %bb.ew ], [ false, %bb.kh ], [ true, %bb.ex ], [ false, %bb.ki ], [ true, %bb.ey ], [ false, %bb.kj ], [ true, %bb.ez ], [ false, %bb.kk ], [ true, %bb.fa ], [ false, %bb.kl ], [ true, %bb.fb ], [ false, %bb.km ], [ true, %bb.fc ], [ false, %bb.kn ], [ true, %bb.fd ], [ false, %bb.ko ], [ true, %bb.fe ], [ false, %bb.kp ], [ true, %bb.ff ], [ false, %bb.kq ], [ true, %bb.fg ], [ false, %bb.kr ], [ true, %bb.fh ], [ false, %bb.ks ], [ true, %bb.fi ], [ false, %bb.kt ], [ true, %bb.fj ], [ false, %bb.ku ], [ true, %bb.fk ], [ false, %bb.kv ], [ true, %bb.fl ], [ false, %bb.kw ], [ true, %bb.fm ], [ false, %bb.kx ], [ true, %bb.fn ], [ false, %bb.ky ], [ true, %.noexc21.i.i.i ], [ true, %.noexc20.i.i.i ], [ true, %.noexc18.i.i.i ], [ true, %.noexc19.i.i.i ], [ true, %.noexc14.i.i.i ], [ true, %bb.fp ] ; 2 uses
  %i.ds = load i8, ptr %i.br, align 8, !range !74, !alias.scope !212508, !noalias !212509, !noundef !57
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.lb, label %bb.la

bb.kz:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !212507
  store i64 24, ptr %i.p, align 8, !noalias !212507
  %i.du = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc23.i.i.i:                                   ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !212507
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

bb.la:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 57 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !212508, !noalias !212509, !noundef !57
  %i.dx = add i8 %i.dw, 1
  store i8 %i.dx, ptr %i.dv, align 1, !alias.scope !212508, !noalias !212509
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a, label %bb.lc

bb.lb:                                            ; preds = %"_ZN190_$LT$meilisearch_types..locales.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..locales..Locale$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h7a105953482da1dfE.exit.i.i.i.i.i.i.i.i"
  br i1 %.sink.i11.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a, label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  call void @llvm.experimental.noalias.scope.decl(metadata !212554)
  %i.dy = load i64, ptr %i.bg, align 8, !alias.scope !212555, !noalias !212556, !noundef !57 ; 2 uses
  %.promoted.i17.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !212557, !noalias !212558 ; 2 uses
  %i.dz = icmp ult i64 %.promoted.i17.i.i.i.i.i.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i22.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i.i.i.i:                       ; preds = %bb.lc
  %i.ea = load ptr, ptr %i.bj, align 8, !alias.scope !212555, !noalias !212556, !nonnull !57, !align !64, !noundef !57
  br label %bb.ld

bb.ld:                                            ; preds = %bb.le, %.lr.ph.i22.i.i.i.i.i.i.i.i
  %i.eb = phi i64 [ %.promoted.i17.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i.i ], [ %i.ee, %bb.le ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212559)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !212560, !noundef !57
  switch i8 %i.ed, label %bb.lf [
    i8 32, label %bb.le
    i8 10, label %bb.le
    i8 9, label %bb.le
    i8 13, label %bb.le
    i8 125, label %bb.lj
  ], !prof !89

bb.le:                                            ; preds = %bb.ld, %bb.ld, %bb.ld, %bb.ld
  %i.ee = add i64 %i.eb, 1                        ; 3 uses
  store i64 %i.ee, ptr %i.bf, align 8, !alias.scope !212561, !noalias !212558
  %exitcond.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.dy
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ld

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.lc, %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !212507
  store i64 3, ptr %i.n, align 8, !noalias !212507
  %i.ef = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !212507
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !212507
  store i64 10, ptr %i.o, align 8, !noalias !212507
  %i.eg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17he99e12cc114d314eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !212493

.noexc25.i.i.i:                                   ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !212507
  br label %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a

.loopexit.i.i.i:                                  ; preds = %bb.lk, %bb.ag, %bb.af, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hff1f33e08d0867b2E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y, %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.q, %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

.loopexit.split-lp.i.i.i:                         ; preds = %bb.lf, %.loopexit.i.i.i.i.i.i.i.i, %bb.kz, %.noexc11.i.i.i, %bb.r, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.loopexit19.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.lg:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !noalias !212489 ; 2 uses
  %i.eh = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.eh, label %common.resume.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %.val6.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !212489, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !212493
  br label %common.resume.i.i

_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a: ; preds = %bb.lb, %bb.la, %.noexc25.i.i.i, %.noexc24.i.i.i, %.noexc23.i.i.i, %bb.u, %.noexc8.i.i.i, %.noexc7.i.i.i, %bb.i
  %.sroa.1228.0.i.i.i = phi ptr [ %i.du, %.noexc23.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.ef, %.noexc24.i.i.i ], [ %i.eg, %.noexc25.i.i.i ], [ %i.bb, %bb.i ], [ %i.bp, %.noexc7.i.i.i ], [ %i.bq, %.noexc8.i.i.i ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.la ], [ %.sroa.1458.0.i.i.i.i.i.i.i.i, %bb.lb ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !noalias !212489 ; 2 uses
  %i.ei = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ei, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i", label %bb.li

bb.li:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a
  %.val4.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !212489, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !212493
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"

bb.lj:                                            ; preds = %bb.ld
  %i.ej = add i64 %i.eb, 1
  store i64 %i.ej, ptr %i.bf, align 8, !alias.scope !212562, !noalias !212509
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.lj, %switch.lookup
  %.sroa.9.0.ph35.i.i.i = phi i8 [ %i.ck, %switch.lookup ], [ %.sroa.5.0.i.i.i.i.i.i.i.i, %bb.lj ]
  %i.ek = load i64, ptr %i.as, align 8, !alias.scope !212563, !noalias !212489, !noundef !57 ; 3 uses
  %i.el = load i64, ptr %i.r, align 8, !range !56, !alias.scope !212563, !noalias !212489, !noundef !57
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %.thread.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4731b467761b7e7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1724)
          to label %bb.ll unwind label %.loopexit.i.i.i, !noalias !212493

.thread36.i.i.i:                                  ; preds = %bb.j
  %.sroa.032.0.copyload33.i.i = load i64, ptr %i.r, align 8, !noalias !212564
  %.sroa.734.0.copyload36.i.i = load ptr, ptr %i.ar, align 8, !noalias !212564
  %.sroa.8.0.copyload38.i.i = load i64, ptr %i.as, align 8, !noalias !212564
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"

bb.ll:                                            ; preds = %bb.lk, %.thread.i.i.i
  %i.en = load ptr, ptr %i.ar, align 8, !alias.scope !212563, !noalias !212489, !nonnull !57, !noundef !57
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ek
  store i8 %.sroa.9.0.ph35.i.i.i, ptr %i.eo, align 1, !noalias !212493
  %i.ep = add i64 %i.ek, 1
  br label %bb.h

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i": ; preds = %.thread36.i.i.i, %bb.li, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a
  %.sroa.8.0.i.i = phi i64 [ undef, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a ], [ undef, %bb.li ], [ %.sroa.8.0.copyload38.i.i, %.thread36.i.i.i ]
  %.sroa.734.0.i.i = phi ptr [ %.sroa.1228.0.i.i.i, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a ], [ %.sroa.1228.0.i.i.i, %bb.li ], [ %.sroa.734.0.copyload36.i.i, %.thread36.i.i.i ] ; 6 uses
  %.sroa.032.0.i.i = phi i64 [ -9223372036854775808, %_ZN10serde_core2de9SeqAccess12next_element17h4459bfcff4536754E.exit.i.i.i.a ], [ -9223372036854775808, %bb.li ], [ %.sroa.032.0.copyload33.i.i, %.thread36.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !212489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !212485
  %i.eq = load i8, ptr %i.ah, align 8, !range !74, !alias.scope !212487, !noalias !212486, !noundef !57
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.lo, label %bb.ln

bb.lm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !212485
  store i64 24, ptr %i.t, align 8, !noalias !212485
  %i.es = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !212486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !212485
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.et, align 8, !alias.scope !212486, !noalias !212487
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212486, !noalias !212487
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

bb.ln:                                            ; preds = %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !212487, !noalias !212486, !noundef !57
  %i.ew = add i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1, !alias.scope !212487, !noalias !212486
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he35847ffdfc2c6b9E.exit.i.i"
  %i.ex = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.lq unwind label %bb.lp, !noalias !212486 ; 9 uses

bb.lp:                                            ; preds = %bb.lo
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$alloc..vec..Vec$LT$meilisearch_types..locales..Locale$GT$$C$serde_json..error..Error$GT$$GT$17h65fb743d1cb0a9f1E"(i64 %.sroa.032.0.i.i, ptr %.sroa.734.0.i.i) #81
          to label %common.resume.i.i unwind label %bb.lv, !noalias !212486

bb.lq:                                            ; preds = %bb.lo
  %i.ez = icmp eq i64 %.sroa.032.0.i.i, -9223372036854775808
  %.not62.i.i = icmp eq ptr %i.ex, null           ; 2 uses
  br i1 %i.ez, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  br i1 %.not62.i.i, label %bb.ma, label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  br i1 %.not62.i.i, label %.thread53.i.i, label %bb.lw

bb.lt:                                            ; preds = %bb.lr
  %i.fa = icmp eq i64 %.sroa.032.0.i.i, 0
  br i1 %i.fa, label %.thread53.i.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.734.0.i.i, i64 noundef %.sroa.032.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !212486
  br label %.thread53.i.i

bb.lv:                                            ; preds = %bb.lp
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !212486
  unreachable

bb.lw:                                            ; preds = %bb.ls
  call void @llvm.experimental.noalias.scope.decl(metadata !212565)
  call void @llvm.experimental.noalias.scope.decl(metadata !212566)
  %i.fc = load i64, ptr %i.ex, align 8, !range !88, !alias.scope !212567, !noalias !212568, !noundef !57
  switch i64 %i.fc, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.lx
    i64 1, label %bb.ly
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.fd, align 8, !alias.scope !212567, !noalias !212568, !noundef !57 ; 2 uses
  %i.fe = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.lx
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !212567, !noalias !212568, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !212569
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.ly:                                            ; preds = %bb.lw
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fg)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.lz, !noalias !212568

bb.lz:                                            ; preds = %bb.ly
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef 40, i64 noundef 8) #79, !noalias !212568
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.ly, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.lx, %bb.lw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef 40, i64 noundef 8) #79, !noalias !212568
  br label %.thread53.i.i

.thread53.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.lu, %bb.lt, %bb.ls, %bb.e
  %.sroa.9.2.i.i = phi ptr [ %.sroa.734.0.i.i, %bb.ls ], [ %i.ak, %bb.e ], [ %.sroa.734.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %i.ex, %bb.lt ], [ %i.ex, %bb.lu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i) ]
  %i.fi = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !212486
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fi, ptr %i.fj, align 8, !alias.scope !212486, !noalias !212487
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !212486, !noalias !212487
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

bb.ma:                                            ; preds = %bb.lr
  store i64 %.sroa.032.0.i.i, ptr %0, align 8, !alias.scope !212486, !noalias !212487
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.734.0.i.i, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !alias.scope !212486, !noalias !212487
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.319.0..sroa_idx.i.i, align 8, !alias.scope !212486, !noalias !212487
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit"

"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h203a4d323f95e326E.exit": ; preds = %.loopexit.i.i, %bb.lm, %.thread53.i.i, %bb.ma
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hafaa21a75d0cb862E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212778)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !212779, !noalias !212780, !noundef !57 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !212781, !noalias !212782 ; 2 uses
  %i.ag = icmp ult i64 %.promoted.i.i.i, %i.af
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit21.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !212779, !noalias !212780, !nonnull !57, !align !64, !noundef !57 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.am, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212783)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !212784, !noundef !57
  switch i8 %i.al, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
end_hunk_3
