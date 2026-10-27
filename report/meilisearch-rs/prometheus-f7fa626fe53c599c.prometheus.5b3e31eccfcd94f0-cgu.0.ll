Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @212, [16 x i8] c"[\00\00\00\00\00\00\00\0A\05\00\00$\00\00\00" }>, align 8
@219 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @212, [16 x i8] c"[\00\00\00\00\00\00\00\FA\03\00\00\09\00\00\00" }>, align 8
@221 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@222 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\16\02\00\00/\00\00\00" }>, align 8
@223 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\000\02\00\00/\00\00\00" }>, align 8
@224 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@225 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\AD\00\00\00$\00\00\00" }>, align 8
@226 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@227 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @226, [16 x i8] c"J\00\00\00\00\00\00\00_\03\00\00\09\00\00\00" }>, align 8
@228 = private unnamed_addr constant [81 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/raw_vec/mod.rs\00", align 1
@229 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @228, [16 x i8] c"P\00\00\00\00\00\00\00*\02\00\00\11\00\00\00" }>, align 8
@230 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"b\00\00\00\00\00\00\00<\00\00\00\0A\00\00\00" }>, align 8
@231 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h665ec6d68153665fE" }>, align 8
@232 = private unnamed_addr constant [5 x i8] c"Gauge", align 1
@233 = private unnamed_addr constant [5 x i8] c"value", align 1
@234 = private unnamed_addr constant [10 x i8] c"AlreadyReg", align 1
@235 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE" }>, align 8
@236 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h22efd61517c5a123E" }>, align 8
@237 = private unnamed_addr constant [23 x i8] c"InconsistentCardinality", align 1
@238 = private unnamed_addr constant [6 x i8] c"expect", align 1
@239 = private unnamed_addr constant [3 x i8] c"got", align 1
@240 = private unnamed_addr constant [3 x i8] c"Msg", align 1
@241 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h76d04b34fd5f1e4fE" }>, align 8
@242 = private unnamed_addr constant [2 x i8] c"Io", align 1
@243 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@244 = private unnamed_addr constant [16 x i8] c"cumulative_count", align 1
@245 = private unnamed_addr constant [11 x i8] c"upper_bound", align 1
@246 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN61_$LT$prometheus..proto..Gauge$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f436d796716f9efE" }>, align 8
@247 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN63_$LT$prometheus..proto..Counter$u20$as$u20$core..fmt..Debug$GT$3fmt17h121746c5243ba335E" }>, align 8
@248 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN63_$LT$prometheus..proto..Summary$u20$as$u20$core..fmt..Debug$GT$3fmt17ha79f5cf52c33d164E" }>, align 8
@249 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN63_$LT$prometheus..proto..Untyped$u20$as$u20$core..fmt..Debug$GT$3fmt17h75fd84c7c69f5f5dE" }>, align 8
@250 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$prometheus..proto..Histogram$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f53dd9f0f0260cbE" }>, align 8
@251 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02530817f6fae64E" }>, align 8
@252 = private unnamed_addr constant [5 x i8] c"label", align 1
@253 = private unnamed_addr constant [5 x i8] c"gauge", align 1
@254 = private unnamed_addr constant [7 x i8] c"counter", align 1
@255 = private unnamed_addr constant [7 x i8] c"summary", align 1
@256 = private unnamed_addr constant [7 x i8] c"untyped", align 1
@257 = private unnamed_addr constant [9 x i8] c"histogram", align 1
@258 = private unnamed_addr constant [12 x i8] c"timestamp_ms", align 1
@259 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @252, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @253, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @254, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @255, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @256, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @257, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @258, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@260 = private unnamed_addr constant [6 x i8] c"Metric", align 1
@261 = private unnamed_addr constant [7 x i8] c"Counter", align 1
@262 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h775cdd3f9382e619E" }>, align 8
@263 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf1e25a681510c66aE" }>, align 8
@264 = private unnamed_addr constant [7 x i8] c"Summary", align 1
@265 = private unnamed_addr constant [12 x i8] c"sample_count", align 1
@266 = private unnamed_addr constant [10 x i8] c"sample_sum", align 1
@267 = private unnamed_addr constant [7 x i8] c"Untyped", align 1
@268 = private unnamed_addr constant [50 x i8] c"Duplicate metrics collector registration attempted", align 1
@269 = private unnamed_addr constant [39 x i8] c"Inconsistent label cardinality, expect ", align 1
@270 = private unnamed_addr constant [23 x i8] c" label values, but got ", align 1
@271 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @269, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @270, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@272 = private unnamed_addr constant [7 x i8] c"Error: ", align 1
@273 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @272, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@274 = private unnamed_addr constant [10 x i8] c"Io error: ", align 1
@275 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @274, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@276 = private unnamed_addr constant [8 x i8] c"Quantile", align 1
@277 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h29833008255b6b03E" }>, align 8
@278 = private unnamed_addr constant [9 x i8] c"Histogram", align 1
@279 = private unnamed_addr constant [6 x i8] c"bucket", align 1
@280 = private unnamed_addr constant [9 x i8] c"LabelPair", align 1
@281 = private unnamed_addr constant [4 x i8] c"name", align 1
@282 = private unnamed_addr constant [7 x i8] c"COUNTER", align 1
@283 = private unnamed_addr constant [5 x i8] c"GAUGE", align 1
@284 = private unnamed_addr constant [7 x i8] c"SUMMARY", align 1
@285 = private unnamed_addr constant [7 x i8] c"UNTYPED", align 1
@286 = private unnamed_addr constant [9 x i8] c"HISTOGRAM", align 1
@287 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prometheus-0.14.0/src/plain_model.rs\00", align 1
@288 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @287, [16 x i8] c"i\00\00\00\00\00\00\00\08\00\00\00\15\00\00\00" }>, align 8
@289 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E" }>, align 8
@290 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4ea564a465cf8f51E" }>, align 8
@291 = private unnamed_addr constant [12 x i8] c"MetricFamily", align 1
@292 = private unnamed_addr constant [10 x i8] c"field_type", align 1
@293 = private unnamed_addr constant [6 x i8] c"metric", align 1
@"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE" = internal global <{ [16 x i8], [1 x i8], [7 x i8] }> <{ [16 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@_ZN6memchr4arch6x86_646memchr11memchr2_raw2FN17h91d616431dad7aeaE = external local_unnamed_addr global { ptr }
@_ZN6memchr4arch6x86_646memchr11memchr3_raw2FN17h7de5b2265a84ffbeE = external local_unnamed_addr global { ptr }
@294 = private unnamed_addr constant [62 x i8] c"fatal runtime error: thread result panicked on drop, aborting\0A", align 1
@295 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @294, [8 x i8] c">\00\00\00\00\00\00\00" }>, align 8
@296 = private unnamed_addr constant [27 x i8] c"Invalid use of NoHashHasher", align 1
@297 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prometheus-0.14.0/src/nohash.rs\00", align 1
@298 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @297, [16 x i8] c"d\00\00\00\00\00\00\00\10\00\00\00\09\00\00\00" }>, align 8
@299 = private unnamed_addr constant [14 x i8] c"RegistryCore (", align 1
@300 = private unnamed_addr constant [12 x i8] c" collectors)", align 1
@301 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @299, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @300, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@302 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @103, [16 x i8] c"e\00\00\00\00\00\00\00\AB\00\00\00\17\00\00\00" }>, align 8
@303 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"g\00\00\00\00\00\00\00\8B\03\00\00\1E\00\00\00" }>, align 8
@304 = private unnamed_addr constant [12 x i8] c"PullingGauge", align 1
@305 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN59_$LT$prometheus..desc..Desc$u20$as$u20$core..fmt..Debug$GT$3fmt17h86477131d3fd86fbE" }>, align 8
@306 = private unnamed_addr constant [4 x i8] c"desc", align 1
@307 = private unnamed_addr constant [8 x i8] c"<opaque>", align 1
@308 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @307, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@309 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3fa9b70346afc680E" }>, align 8
@310 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" = internal global <{ [1 x i8], [1 x i8] }> <{ [1 x i8] zeroinitializer, [1 x i8] undef }>, align 1
@"_ZN82_$LT$prometheus..process_collector..CLK_TCK$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17haa17b3b830eae97aE" = internal global <{ [8 x i8], [1 x i8], [7 x i8] }> <{ [8 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE" = internal global <{ [8 x i8], [1 x i8], [7 x i8] }> <{ [8 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@311 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"f\00\00\00\00\00\00\00-\01\00\002\00\00\00" }>, align 8
@312 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"g\00\00\00\00\00\00\00\01\03\00\00+\00\00\00" }>, align 8
@313 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"g\00\00\00\00\00\00\00\02\03\00\00(\00\00\00" }>, align 8
@"_ZN83_$LT$prometheus..process_collector..PAGESIZE$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h3325ae9311969e32E" = internal global <{ [8 x i8], [1 x i8], [7 x i8] }> <{ [8 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@314 = private unnamed_addr constant [20 x i8] c"Invalid shard index ", align 1
@315 = private unnamed_addr constant [34 x i8] c". A histogram only has two shards.", align 1
@316 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @314, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @315, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@317 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"g\00\00\00\00\00\00\00\D0\00\00\00\12\00\00\00" }>, align 8
@318 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @226, [16 x i8] c"J\00\00\00\00\00\00\00\A7\01\00\00\1F\00\00\00" }>, align 8
@319 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @226, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@320 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @226, [16 x i8] c"J\00\00\00\00\00\00\00\AE\01\00\00&\00\00\00" }>, align 8
@321 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prometheus-0.14.0/src/pulling_gauge.rs\00", align 1
@322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @321, [16 x i8] c"k\00\00\00\00\00\00\00H\00\00\00&\00\00\00" }>, align 8
@323 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @321, [16 x i8] c"k\00\00\00\00\00\00\00I\00\00\00#\00\00\00" }>, align 8
@324 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"o\00\00\00\00\00\00\00\A6\00\00\00\19\00\00\00" }>, align 8
@325 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"o\00\00\00\00\00\00\00\B3\00\00\00\17\00\00\00" }>, align 8
@"switch.table._ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E" = private unnamed_addr constant [5 x i8] c"\07\05\07\07\09", align 8
@"switch.table._ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E.510" = private unnamed_addr constant [5 x ptr] [ptr @282, ptr @283, ptr @284, ptr @285, ptr @286], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f2e54504fe62546E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !134
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h760c6c2de68b9366E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !135
  %i.o = load ptr, ptr %i.n, align 8, !noalias !134, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.thread.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.thread.i": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !134
  br label %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit.thread"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.i": ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !noalias !134 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 888
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.22.0.copyload.i.i ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !134 ; 3 uses
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !134 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !134
  %.not.i = icmp eq i64 %.sroa.06.0.copyload.i, -9223372036854775808
  br i1 %.not.i, label %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.i"
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.22.0.copyload.i.i ; 9 uses
  %.sroa.021.0.copyload = load i64, ptr %i.r, align 8, !noalias !136 ; 5 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !noalias !136 ; 5 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.523.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !136 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8, !noalias !136 ; 3 uses
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.725.0.copyload = load ptr, ptr %.sroa.725.0..sroa_idx, align 8, !noalias !136 ; 3 uses
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.927.0.copyload = load i64, ptr %.sroa.927.0..sroa_idx, align 8, !noalias !136 ; 2 uses
  %i.s = load <2 x i64>, ptr %.sroa.826.0..sroa_idx, align 8, !noalias !136
  %.sroa.1028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.1028.0.copyload = load ptr, ptr %.sroa.1028.0..sroa_idx, align 8, !noalias !136 ; 7 uses
  %.sroa.1129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.t = load <2 x i64>, ptr %.sroa.1129.0..sroa_idx, align 8, !noalias !136
  %.sroa.1129.0.copyload = load i64, ptr %.sroa.1129.0..sroa_idx, align 8, !noalias !136 ; 4 uses
  %i.u = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.u, label %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.47.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.47.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !137
  br label %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit"

"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit": ; preds = %bb.b, %bb.c
  %.not = icmp eq i64 %.sroa.021.0.copyload, -9223372036854775808
  br i1 %.not, label %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit.thread", label %bb.d

bb.d:                                             ; preds = %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load ptr, ptr %i.v, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.w = load ptr, ptr %.val, align 8, !noalias !138, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !range !8, !noalias !138, !noundef !6
  %.not.i1 = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !138
  store ptr %i.w, ptr %i.m, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.copyload) ]
  store ptr %.sroa.422.0.copyload, ptr %i.k, align 8, !noalias !138
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.523.0.copyload, ptr %i.y, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !138
  store ptr %i.m, ptr %i.j, align 8, !noalias !138
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he4ff271c05f93eaeE", ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !138
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.z, align 8, !noalias !138
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha055bba846282b71E", ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139
  store ptr @101, ptr %i.f, align 8, !noalias !140
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !140
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !140
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !140
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !138

bb.f:                                             ; preds = %bb.m, %bb.d
  %.sroa.10.0 = phi i64 [ %.sroa.523.0.copyload, %bb.d ], [ %.sroa.10.0.copyload14, %bb.m ]
  %.sroa.7.2 = phi ptr [ %.sroa.422.0.copyload, %bb.d ], [ %.sroa.7.0.copyload12, %bb.m ] ; 6 uses
  %.sroa.09.2 = phi i64 [ %.sroa.021.0.copyload, %bb.d ], [ %.sroa.09.0.copyload10, %bb.m ] ; 6 uses
  %i.aa = phi ptr [ %i.w, %bb.d ], [ %.pre.i, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !138, !noundef !6 ; 5 uses
  %.not13.i = icmp eq ptr %i.ac, null
  br i1 %.not13.i, label %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E.exit", label %bb.n

.body.i:                                          ; preds = %bb.an, %.body.i.i.i.i.i, %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", %bb.j
  %.sroa.7.1 = phi ptr [ %.sroa.7.2, %bb.an ], [ %.sroa.7.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %.sroa.7.2, %bb.r ], [ %.sroa.7.2, %.body.i.i.i.i.i ], [ %.sroa.7.0, %bb.j ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.an ], [ %.sroa.09.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %.sroa.09.2, %bb.r ], [ %.sroa.09.2, %.body.i.i.i.i.i ], [ %.sroa.09.0, %bb.j ] ; 2 uses
  %.pn15.i = phi { ptr, i32 } [ %.pn.i, %bb.an ], [ %i.ay, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %i.ay, %bb.r ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.al, %bb.j ]
  %i.ad = icmp eq i64 %.sroa.09.1, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2", label %bb.g

bb.g:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1, i64 noundef %.sroa.09.1, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !141
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2": ; preds = %bb.g, %.body.i
  %i.ae = icmp eq i64 %.sroa.624.0.copyload, 0
  br i1 %i.ae, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.725.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.725.0.copyload, i64 noundef %.sroa.624.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !142
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i": ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1028.0.copyload) ]
  %i.af = icmp eq i64 %.sroa.1129.0.copyload, 0
  br i1 %i.af, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", %.lr.ph.i.i.i.i3
  %.sroa.0.07.i.i.i.i4 = phi i64 [ %i.ah, %.lr.ph.i.i.i.i3 ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i" ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %.sroa.1028.0.copyload, i64 %.sroa.0.07.i.i.i.i4
  %i.ah = add nuw i64 %.sroa.0.07.i.i.i.i4, 1     ; 2 uses
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.ag), !noalias !143
  %i.ai = icmp eq i64 %i.ah, %.sroa.1129.0.copyload
  br i1 %i.ai, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i3

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i": ; preds = %.lr.ph.i.i.i.i3, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"
  %i.aj = icmp eq i64 %.sroa.927.0.copyload, 0
  br i1 %i.aj, label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i"
  %i.ak = mul nuw i64 %.sroa.927.0.copyload, 136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1028.0.copyload, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !143
  br label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit"

"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", %bb.i
  resume { ptr, i32 } %.pn15.i

bb.j:                                             ; preds = %bb.n, %bb.e
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %bb.n ], [ %.sroa.422.0.copyload, %bb.e ]
  %.sroa.09.0 = phi i64 [ %.sroa.09.2, %bb.n ], [ %.sroa.021.0.copyload, %bb.e ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.am = icmp eq i64 %.sroa.021.0.copyload, 0
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.422.0.copyload, i64 noundef %.sroa.021.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !146
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.09.0.copyload10 = load i64, ptr %i.l, align 8, !alias.scope !147, !noalias !148
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload12 = load ptr, ptr %.sroa.7.0..sroa_idx11, align 8, !alias.scope !147, !noalias !148
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10.0.copyload14 = load i64, ptr %.sroa.10.0..sroa_idx13, align 8, !alias.scope !147, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !138
  %.pre.i = load ptr, ptr %.val, align 8, !noalias !138
  br label %bb.f

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !149, !noalias !138, !noundef !6
  %i.ap = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %.val3.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !150
  %i.ar = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !149, !noalias !138, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153
  store ptr %i.ac, ptr %i.e, align 8, !alias.scope !154, !noalias !155
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.as, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !154, !noalias !155
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.aq, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !154, !noalias !155
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <16 x i1> %i.ar, ptr %.sroa.617.0..sroa_idx.i, align 8, !alias.scope !154, !noalias !155
  %.sroa.819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %i.au, ptr %.sroa.819.0..sroa_idx.i, align 8, !alias.scope !154, !noalias !155
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !161
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc.i unwind label %bb.j, !noalias !138

.noexc.i:                                         ; preds = %bb.n
  %i.av = load i64, ptr %i.c, align 8, !range !8, !noalias !161, !noundef !6 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.noexc.i
  store i64 0, ptr %i.i, align 8, !alias.scope !162, !noalias !138
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !alias.scope !162, !noalias !138
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.ax, align 8, !alias.scope !162, !noalias !138
  br label %bb.z

bb.p:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164), !noalias !165
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !166, !noalias !161, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !167
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !168), !noalias !165
  %.val.i4.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !169, !noalias !161 ; 2 uses
  %i.bc = icmp eq i64 %.val.i4.i.i.i.i.i, 0
  br i1 %i.bc, label %.body.i, label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val1.i5.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !169, !noalias !161, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !170
  br label %.body.i

bb.s:                                             ; preds = %.noexc.i
  %.val.i.i.i.i.i = load i64, ptr %.sroa.819.0..sroa_idx.i, align 8, !alias.scope !171, !noalias !153, !noundef !6
  %i.be = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.be, i64 4) ; 3 uses
  %i.bf = mul i64 %.sroa.0.0.i.i.i.i.i.i, 48      ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.be, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !172
  %i.bh = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, 9) 8) #42, !noalias !172 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.t ], [ 0, %bb.s ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #45
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !161

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.bh, %bb.t ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.t ] ; 2 uses
  %i.bj = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !161
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !161
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !161
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !173
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc5.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161

.noexc5.i.i.i.i.i:                                ; preds = %bb.v
  %i.bk = load i64, ptr %i.a, align 8, !range !8, !noalias !179, !noundef !6
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not1.i.i.i.i.i.i.i, label %.loopexit1.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc5.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.w

bb.w:                                             ; preds = %.noexc6.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bm = phi ptr [ %.sroa.10.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %.noexc6.i.i.i.i.i ]
  %i.bn = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bt, %.noexc6.i.i.i.i.i ] ; 5 uses
  %i.bo = icmp samesign ult i64 %i.bn, 192153584101141163
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load i64, ptr %i.d, align 8, !range !10, !alias.scope !180, !noalias !161, !noundef !6
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i", %bb.w
  %i.br = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !179
  %i.bt = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !180, !noalias !161
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161

.noexc6.i.i.i.i.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"
  %i.bu = load i64, ptr %i.a, align 8, !range !8, !noalias !179, !noundef !6
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bu, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit1.i.i.i.i.i, label %bb.w

bb.x:                                             ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"(ptr noalias noundef align 8 dereferenceable(48) %i.a) #46, !noalias !179
  br label %.body.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !181, !noalias !161, !noundef !6
  %i.bw = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bn, i64 noundef %i.bw, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.x, !noalias !182

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.y
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !180, !noalias !161
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i", %bb.v
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #46, !noalias !161
  br label %.body.i

.loopexit1.i.i.i.i.i:                             ; preds = %.noexc6.i.i.i.i.i, %.noexc5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !183
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.pre.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !noalias !138
  %.phi.trans.insert23.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.pre.i.pre = load i64, ptr %.phi.trans.insert23.i.phi.trans.insert, align 8, !noalias !138
  br label %bb.z

bb.z:                                             ; preds = %.loopexit1.i.i.i.i.i, %bb.o
  %.val1.i.pre.i = phi i64 [ %.val1.i.pre.i.pre, %.loopexit1.i.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %.val.i.pre.i = phi ptr [ %.val.i.pre.i.pre, %.loopexit1.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1028.0.copyload) ]
  %.idx.i = mul nuw nsw i64 %.sroa.1129.0.copyload, 136
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.1028.0.copyload, i64 %.idx.i
  %i.by = icmp eq i64 %.sroa.1129.0.copyload, 0
  br i1 %i.by, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.am, %.lr.ph.i
  %.sroa.011.020.i = phi ptr [ %.sroa.1028.0.copyload, %.lr.ph.i ], [ %i.cd, %bb.am ] ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.020.i, i64 24, i1 false), !noalias !138
  store i64 0, ptr %.sroa.011.020.i, align 8, !noalias !138
  %.sroa.410.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa.0.0..sroa_idx.i, align 8, !noalias !138
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !138
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr nonnull %.val.i.pre.i, i64 %.val1.i.pre.i)
          to label %bb.af unwind label %bb.ae, !noalias !138

._crit_edge.i:                                    ; preds = %bb.am, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ce = icmp eq i64 %.val1.i.pre.i, 0
  br i1 %i.ce, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.cg, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i" ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %.val.i.pre.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.cg = add nuw i64 %.sroa.0.07.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %.val.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !188, !noalias !189 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i", label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.val1.i.i.i.i.i18.i = load ptr, ptr %i.ci, align 8, !alias.scope !188, !noalias !189, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i18.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !190
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i": ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.val.i4.i.i.i.i20.i = load i64, ptr %i.cj, align 8, !alias.scope !192, !noalias !189 ; 2 uses
  %i.ck = icmp eq i64 %.val.i4.i.i.i.i20.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i", label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.val1.i5.i.i.i.i21.i = load ptr, ptr %i.cl, align 8, !alias.scope !192, !noalias !189, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i21.i, i64 noundef %.val.i4.i.i.i.i20.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !193
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i": ; preds = %bb.ac, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"
  %i.cm = icmp eq i64 %i.cg, %.val1.i.pre.i
  br i1 %i.cm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i", %._crit_edge.i
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !10, !alias.scope !184, !noalias !138, !noundef !6 ; 2 uses
  %i.cn = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cn, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  %i.co = mul nuw i64 %.val2.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.pre.i, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !189
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.ae:                                            ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.af:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.cq = load ptr, ptr %i.bz, align 8, !alias.scope !194, !noalias !138, !nonnull !6, !noundef !6 ; 2 uses
  %i.cr = load i64, ptr %i.ca, align 8, !alias.scope !194, !noalias !138, !noundef !6 ; 4 uses
  %i.cs = load i64, ptr %i.cb, align 8, !noalias !138, !noundef !6 ; 3 uses
  %i.ct = load i64, ptr %i.g, align 8, !range !10, !noalias !138, !noundef !6
  %i.cu = sub i64 %i.ct, %i.cs
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.ag, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i34.i", !prof !11

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cs, i64 noundef %i.cr, i64 noundef 8, i64 noundef 48)
          to label %.noexc23.i unwind label %bb.ah, !noalias !138

.noexc23.i:                                       ; preds = %bb.ag
  %.pre.i.i.i = load i64, ptr %i.cb, align 8, !noalias !138
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i34.i"

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #46, !noalias !138
  br label %bb.an

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i34.i": ; preds = %.noexc23.i, %bb.af
  %i.cx = phi i64 [ %i.cs, %bb.af ], [ %.pre.i.i.i, %.noexc23.i ] ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 192153584101141163
  call void @llvm.assume(i1 %i.cy)
  %i.cz = load ptr, ptr %i.cc, align 8, !noalias !138, !nonnull !6, !noundef !6
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.cz, i64 %i.cx
  %i.db = mul i64 %i.cr, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull readonly align 8 %i.cq, i64 %i.db, i1 false), !noalias !195
  %i.dc = add i64 %i.cx, %i.cr
  store i64 %i.dc, ptr %i.cb, align 8, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.val2.i35.i = load i64, ptr %i.h, align 8, !range !10, !alias.scope !196, !noalias !138, !noundef !6 ; 2 uses
  %i.dd = icmp eq i64 %.val2.i35.i, 0
  br i1 %i.dd, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i34.i"
  %i.de = mul nuw i64 %.val2.i35.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !197
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i": ; preds = %bb.ai, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i34.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %.val.i.i37.i = load ptr, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !200, !noalias !138, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i38.i = load i64, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !200, !noalias !138, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.df = icmp eq i64 %.val1.i.i38.i, 0
  br i1 %i.df, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i", %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.dh, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i" ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i37.i, i64 %.sroa.0.07.i.i.i.i.i ; 4 uses
  %i.dh = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %.val.i.i.i.i.i.i39.i = load i64, ptr %i.dg, align 8, !alias.scope !204, !noalias !205 ; 2 uses
  %i.di = icmp eq i64 %.val.i.i.i.i.i.i39.i, 0
  br i1 %i.di, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !204, !noalias !205, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i39.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !206
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i": ; preds = %bb.aj, %.lr.ph.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !208, !noalias !205 ; 2 uses
  %i.dl = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.dl, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !208, !noalias !205, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !209
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i": ; preds = %bb.ak, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"
  %i.dn = icmp eq i64 %i.dh, %.val1.i.i38.i
  br i1 %i.dn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i.i", %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit36.i"
  %.val2.i.i.i = load i64, ptr %.sroa.011.020.i, align 8, !range !10, !alias.scope !200, !noalias !138, !noundef !6 ; 2 uses
  %i.do = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.do, label %bb.am, label %bb.al

bb.al:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i.i"
  %i.dp = mul nuw i64 %.val2.i.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i37.i, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !205
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.020.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !138
  %i.dq = icmp eq ptr %i.cd, %i.bx
  br i1 %i.dq, label %._crit_edge.i, label %bb.aa

bb.an:                                            ; preds = %bb.ah, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.cp, %bb.ae ], [ %i.cw, %bb.ah ]
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #46, !noalias !138
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #46, !noalias !138
  br label %.body.i

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i": ; preds = %bb.ad, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !138
  br label %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E.exit"

"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E.exit": ; preds = %bb.f, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %.sroa.09.2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.624.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.725.0.copyload, ptr %.sroa.717.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.s, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.1028.0.copyload, ptr %.sroa.1018.0..sroa_idx, align 8
  %.sroa.1119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.t, ptr %.sroa.1119.0..sroa_idx, align 8
  br label %bb.ao

"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit.thread": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.thread.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd26dd68f0f0dc0fdE.exit.i", %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit.thread", %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !238, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !240, !noundef !6 ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.e, 0
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !240 ; 2 uses
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge20.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !240
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !240
  store ptr %i.j, ptr %1, align 8, !alias.scope !240
  br label %._crit_edge20.i.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.g = phi ptr [ %.promoted15.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.c ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !240
  %i.i = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -768 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.i to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

._crit_edge20.i.i.i:                              ; preds = %bb.b, %._crit_edge.i.i.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !240
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.q ; 4 uses
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !238
  %i.t = getelementptr i8, ptr %i.r, i64 -40
  %.val = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr i8, ptr %i.r, i64 -32
  %.val3 = load i64, ptr %i.u, align 8, !noundef !6 ; 10 uses
  %i.v = getelementptr i8, ptr %i.r, i64 -16
  %.val4 = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.w = getelementptr i8, ptr %i.r, i64 -8
  %.val5 = load i64, ptr %i.w, align 8            ; 8 uses
  %i.x = icmp slt i64 %.val3, 0
  br i1 %i.x, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %._crit_edge20.i.i.i
  %i.y = icmp eq i64 %.val3, 0
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !241
  %i.z = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val3, i64 noundef range(i64 1, 9) 1) #42, !noalias !241 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.invoke.i, label %bb.g

bb.e:                                             ; preds = %.invoke.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ac, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !242
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit": ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.z, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val3, i1 false), !noalias !243
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.ad = icmp slt i64 %.val5, 0
  br i1 %i.ad, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i: ; preds = %bb.g
  %i.ae = icmp eq i64 %.val5, 0
  br i1 %i.ae, label %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc1d495cb97e9e378E.exit", label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !244
  %i.af = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val5, i64 noundef range(i64 1, 9) 1) #42, !noalias !244 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.invoke.i, label %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc1d495cb97e9e378E.exit"

.invoke.i:                                        ; preds = %bb.h, %bb.g, %bb.d, %._crit_edge20.i.i.i
  %.sroa.6.0 = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge20.i.i.i ], [ %.sroa.10.0.i.i.i, %bb.g ], [ %.sroa.10.0.i.i.i, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge20.i.i.i ], [ %.val3, %bb.g ], [ %.val3, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ 0, %._crit_edge20.i.i.i ], [ 0, %bb.g ], [ 1, %bb.h ], [ 1, %bb.d ]
  %i.ai = phi i64 [ %.val3, %._crit_edge20.i.i.i ], [ %.val5, %bb.g ], [ %.val5, %bb.h ], [ %.val3, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ah, i64 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.cont.i unwind label %bb.e, !noalias !245

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc1d495cb97e9e378E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i, %bb.h
  %.sroa.10.0.i.i12.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i ], [ %i.af, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i12.i, ptr nonnull readonly align 1 %.val4, i64 %.val5, i1 false), !noalias !246
  store i64 %.val3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val5, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i.i12.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val5, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc1d495cb97e9e378E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN109_$LT$prometheus..histogram..HistogramOpts$u20$as$u20$core..convert..From$LT$prometheus..metrics..Opts$GT$$GT$4from17hd4e1cbab9eae1b67E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !254
  %i.a = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, 9) 8) #42, !noalias !254 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 88, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..metrics..Opts$GT$17hd99e9afc6d51d6cbE"(ptr noalias noundef align 8 dereferenceable(168) %1) #46
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @2, i64 88, i1 false), !noalias !255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 11, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 11, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus17process_collector16ProcessCollector8for_self17hab9b02288a1e1827E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [112 x i8], align 8               ; 9 uses
  %i.c = alloca [112 x i8], align 8               ; 14 uses
  %i.d = alloca [168 x i8], align 8               ; 16 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [168 x i8], align 8               ; 7 uses
  %i.p = alloca [168 x i8], align 8               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [480 x i8], align 8               ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [168 x i8], align 8               ; 8 uses
  %i.y = alloca [168 x i8], align 8               ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [168 x i8], align 8              ; 8 uses
  %i.ae = alloca [168 x i8], align 8              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [168 x i8], align 8              ; 8 uses
  %i.ak = alloca [168 x i8], align 8              ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [168 x i8], align 8              ; 8 uses
  %i.aq = alloca [168 x i8], align 8              ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [168 x i8], align 8              ; 8 uses
  %i.aw = alloca [168 x i8], align 8              ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [168 x i8], align 8              ; 8 uses
  %i.bc = alloca [168 x i8], align 8              ; 10 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 16 uses
  %i.bf = alloca [24 x i8], align 8               ; 13 uses
  %i.bg = tail call noundef i32 @getpid() #42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !409
  store i64 0, ptr %i.bf, align 8, !alias.scope !410, !noalias !409
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !410, !noalias !409
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !410, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !409
  store i64 0, ptr %i.be, align 8, !noalias !409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8, !noalias !409
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bi, align 8, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !409
  invoke fastcc void @_ZN10prometheus7metrics4Opts3new17h2bdaa1e24b08d9f4E(ptr noalias noundef align 8 captures(address) dereferenceable(168) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 48)
          to label %bb.c unwind label %bb.b, !noalias !409

.body42.thread.i:                                 ; preds = %bb.el, %bb.r, %.body.i.i, %bb.b
  %.pn13.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.bj, %bb.b ], [ %i.hi, %bb.el ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cg, %bb.r ]
  call fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E"(ptr noalias noundef align 8 dereferenceable(24) %i.be) #46, !noalias !409
  br label %bb.em

.body42.i:                                        ; preds = %.body38.i
  call fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E"(ptr noalias noundef align 8 dereferenceable(24) %i.be) #46, !noalias !409
  br i1 %.sroa.06.1.i, label %bb.em, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !409
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.d unwind label %bb.el, !noalias !409

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %.val.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !415, !noalias !409 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !415, !noalias !409, !nonnull !6, !noundef !6
end_hunk_0
begin_hunk_1_@_ZN10prometheus5timer14ensure_updater17h5f89db31cab0c6b0E:bb.a
  %i.ce = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #42, !noalias !1022 ; 9 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ac, label %bb.ah, !prof !11

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc43.i.i unwind label %bb.ad, !noalias !1013

.noexc43.i.i:                                     ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h7361105333ceb6e1E"(ptr noalias noundef align 8 dereferenceable(32) %i.cd)
          to label %bb.ba unwind label %bb.ae, !noalias !1013

bb.ae:                                            ; preds = %bb.ad
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !1013
  unreachable

bb.af:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.au, %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1013
  store ptr %i.ce, ptr %i.f, align 8, !noalias !1013
  %i.cj = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1013
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1013
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cb, ptr %i.cl, align 8, !noalias !1013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1013
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.ce, ptr %i.cm, align 8, !noalias !1013
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !1013, !noundef !6 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.co, null
  br i1 %.not.i.i5, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8 %i.cp)
          to label %bb.al unwind label %bb.az, !noalias !1013

bb.al:                                            ; preds = %bb.ak, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1013
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1023
  %i.cq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #42, !noalias !1023 ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.am, label %bb.ap, !prof !11

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc45.i.i unwind label %bb.an, !noalias !1013

.noexc45.i.i:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr169drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$prometheus..timer..ensure_updater..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbd3f3a422ba7e536E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #46
          to label %.thread34.i.i unwind label %bb.ao, !noalias !1013

bb.ao:                                            ; preds = %bb.an
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !1013
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1013
  %i.cu = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.ar unwind label %bb.aw, !noalias !1013 ; 2 uses

bb.aq:                                            ; preds = %bb.ar
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.cw = extractvalue { ptr, i64 } %i.cu, 0
  %i.cx = extractvalue { ptr, i64 } %i.cu, 1
  %i.cy = invoke { i64, ptr } @_ZN3std3sys6thread4unix6Thread3new17h440582846834072dE(i64 noundef %.sroa.02.0.i.i, ptr noalias noundef readonly align 1 captures(address, read_provenance) %i.cw, i64 %i.cx, ptr noundef nonnull align 1 %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
          to label %bb.as unwind label %bb.aq, !noalias !1013 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1      ; 3 uses
  %i.db = trunc nuw i64 %i.cz to i1
  br i1 %i.db, label %bb.at, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69150d139267f1abE.exit"

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1013
  %i.dc = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !1024
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.au, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i.i"

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i.i" unwind label %bb.ag, !noalias !1013

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i.i": ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1013
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.de = load ptr, ptr %i.j, align 8, !alias.scope !1029, !noalias !1013, !nonnull !6, !noundef !6
  %i.df = atomicrmw add ptr %i.de, i64 -1 release, align 8, !noalias !1030
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !1013
  br label %bb.bd

bb.aw:                                            ; preds = %bb.ap
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E"(ptr nonnull %i.cq, ptr nonnull @163) #46
          to label %.thread34.i.i unwind label %bb.ax, !noalias !1013

bb.ax:                                            ; preds = %.noexc52.i.i, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.z
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !1013
  unreachable

.thread34.i.i:                                    ; preds = %bb.az, %bb.aw, %bb.aq, %bb.an
  %.pn37.i.i = phi { ptr, i32 } [ %i.cs, %bb.an ], [ %i.dl, %bb.az ], [ %i.cv, %bb.aq ], [ %i.dh, %bb.aw ] ; 2 uses
  %i.dj = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !noalias !1031
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ay, label %.critedge.i.i

bb.ay:                                            ; preds = %.thread34.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %.critedge.i.i unwind label %bb.ax, !noalias !1013

bb.az:                                            ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr169drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$prometheus..timer..ensure_updater..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbd3f3a422ba7e536E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #46
          to label %.thread34.i.i unwind label %bb.ax, !noalias !1013

bb.ba:                                            ; preds = %bb.ad
  %i.dm = atomicrmw add ptr %i.cb, i64 -1 release, align 8, !noalias !1032
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.bb, label %.noexc52.i.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc52.i.i unwind label %bb.ax, !noalias !1013

.noexc52.i.i:                                     ; preds = %bb.bb, %bb.ba
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h026cb879cbebff88E"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #46
          to label %.critedge.i.i unwind label %bb.ax, !noalias !1013

.thread14.i.i:                                    ; preds = %.thread21.i.i, %bb.k, %bb.j
  %eh.lpad-body4119.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread21.i.i ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.bc [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.bc:                                            ; preds = %.thread14.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1033
  br label %common.resume

common.resume:                                    ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i", %bb.bk, %bb.be, %.critedge.i.i, %bb.z, %.thread14.i.i, %.thread14.i.i, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i" ], [ %.pn30.pn.i.i, %.critedge.i.i ], [ %i.do, %bb.be ], [ %eh.lpad-body4119.i.i, %.thread14.i.i ], [ %eh.lpad-body4119.i.i, %.thread14.i.i ], [ %eh.lpad-body4119.i.i, %bb.bc ], [ %.pn30.pn.i.i, %bb.z ], [ %.pn.i.i, %bb.bk ]
  resume { ptr, i32 } %common.resume.op

bb.bd:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i.i", %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1013
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1034
  store ptr %i.da, ptr %i.k, align 8, !noalias !1034
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 43, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #45
          to label %bb.bf unwind label %bb.be, !noalias !1034

bb.be:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h05baf183f9a1ee21E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #46
          to label %common.resume unwind label %bb.bg, !noalias !1034

bb.bf:                                            ; preds = %bb.bd
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !1034
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69150d139267f1abE.exit": ; preds = %bb.as
  %i.dq = ptrtoint ptr %i.da to i64
  %i.dr = load ptr, ptr %i.j, align 8, !noalias !1013, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  store ptr %i.dr, ptr %i.o, align 8, !alias.scope !1034
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr %i.ce, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1034
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %i.dq, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1034
  invoke void @"_ZN72_$LT$std..sys..thread..unix..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h558a9315bdd03fb9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx)
          to label %"_ZN4core3ptr51drop_in_place$LT$std..sys..thread..unix..Thread$GT$17h65c7dad101195cd3E.exit.i.i" unwind label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69150d139267f1abE.exit"
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.dt = load ptr, ptr %i.o, align 8, !alias.scope !1041, !nonnull !6, !noundef !6
  %i.du = atomicrmw add ptr %i.dt, i64 -1 release, align 8, !noalias !1042
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.bi, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i"

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i" unwind label %bb.bn

"_ZN4core3ptr51drop_in_place$LT$std..sys..thread..unix..Thread$GT$17h65c7dad101195cd3E.exit.i.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69150d139267f1abE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.dw = load ptr, ptr %i.o, align 8, !alias.scope !1047, !nonnull !6, !noundef !6
  %i.dx = atomicrmw add ptr %i.dw, i64 -1 release, align 8, !noalias !1048
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bj, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit3.i.i"

bb.bj:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$std..sys..thread..unix..Thread$GT$17h65c7dad101195cd3E.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit3.i.i" unwind label %bb.bl

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i": ; preds = %bb.bl, %bb.bi, %bb.bh
  %.pn.i.i = phi { ptr, i32 } [ %i.ec, %bb.bl ], [ %i.ds, %bb.bi ], [ %i.ds, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %i.dz = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1051, !nonnull !6, !noundef !6
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !1052
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.bk, label %common.resume

bb.bk:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.6.0..sroa_idx)
          to label %common.resume unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i.i"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit3.i.i": ; preds = %bb.bj, %"_ZN4core3ptr51drop_in_place$LT$std..sys..thread..unix..Thread$GT$17h65c7dad101195cd3E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.ed = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1055, !nonnull !6, !noundef !6
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !1056
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.bm, label %"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h54216b9d61dd23beE.exit"

bb.bm:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit3.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.6.0..sroa_idx)
  br label %"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h54216b9d61dd23beE.exit"

bb.bn:                                            ; preds = %bb.bk, %bb.bi
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h54216b9d61dd23beE.exit": ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit3.i.i", %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6757022b56d77857E.exit", %"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h54216b9d61dd23beE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus7encoder4text11TextEncoder11encode_impl17h4c147ce2d6f4a536E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 3 uses
  %i.o = alloca [32 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [1 x i8], align 1                ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %.idx = mul nuw nsw i64 %3, 80
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.al = icmp eq i64 %3, 0
  br i1 %i.al, label %._crit_edge632, label %.lr.ph631

.lr.ph631:                                        ; preds = %bb.a
  %.sroa.0214.1627 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.6.0..sroa_idx336 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 19 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.5.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.42.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i314 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i315 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
end_hunk_1
begin_hunk_2_@_ZN10prometheus8registry8Registry8register17h1f532ff5185040d5E:bb.a

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %.noexc74.i
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.4139.0.copyload.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.dh = shl i64 %.sroa.4139.0.copyload.i, 3
  %i.di = and i64 %i.dh, -16                      ; 2 uses
  %i.dj = add i64 %i.di, 16                       ; 2 uses
  %i.dk = add nsw i64 %.sroa.4139.0.copyload.i, 17
  %i.dl = add i64 %i.dk, %i.dj                    ; 3 uses
  %i.dm = icmp uge i64 %i.dl, %i.dj
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp ult i64 %i.dl, 9223372036854775793
  call void @llvm.assume(i1 %i.dn)
  %i.do = sub nuw nsw i64 -16, %i.di
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0138.0.copyload.i, i64 %i.do
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %.noexc74.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.dl, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %.noexc74.i ] ; 5 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %.noexc74.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %.noexc74.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0138.0.copyload.i, i64 16
  %i.dr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !2339, !noundef !6
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = add i64 %.sroa.5141.0.copyload.i, 1
  %i.dx = lshr i64 %i.dw, 1
  %.sroa.0.0.i.i.i = select i1 %i.dv, i64 %.sroa.5141.0.copyload.i, i64 %i.dx ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !2340, !noundef !6
  %i.ea = icmp ugt i64 %.sroa.0.0.i.i.i, %i.dz
  br i1 %i.ea, label %bb.s, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i", !prof !11

bb.s:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.ec = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0f17c4ed12d1935bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" unwind label %bb.v, !noalias !2341 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i": ; preds = %bb.s, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"
  %i.ed = icmp eq i64 %.sroa.5141.0.copyload.i, 0
  br i1 %i.ed, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.ee = add i64 %i.ei, -1                       ; 2 uses
  %i.ef = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.eg = and i16 %i.ef, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i", %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i"
  %i.ei = phi i64 [ %i.ee, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.5141.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ]
  %i.ej = phi i16 [ %i.eg, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %i.ds, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.lcssa812.i.i.i.i.i.i.i.i90 = phi ptr [ %.lcssa811.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0138.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.lcssa15.i.i.i.i.i.i.i.i89 = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %i.dq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ek = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i.i.i89, %.lr.ph ] ; 2 uses
  %i.el = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa812.i.i.i.i.i.i.i.i90, %.lr.ph ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ek, align 16, !noalias !2342
  %i.em = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -128 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.em to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i1.i.i = or i1 %i.dg, %i.eq
  br i1 %or.cond.i.i.i.i.i1.i.i, label %bb.bh, label %.body.sink.split.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph
  %.lcssa14.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i.i.i89, %.lr.ph ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa811.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa812.i.i.i.i.i.i.i.i90, %.lr.ph ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ej, %.lr.ph ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.er = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.es = zext nneg i16 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds [8 x i8], ptr %.lcssa811.i.i.i.i.i.i.i.i, i64 %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -8
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !2343, !noundef !6
  %i.ex = invoke fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b937d6ada5a72b2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df, i64 noundef %i.ew)
          to label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" unwind label %bb.t, !noalias !2344 ; 0 uses

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i"
  %i.ey = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond7.i.i.i.i.i.i.i = or i1 %i.dg, %i.ey
  br i1 %or.cond7.i.i.i.i.i.i.i, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i", label %bb.u

bb.u:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.i) #42, !noalias !2345
  br label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i"

.body.sink.split.i.i.i:                           ; preds = %bb.v, %bb.t
  %eh.lpad-body27.ph.i.i.i = phi { ptr, i32 } [ %i.ez, %bb.v ], [ %i.ep, %bb.t ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.i) #42, !noalias !2341
  br label %bb.bh

bb.v:                                             ; preds = %bb.s
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.dg, %i.fa
  br i1 %or.cond.i.i.i, label %bb.bh, label %.body.sink.split.i.i.i

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i": ; preds = %bb.u, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %.val5.i75.i = load ptr, ptr %i.ca, align 8, !alias.scope !2347, !nonnull !6, !noundef !6 ; 8 uses
  %.val6.i.i = load i64, ptr %i.cg, align 8, !alias.scope !2347, !noundef !6 ; 4 uses
  %.sroa.0.04.i.i.i.i = and i64 %.val6.i.i, %i.cd ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !2348
  %i.fc = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.fd, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !27

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i", %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.04.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ]
  %i.fe = phi i64 [ %i.ff, %.lr.ph.i.i.i.i ], [ 0, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ]
  %i.ff = add i64 %i.fe, 16                       ; 2 uses
  %i.fg = add i64 %i.ff, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.fg, %.val6.i.i  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.fh, align 1, !noalias !2348
  %i.fi = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.fj, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !28

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i"
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.fd, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ], [ %i.fj, %.lr.ph.i.i.i.i ]
  %i.fk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.fl = zext nneg i16 %i.fk to i64
  %i.fm = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.fl
  %i.fn = and i64 %i.fm, %.val6.i.i               ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !2349, !noundef !6 ; 2 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val5.i75.i, align 16, !noalias !2349
  %i.fr = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.fs = bitcast <16 x i1> %i.fr to i16          ; 2 uses
  %i.ft = icmp ne i16 %i.fs, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fs, i1 true)
  %i.fv = zext nneg i16 %i.fu to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %i.fv
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !2349
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i
  %i.fw = phi i8 [ %.pre.i.i.i, %bb.w ], [ %i.fp, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.fv, %bb.w ], [ %i.fn, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.fy = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.fz = and i64 %i.fy, %.val6.i.i
  store i8 %i.cf, ptr %i.fx, align 1, !noalias !2349
  %i.ga = getelementptr i8, ptr %.val5.i75.i, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.cf, ptr %i.gb, align 1, !noalias !2349
  %i.gc = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.gd = getelementptr inbounds [24 x i8], ptr %.val5.i75.i, i64 %i.gc ; 3 uses
  %i.ge = and i8 %i.fw, 1
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.gd, i64 -24
  store i64 %.sroa.0.0.lcssa.i, ptr %i.gg, align 8, !noalias !2350
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gd, i64 -16
  store ptr %2, ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !2350
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.gd, i64 -8
  store ptr %3, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !2350
  %i.gh = load <2 x i64>, ptr %i.db, align 8, !alias.scope !2347
  %i.gi = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gf, i64 0
  %i.gj = sub <2 x i64> %i.gh, %i.gi
  store <2 x i64> %i.gj, ptr %i.db, align 8, !alias.scope !2347
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2307
  br label %bb.bj

bb.y:                                             ; preds = %.lr.ph.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2307
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2304
  %.val54.i = load ptr, ptr %i.k, align 8, !noalias !2307 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val55.i = load i64, ptr %i.gk, align 8, !noalias !2307, !noundef !6 ; 4 uses
  %i.gl = icmp eq i64 %.val55.i, 0
  br i1 %i.gl, label %bb.aa, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i: ; preds = %bb.y
  %i.gm = shl i64 %.val55.i, 3
  %i.gn = icmp slt i64 %.val55.i, 2305843009213693950
  call void @llvm.assume(i1 %i.gn)
  %i.go = and i64 %i.gm, -16                      ; 2 uses
  %i.gp = add i64 %i.go, 16                       ; 2 uses
  %i.gq = add nsw i64 %.val55.i, 17
  %i.gr = add i64 %i.gq, %i.gp                    ; 4 uses
  %i.gs = icmp uge i64 %i.gr, %i.gp
  %i.gt = icmp ult i64 %i.gr, 9223372036854775793
  call void @llvm.assume(i1 %i.gs)
  call void @llvm.assume(i1 %i.gt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.i) ]
  %i.gu = icmp eq i64 %i.gr, 0
  br i1 %i.gu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i
  %i.gv = sub nuw nsw i64 -16, %i.go
  %i.gw = getelementptr inbounds i8, ptr %.val54.i, i64 %i.gv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !2310
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2307
  %i.gx = load ptr, ptr %3, align 8, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.gx, null
  br i1 %.not.i77.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.gx(ptr noundef nonnull align 1 %2)
          to label %bb.ac unwind label %bb.ad, !noalias !2310

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !10, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !range !26, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.hc = icmp ult i64 %i.hb, -9223372036854775807
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp eq i64 %i.gz, 0
  br i1 %i.hd, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) %i.hb) #42, !noalias !2310
  br label %bb.bj

bb.ad:                                            ; preds = %bb.ab
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !10, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !range !26, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.hj = icmp ult i64 %i.hi, -9223372036854775807
  call void @llvm.assume(i1 %i.hj)
  %i.hk = icmp eq i64 %i.hg, 0
  br i1 %i.hk, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) %i.hi) #42, !noalias !2310
  br label %.body

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6a8e46e8bba39675E.exit.i": ; preds = %.lr.ph.i.i.i
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2304
  br label %bb.ah

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %i.hl = load i64, ptr %i.an, align 8, !alias.scope !2353, !noundef !6
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i", label %bb.ae

bb.ae:                                            ; preds = %select.unfold.i
  %.val.i78.i = load i64, ptr %i.ao, align 8, !alias.scope !2353, !noundef !6
  %.val5.i79.i = load i64, ptr %i.ap, align 8, !alias.scope !2353, !noundef !6
  %i.hn = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb4be9083b1d73bdfE(i64 %.val.i78.i, i64 %.val5.i79.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax), !noalias !2354 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %i.ho = lshr i64 %i.hn, 57
  %i.hp = trunc nuw nsw i64 %i.ho to i8
  %i.hq = load i64, ptr %i.aq, align 8, !alias.scope !2358, !noundef !6 ; 2 uses
  %i.hr = load ptr, ptr %i.am, align 8, !alias.scope !2358, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i80.i = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %.sroa.0.15.vec.insert.i.i.i81.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i80.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.hs, align 8, !alias.scope !2359, !noalias !2310 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val.i.i.i.i82.i = load ptr, ptr %i.ht, align 8, !alias.scope !2359, !noalias !2310, !nonnull !6
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.9.0.i.i.i83.i = phi i64 [ 0, %bb.ae ], [ %i.il, %bb.ag ]
  %.pn.i.i84.i = phi i64 [ %i.hn, %bb.ae ], [ %i.im, %bb.ag ]
  %.sroa.01.0.i.i.i85.i = and i64 %.pn.i.i84.i, %i.hq ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.01.0.i.i.i85.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.hu, align 1, !noalias !2360 ; 2 uses
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i81.i
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i88.i, label %.lr.ph.i.i86.i

.lr.ph.i.i86.i:                                   ; preds = %bb.af, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i"
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.ik, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i" ], [ %i.hw, %bb.af ] ; 3 uses
  %i.hx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64
  %i.hz = add i64 %.sroa.01.0.i.i.i85.i, %i.hy
  %i.ia = and i64 %i.hz, %i.hq
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [32 x i8], ptr %i.hr, i64 %i.ib ; 3 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 -16
  %.val4.i.i.i.i = load i64, ptr %i.id, align 8, !noalias !2361, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i, %.val4.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i", !prof !19

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.i.i.i": ; preds = %.lr.ph.i.i86.i
  %i.ie = getelementptr i8, ptr %i.ic, i64 -24
  %.val3.i.i.i92.i = load ptr, ptr %i.ie, align 8, !noalias !2361, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i82.i, ptr nonnull readonly align 1 %.val3.i.i.i92.i, i64 %.val1.i.i.i.i.i), !alias.scope !2362, !noalias !2361
  %i.if = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.if, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i", !prof !12

._crit_edge.i.i88.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i", %bb.af
  %i.ig = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ih = bitcast <16 x i1> %i.ig to i16
  %i.ii = icmp eq i16 %i.ih, 0
  br i1 %i.ii, label %bb.ag, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.i.i.i", %.lr.ph.i.i86.i
  %i.ij = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.ik = and i16 %i.ij, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i87.i = icmp eq i16 %i.ik, 0
  br i1 %.not.i.not.i.i87.i, label %._crit_edge.i.i88.i, label %.lr.ph.i.i86.i

bb.ag:                                            ; preds = %._crit_edge.i.i88.i
  %i.il = add i64 %.sroa.9.0.i.i.i83.i, 16        ; 2 uses
  %i.im = add i64 %.sroa.01.0.i.i.i85.i, %i.il
  br label %bb.af

bb.ah:                                            ; preds = %bb.bb, %bb.ba, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6a8e46e8bba39675E.exit.i"
  %i.in = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.in, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit93.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.io = shl nuw i64 %.sroa.0.0.copyload.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2363
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit93.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.i.i.i"
  %i.ip = getelementptr inbounds i8, ptr %i.ic, i64 -8
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !2310, !noundef !6
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.is = load i64, ptr %i.ir, align 8, !noalias !2310, !noundef !6
  %.not35.i = icmp eq i64 %i.iq, %i.is
  br i1 %.not35.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i", label %bb.aj

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i": ; preds = %._crit_edge.i.i88.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.i", %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2307
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2310

bb.aj:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2307
  store ptr %i.i, ptr %i.g, align 8, !noalias !2307
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7950fe89c3a6c392E", ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !2307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2364
  store ptr @115, ptr %i.b, align 8, !noalias !2365
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2365
  %.sroa.5129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.5129.0..sroa_idx.i, align 8, !noalias !2365
  %.sroa.6130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6130.0..sroa_idx.i, align 8, !noalias !2365
  %.sroa.7131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7131.0..sroa_idx.i, align 8, !noalias !2365
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2310

bb.ak:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i"
  %i.it = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.iu = load i64, ptr %i.it, align 8, !noalias !2310, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %.val.i95.i = load i64, ptr %i.ao, align 8, !alias.scope !2368, !noundef !6
  %.val9.i.i = load i64, ptr %i.ap, align 8, !alias.scope !2368, !noundef !6
  %i.iv = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb4be9083b1d73bdfE(i64 %.val.i95.i, i64 %.val9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !noalias !2369 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  %i.iw = load i64, ptr %i.ar, align 8, !alias.scope !2372, !noundef !6
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %bb.al, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i", !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.iy = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h27055644a9d4e38bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i" unwind label %bb.au, !noalias !2373 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i": ; preds = %bb.al, %bb.ak
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !2374, !nonnull !6, !noundef !6 ; 8 uses
  %.val7.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !2374, !noundef !6 ; 4 uses
  %i.iz = lshr i64 %i.iv, 57
  %i.ja = trunc nuw nsw i64 %i.iz to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ja, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val1.i.i.i.i96.i = load i64, ptr %i.as, align 8, !alias.scope !2375, !noalias !2307 ; 2 uses
  %.val.i.i.i.i97.i = load ptr, ptr %i.at, align 8, !alias.scope !2375, !noalias !2307, !nonnull !6 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i"
  %.pn.i.i.i.i = phi i64 [ %i.iv, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i" ], [ %i.ka, %bb.ao ]
  %.sroa.6.0.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i" ], [ %.sroa.6.120.i.i.i.i, %bb.ao ]
  %.sroa.01.0.i.i.i98.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i" ], [ %.sroa.01.122.i.i.i.i, %bb.ao ]
  %i.jb = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hfcde3d7c998d715cE.exit.i.i.i" ], [ %i.jz, %bb.ao ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val7.i.i.i ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.jc, align 1, !noalias !2376 ; 3 uses
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %.not25.i.i.i.i = icmp eq i16 %i.je, 0
  br i1 %.not25.i.i.i.i, label %._crit_edge.i.i.i102.i, label %.lr.ph.i.i.i99.i

.lr.ph.i.i.i99.i:                                 ; preds = %bb.am, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i"
  %.sroa.05.026.i.i.i.i = phi i16 [ %i.jp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i" ], [ %i.je, %bb.am ] ; 3 uses
  %i.jf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = add i64 %.sroa.0.017.i.i.i.i, %i.jg
  %i.ji = and i64 %i.jh, %.val7.i.i.i
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds [32 x i8], ptr %.val.i.i.i, i64 %i.jj ; 3 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -16
  %.val4.i.i.i100.i = load i64, ptr %i.jl, align 8, !noalias !2377, !noundef !6
  %.not.i.i.i.i.i.i.i.i101.i = icmp eq i64 %.val1.i.i.i.i96.i, %.val4.i.i.i100.i
  br i1 %.not.i.i.i.i.i.i.i.i101.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i", !prof !19

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.i.i.i": ; preds = %.lr.ph.i.i.i99.i
  %i.jm = getelementptr i8, ptr %i.jk, i64 -24
  %.val3.i.i.i107.i = load ptr, ptr %i.jm, align 8, !noalias !2377, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i.i.i108.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i97.i, ptr nonnull readonly align 1 %.val3.i.i.i107.i, i64 %.val1.i.i.i.i96.i), !alias.scope !2378, !noalias !2377
  %i.jn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i108.i, 0
  br i1 %i.jn, label %bb.ar, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i", !prof !12

._crit_edge.i.i.i102.i:                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i", %bb.am
  %.not13.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i98.i, 1
  br i1 %.not13.i.i.i.i, label %.thread.i.i.i.i, label %bb.an, !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.i.i.i", %.lr.ph.i.i.i99.i
  %i.jo = add i16 %.sroa.05.026.i.i.i.i, -1
  %i.jp = and i16 %i.jo, %.sroa.05.026.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i102.i, label %.lr.ph.i.i.i99.i

bb.an:                                            ; preds = %._crit_edge.i.i.i102.i
  %i.jq = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, zeroinitializer
  %i.jr = bitcast <16 x i1> %i.jq to i16          ; 2 uses
  %.not.not.i.not.i.i.i103.i = icmp eq i16 %i.jr, 0 ; 2 uses
  %i.js = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jr, i1 true)
  %i.jt = zext nneg i16 %i.js to i64
  %.sroa.6.0.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i103.i, i64 undef, i64 %i.jt
  %i.ju = add i64 %.sroa.6.0.i.i.i.i.i, %.sroa.0.017.i.i.i.i
  %i.jv = and i64 %i.ju, %.val7.i.i.i
  br i1 %.not.not.i.not.i.i.i103.i, label %bb.ao, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.an, %._crit_edge.i.i.i102.i
  %.sroa.6.121.i.i.i.i = phi i64 [ %i.jv, %bb.an ], [ %.sroa.6.0.i.i.i.i, %._crit_edge.i.i.i102.i ] ; 3 uses
  %i.jw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.jx = bitcast <16 x i1> %i.jw to i16
  %i.jy = icmp eq i16 %i.jx, 0
  br i1 %i.jy, label %bb.ao, label %bb.ap, !prof !11

bb.ao:                                            ; preds = %.thread.i.i.i.i, %bb.an
  %.sroa.01.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.an ]
  %.sroa.6.120.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.an ]
  %i.jz = add i64 %i.jb, 16                       ; 2 uses
  %i.ka = add i64 %i.jz, %.sroa.0.017.i.i.i.i
  br label %bb.am

bb.ap:                                            ; preds = %.thread.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.6.121.i.i.i.i
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !2379, !noundef !6 ; 2 uses
  %i.kd = icmp sgt i8 %i.kc, -1
  br i1 %i.kd, label %bb.aq, label %bb.at, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %.val2.i.i.i.i106.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !2379
  %i.ke = icmp slt <16 x i8> %.val2.i.i.i.i106.i, zeroinitializer
  %i.kf = bitcast <16 x i1> %i.ke to i16          ; 2 uses
  %i.kg = icmp ne i16 %i.kf, 0
  call void @llvm.assume(i1 %i.kg)
  %i.kh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kf, i1 true)
  %i.ki = zext nneg i16 %i.kh to i64              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ki
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !2380
  br label %bb.at

bb.ar:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fc4d9ae5d3a532fE.exit.i.i.i"
  %i.kj = getelementptr inbounds i8, ptr %i.jk, i64 -8
  store i64 %i.iu, ptr %i.kj, align 8, !noalias !2373
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %.val.i10.i.i = load i64, ptr %i.f, align 8, !alias.scope !2382, !noalias !2307 ; 2 uses
  %i.kk = icmp eq i64 %.val.i10.i.i, 0
  br i1 %i.kk, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i97.i, i64 noundef %.val.i10.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2383
  br label %bb.aw

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.kl = phi i8 [ %.pre.i.i, %bb.aq ], [ %i.kc, %bb.ap ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.ki, %bb.aq ], [ %.sroa.6.121.i.i.i.i, %bb.ap ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.kn = and i8 %i.kl, 1
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.kq = and i64 %i.kp, %.val7.i.i.i
  store i8 %i.ja, ptr %i.km, align 1, !noalias !2380
  %i.kr = getelementptr i8, ptr %.val.i.i.i, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  store i8 %i.ja, ptr %i.ks, align 1, !noalias !2380
  %i.kt = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !2385
  %i.ku = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ko, i64 0
  %i.kv = sub <2 x i64> %i.kt, %i.ku
  store <2 x i64> %i.kv, ptr %i.ar, align 8, !alias.scope !2385
  %i.kw = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.kx = getelementptr inbounds [32 x i8], ptr %.val.i.i.i, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2386
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds i8, ptr %i.kx, i64 -8
  store i64 %i.iu, ptr %.sroa.4.0..sroa_idx.i104.i, align 8, !noalias !2387
  br label %bb.aw

bb.au:                                            ; preds = %bb.al
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  %.val.i11.i.i = load i64, ptr %i.f, align 8, !alias.scope !2389, !noalias !2307 ; 2 uses
  %i.la = icmp eq i64 %.val.i11.i.i, 0
  br i1 %i.la, label %.body109.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val1.i12.i.i = load ptr, ptr %i.at, align 8, !alias.scope !2389, !noalias !2307, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i, i64 noundef %.val.i11.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2390
  br label %.body109.i

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2307
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !2310, !noundef !6
  %i.ld = invoke fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b937d6ada5a72b2E"(ptr noalias noundef align 8 dereferenceable(48) %i.k, i64 noundef %i.lc)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2310

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ld, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2307
  store ptr %i.ax, ptr %i.d, align 8, !noalias !2307
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E", ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !2307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2391
  store ptr @112, ptr %i.a, align 8, !noalias !2392
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4133.0..sroa_idx.i, align 8, !noalias !2392
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5134.0..sroa_idx.i, align 8, !noalias !2392
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6135.0..sroa_idx.i, align 8, !noalias !2392
  %.sroa.7136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7136.0..sroa_idx.i, align 8, !noalias !2392
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2310

bb.az:                                            ; preds = %bb.ax
  %i.le = load i64, ptr %i.lb, align 8, !noalias !2310, !noundef !6
  %i.lf = add i64 %i.le, %.sroa.0.0194.i          ; 2 uses
  %i.lg = icmp eq ptr %i.aw, %i.af
  br i1 %i.lg, label %._crit_edge.i, label %bb.h

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2393
  br label %bb.ah

bb.bb:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2393
  br label %bb.ah

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit93.i": ; preds = %bb.ai, %bb.ah
  %.val52.i = load ptr, ptr %i.k, align 8, !noalias !2307 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val53.i = load i64, ptr %i.lh, align 8, !noalias !2307, !noundef !6 ; 4 uses
  %i.li = icmp eq i64 %.val53.i, 0
  br i1 %i.li, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i113.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i113.i: ; preds = %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit93.i"
  %i.lj = shl i64 %.val53.i, 3
  %i.lk = icmp slt i64 %.val53.i, 2305843009213693950
  call void @llvm.assume(i1 %i.lk)
  %i.ll = and i64 %i.lj, -16                      ; 2 uses
  %i.lm = add i64 %i.ll, 16                       ; 2 uses
  %i.ln = add nsw i64 %.val53.i, 17
  %i.lo = add i64 %i.ln, %i.lm                    ; 4 uses
  %i.lp = icmp uge i64 %i.lo, %i.lm
  %i.lq = icmp ult i64 %i.lo, 9223372036854775793
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.assume(i1 %i.lq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i) ]
  %i.lr = icmp eq i64 %i.lo, 0
  br i1 %i.lr, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i", label %bb.bc

bb.bc:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i113.i
  %i.ls = sub nuw nsw i64 -16, %i.ll
  %i.lt = getelementptr inbounds i8, ptr %.val52.i, i64 %i.ls
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lt, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !2310
  br label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i"

"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i": ; preds = %bb.bc, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i113.i, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit93.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2307
  %i.lu = load ptr, ptr %3, align 8, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %.not.i115.i = icmp eq ptr %i.lu, null
  br i1 %.not.i115.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i"
  invoke void %i.lu(ptr noundef nonnull align 1 %2)
          to label %bb.be unwind label %bb.bf, !noalias !2310

bb.be:                                            ; preds = %bb.bd, %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit114.i"
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !10, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !range !26, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.lz = icmp ult i64 %i.ly, -9223372036854775807
  call void @llvm.assume(i1 %i.lz)
  %i.ma = icmp eq i64 %i.lw, 0
  br i1 %i.ma, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i118.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i118.i": ; preds = %bb.be
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) %i.ly) #42, !noalias !2310
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !range !10, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !range !26, !invariant.load !6, !alias.scope !2306 ; 2 uses
  %i.mg = icmp ult i64 %i.mf, -9223372036854775807
  call void @llvm.assume(i1 %i.mg)
  %i.mh = icmp eq i64 %i.md, 0
  br i1 %i.mh, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i116.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i116.i": ; preds = %bb.bf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.md, i64 noundef range(i64 1, -9223372036854775807) %i.mf) #42, !noalias !2310
  br label %.body

bb.bg:                                            ; preds = %bb.bh
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !2310
  unreachable

.thread.i:                                        ; preds = %bb.g, %.body109.i, %.thread157.i
  %.pn156.i = phi { ptr, i32 } [ %i.ad, %.thread157.i ], [ %eh.lpad-body110.i, %bb.g ], [ %eh.lpad-body110.i, %.body109.i ]
  %.val50.i = load ptr, ptr %i.k, align 8, !noalias !2307
  %i.mj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val51.i = load i64, ptr %i.mj, align 8, !noalias !2307, !noundef !6
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE"(ptr %.val50.i, i64 %.val51.i) #46, !noalias !2310
  br label %bb.bh

bb.bh:                                            ; preds = %.thread.i, %bb.v, %.body.sink.split.i.i.i, %bb.t, %bb.d
  %.pn37.i = phi { ptr, i32 } [ %i.y, %bb.d ], [ %.pn156.i, %.thread.i ], [ %i.ez, %bb.v ], [ %i.ep, %bb.t ], [ %eh.lpad-body27.ph.i.i.i, %.body.sink.split.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$17hb9749667d517164bE"(ptr nonnull align 1 %2, ptr nonnull readonly align 8 dereferenceable(40) %3) #46
          to label %.body unwind label %bb.bg, !noalias !2304

.body:                                            ; preds = %bb.ad, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i116.i", %bb.bh
  %eh.lpad-body = phi { ptr, i32 } [ %.pn37.i, %bb.bh ], [ %i.mb, %bb.bf ], [ %i.he, %bb.ad ], [ %i.he, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.mb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i116.i" ] ; 2 uses
  %i.mk = cmpxchg ptr %i.m, i64 8, i64 0 release monotonic, align 8
  %i.ml = extractvalue { i64, i1 } %i.mk, 1
  br i1 %i.ml, label %.thread, label %bb.bi, !prof !14

bb.bi:                                            ; preds = %.body
  invoke void @_ZN11parking_lot10raw_rwlock9RawRwLock21unlock_exclusive_slow17h3d76446a59e1df9cE(ptr noundef nonnull align 8 %i.m, i1 noundef zeroext false)
          to label %.thread unwind label %bb.bl

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i118.i", %bb.be, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.mm = cmpxchg ptr %i.m, i64 8, i64 0 release monotonic, align 8
  %i.mn = extractvalue { i64, i1 } %i.mm, 1
  br i1 %i.mn, label %"_ZN4core3ptr134drop_in_place$LT$lock_api..rwlock..RwLockWriteGuard$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h362464069146711eE.exit7", label %bb.bk, !prof !14

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN11parking_lot10raw_rwlock9RawRwLock21unlock_exclusive_slow17h3d76446a59e1df9cE(ptr noundef nonnull align 8 %i.m, i1 noundef zeroext false)
  br label %"_ZN4core3ptr134drop_in_place$LT$lock_api..rwlock..RwLockWriteGuard$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h362464069146711eE.exit7"

"_ZN4core3ptr134drop_in_place$LT$lock_api..rwlock..RwLockWriteGuard$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h362464069146711eE.exit7": ; preds = %bb.bk, %bb.bj
  ret void

bb.bl:                                            ; preds = %bb.bi, %bb.bm
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

.thread:                                          ; preds = %bb.bi, %.body, %bb.bm
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %bb.bi ], [ %i.mp, %bb.bm ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn11

bb.bm:                                            ; preds = %bb.b
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$17hb9749667d517164bE"(ptr nonnull %2, ptr nonnull %3) #46
          to label %.thread unwind label %bb.bl
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus8registry8register17h63d31e4764a700c0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref17he6403a561afd7639E.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = invoke fastcc noundef align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h0f93d9e76f2b9f74E"()
          to label %"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref17he6403a561afd7639E.exit" unwind label %bb.d

"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref17he6403a561afd7639E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", %bb.a ], [ %i.c, %bb.b ]
  tail call void @_ZN10prometheus8registry8Registry8register17h1f532ff5185040d5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$17hb9749667d517164bE"(ptr nonnull %1, ptr nonnull %2) #46
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus9histogram13HistogramOpts12const_labels17h0212e1a983a1666cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) initializes((0, 192)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(192) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h75607476e5bbcd71E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus9histogram13HistogramOpts15variable_labels17h7b66ed1f05fc52c8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(192) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  %i.a = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.a, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  %.val.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2408, !noalias !2409 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2408, !noalias !2409, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2410
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.f = icmp eq i64 %i.c, %.sroa.7.0.copyload
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i", %bb.a
  %i.g = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i"
  %i.h = mul nuw i64 %.sroa.4.0.copyload, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2409
  br label %bb.d

end_hunk_2
begin_hunk_3_@_ZN10prometheus9histogram9Histogram26with_opts_and_label_values17h05957183e36cf420E:bb.a
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.do, i64 %i.cj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !3308
  store i64 %i.cl, ptr %i.bu, align 8, !alias.scope !3329, !noalias !3305
  %i.dq = icmp eq ptr %i.ck, %i.bv
  br i1 %i.dq, label %._crit_edge.i.i, label %bb.s

.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.ae, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.pre = load i64, ptr %i.g, align 8, !alias.scope !3331, !noalias !3308 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  call void @llvm.experimental.noalias.scope.decl(metadata !3333), !noalias !3308
  %i.dr = icmp eq i64 %.val.i.i.pre, 0
  br i1 %i.dr, label %.body.i.i, label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp
  %.val1.i.i9 = load ptr, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !3331, !noalias !3308, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9, i64 noundef %.val.i.i.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3334
  br label %.body.i.i

bb.an:                                            ; preds = %bb.y, %bb.x, %._crit_edge76.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3305
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.n, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3298
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.613.i.sroa.0.0.copyload62 = load i64, ptr %i.dt, align 8, !noalias !3298 ; 5 uses
  %.sroa.613.i.sroa.7.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.613.i.sroa.7.0.copyload64 = load ptr, ptr %.sroa.613.i.sroa.7.0..sroa_idx63, align 8, !noalias !3298 ; 7 uses
  %.sroa.613.i.sroa.9.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.613.i.sroa.9.0.copyload66 = load i64, ptr %.sroa.613.i.sroa.9.0..sroa_idx65, align 8, !noalias !3298 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3298
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val51.i = load ptr, ptr %i.du, align 8, !alias.scope !3296, !nonnull !6, !noundef !6
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val52.i = load i64, ptr %i.dv, align 8, !alias.scope !3296, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.dw = shl i64 %.val52.i, 3                    ; 5 uses
  %i.dx = icmp ugt i64 %.val52.i, 2305843009213693951
  %i.dy = icmp ugt i64 %i.dw, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.dx, %i.dy
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i: ; preds = %.thread.i
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3338
  %i.ea = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dw, i64 noundef range(i64 1, 9) 8) #42, !noalias !3338 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.thread.i
  %.sroa.4.0.ph.i.i.i63.i = phi i64 [ 8, %bb.ao ], [ 0, %.thread.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i63.i, i64 %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.noexc64.i unwind label %bb.bh, !noalias !3299

.noexc64.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i
  %.sroa.10.0.i.i.i62.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i ], [ %i.ea, %bb.ao ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i61.i ], [ %.val52.i, %bb.ao ] ; 2 uses
  %i.ec = icmp samesign ule i64 %.val52.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i62.i, ptr nonnull readonly align 8 %.val51.i, i64 %i.dw, i1 false), !noalias !3339
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.m, align 8, !alias.scope !3340, !noalias !3298
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.10.0.i.i.i62.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3340, !noalias !3298
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val52.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3340, !noalias !3298
  invoke void @_ZN10prometheus9histogram24check_and_adjust_buckets17h02c6f1f088505c76E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.ar unwind label %bb.bh, !noalias !3299

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3298
  %i.ed = load i64, ptr %i.n, align 8, !range !22, !noalias !3298, !noundef !6
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0153.0.copyload.i = load i64, ptr %i.ef, align 8, !noalias !3298 ; 5 uses
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4154.0.copyload.i = load ptr, ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !3298 ; 5 uses
  %.sroa.5155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5155.0.copyload.i = load i64, ptr %.sroa.5155.0..sroa_idx.i, align 8, !noalias !3298 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3298
  br i1 %i.ee, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.613.i.sroa.7.0.copyload64) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3341)
  %i.eg = icmp eq i64 %.sroa.613.i.sroa.9.0.copyload66, 0
  br i1 %i.eg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.as, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.ei, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i" ], [ 0, %bb.as ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.613.i.sroa.7.0.copyload64, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.ei = add nuw i64 %.sroa.0.07.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3342)
  call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  %.val.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !3344, !noalias !3345 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ej, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !3344, !noalias !3345, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3346
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.at, %.lr.ph.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  %.val.i4.i.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !3348, !noalias !3345 ; 2 uses
  %i.em = icmp eq i64 %.val.i4.i.i.i.i.i, 0
  br i1 %i.em, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %.val1.i5.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !3348, !noalias !3345, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3349
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i": ; preds = %bb.au, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.eo = icmp eq i64 %i.ei, %.sroa.613.i.sroa.9.0.copyload66
  br i1 %i.eo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i", %bb.as
  %i.ep = icmp eq i64 %.sroa.613.i.sroa.0.0.copyload62, 0
  br i1 %i.ep, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i", label %bb.av

bb.av:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  %i.eq = mul nuw i64 %.sroa.613.i.sroa.0.0.copyload62, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.613.i.sroa.7.0.copyload64, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3345
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3298
  store i64 %.sroa.613.i.sroa.0.0.copyload62, ptr %i.k, align 8, !noalias !3298
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.613.i.sroa.7.0.copyload64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3298
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.613.i.sroa.9.0.copyload66, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6122.sroa.4.i)
  %i.er = icmp ult i64 %.sroa.5155.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.er)
  call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3351
  store i64 0, ptr %i.c, align 8, !noalias !3351
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.es, align 8, !noalias !3351
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.et, align 8, !noalias !3351
  %.not.i66.i = icmp eq i64 %.sroa.5155.0.copyload.i, 0
  br i1 %.not.i66.i, label %.loopexit192.thread.i, label %.lr.ph.i67.i

.loopexit192.thread.i:                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6122.sroa.4.i, i8 0, i64 16, i1 false), !alias.scope !3350, !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3352
  store i64 0, ptr %i.b, align 8, !noalias !3352
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.eu, align 8, !noalias !3352
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ev, align 8, !noalias !3352
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit

.lr.ph.i67.i:                                     ; preds = %bb.aw, %bb.ba
  %i.ew = phi ptr [ %i.fc, %bb.ba ], [ inttoptr (i64 8 to ptr), %bb.aw ]
  %i.ex = phi i64 [ %i.fe, %bb.ba ], [ 0, %bb.aw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %i.ey = load i64, ptr %i.c, align 8, !range !10, !alias.scope !3353, !noalias !3351, !noundef !6
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %.lr.ph.i67.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0696c862456125e8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154)
          to label %._crit_edge15.i.i unwind label %bb.ay, !noalias !3354

._crit_edge15.i.i:                                ; preds = %bb.ax
  %.pre.i71.i = load ptr, ptr %i.es, align 8, !alias.scope !3353, !noalias !3351
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i70.i = load i64, ptr %i.c, align 8, !noalias !3351 ; 2 uses
  %i.fb = icmp eq i64 %.val.i70.i, 0
  br i1 %i.fb, label %.body72.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val13.i.i = load ptr, ptr %i.es, align 8, !noalias !3351, !nonnull !6, !noundef !6
  %4 = shl nuw i64 %.val.i70.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3354
  br label %.body72.i

bb.ba:                                            ; preds = %._crit_edge15.i.i, %.lr.ph.i67.i
  %i.fc = phi ptr [ %.pre.i71.i, %._crit_edge15.i.i ], [ %i.ew, %.lr.ph.i67.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ex
  store i64 0, ptr %i.fd, align 8, !noalias !3355
  %i.fe = add nuw nsw i64 %i.ex, 1                ; 3 uses
  store i64 %i.fe, ptr %i.et, align 8, !alias.scope !3353, !noalias !3351
  %exitcond.not.i68.i = icmp eq i64 %i.fe, %.sroa.5155.0.copyload.i
  br i1 %exitcond.not.i68.i, label %.lr.ph.i75.preheader.i, label %.lr.ph.i67.i

.body72.i:                                        ; preds = %bb.bf, %.body84.i, %bb.az, %bb.ay
  %.pn.i = phi { ptr, i32 } [ %i.fa, %bb.ay ], [ %i.fm, %bb.bf ], [ %i.fa, %bb.az ], [ %i.fm, %.body84.i ] ; 2 uses
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #46, !noalias !3299
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l) #46, !noalias !3299
  %i.ff = icmp eq i64 %.sroa.0153.0.copyload.i, 0
  br i1 %i.ff, label %common.resume, label %bb.bg

.lr.ph.i75.preheader.i:                           ; preds = %bb.ba
  %.sroa.0117.0.copyload118.pre.i = load i64, ptr %i.c, align 8, !noalias !3298 ; 3 uses
  %.sroa.5119.0.copyload121.pre.i = load ptr, ptr %i.es, align 8, !noalias !3298 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6122.sroa.4.i, i8 0, i64 16, i1 false), !alias.scope !3350, !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3356
  store i64 0, ptr %i.b, align 8, !noalias !3356
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fg, align 8, !noalias !3356
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.fh, align 8, !noalias !3356
  br label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %bb.be, %.lr.ph.i75.preheader.i
  %i.fi = phi ptr [ %i.fp, %bb.be ], [ inttoptr (i64 8 to ptr), %.lr.ph.i75.preheader.i ]
  %i.fj = phi i64 [ %i.fr, %bb.be ], [ 0, %.lr.ph.i75.preheader.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  %i.fk = load i64, ptr %i.b, align 8, !range !10, !alias.scope !3357, !noalias !3356, !noundef !6
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph.i75.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0696c862456125e8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154)
          to label %._crit_edge15.i82.i unwind label %bb.bc, !noalias !3358

._crit_edge15.i82.i:                              ; preds = %bb.bb
  %.pre.i83.i = load ptr, ptr %i.fg, align 8, !alias.scope !3357, !noalias !3356
  br label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i79.i = load i64, ptr %i.b, align 8, !noalias !3356 ; 2 uses
  %i.fn = icmp eq i64 %.val.i79.i, 0
  br i1 %i.fn, label %.body84.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val13.i80.i = load ptr, ptr %i.fg, align 8, !noalias !3356, !nonnull !6, !noundef !6
  %i.fo = shl nuw i64 %.val.i79.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i80.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3358
  br label %.body84.i

bb.be:                                            ; preds = %._crit_edge15.i82.i, %.lr.ph.i75.i
  %i.fp = phi ptr [ %.pre.i83.i, %._crit_edge15.i82.i ], [ %i.fi, %.lr.ph.i75.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fj
  store i64 0, ptr %i.fq, align 8, !noalias !3359
  %i.fr = add nuw nsw i64 %i.fj, 1                ; 3 uses
  store i64 %i.fr, ptr %i.fh, align 8, !alias.scope !3357, !noalias !3356
  %exitcond.not.i77.i = icmp eq i64 %i.fr, %.sroa.5155.0.copyload.i
  br i1 %exitcond.not.i77.i, label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit, label %.lr.ph.i75.i

.body84.i:                                        ; preds = %bb.bd, %bb.bc
  %i.fs = icmp eq i64 %.sroa.0117.0.copyload118.pre.i, 0
  br i1 %i.fs, label %.body72.i, label %bb.bf

bb.bf:                                            ; preds = %.body84.i
  %5 = shl nuw i64 %.sroa.0117.0.copyload118.pre.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5119.0.copyload121.pre.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5119.0.copyload121.pre.i, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3299
  br label %.body72.i

bb.bg:                                            ; preds = %.body72.i
  %6 = shl nuw i64 %.sroa.0153.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4154.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4154.0.copyload.i, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3299
  br label %common.resume

bb.bh:                                            ; preds = %bb.aq, %bb.ap
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.613.i.sroa.7.0.copyload64) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3360), !noalias !3299
  %i.fu = icmp eq i64 %.sroa.613.i.sroa.9.0.copyload66, 0
  br i1 %i.fu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bh, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.fw, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i" ], [ 0, %bb.bh ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.613.i.sroa.7.0.copyload64, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.fw = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3361), !noalias !3299
  call void @llvm.experimental.noalias.scope.decl(metadata !3362), !noalias !3299
  %.val.i.i.i.i.i = load i64, ptr %i.fv, align 8, !alias.scope !3363, !noalias !3364 ; 2 uses
  %i.fx = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.fx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i", label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !3363, !noalias !3364, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3365
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i": ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3366), !noalias !3299
  %.val.i4.i.i.i.i = load i64, ptr %i.fz, align 8, !alias.scope !3367, !noalias !3364 ; 2 uses
  %i.ga = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.ga, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.val1.i5.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !3367, !noalias !3364, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i, i64 noundef %.val.i4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3368
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i": ; preds = %bb.bj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.gc = icmp eq i64 %i.fw, %.sroa.613.i.sroa.9.0.copyload66
  br i1 %i.gc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", %bb.bh
  %i.gd = icmp eq i64 %.sroa.613.i.sroa.0.0.copyload62, 0
  br i1 %i.gd, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22", label %bb.bk

bb.bk:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  %i.ge = mul nuw i64 %.sroa.613.i.sroa.0.0.copyload62, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.613.i.sroa.7.0.copyload64, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3364
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22"

bb.bl:                                            ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.be, ptr noundef nonnull align 1 dereferenceable(47) @140, i64 47, i1 false), !noalias !3369
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.bm:                                            ; preds = %bb.i, %.lr.ph207.i
  %i.gf = icmp eq ptr %.sroa.039.1205.i, %i.ar    ; 2 uses
  %.sroa.039.1.idx.i = select i1 %i.gf, i64 0, i64 48
  %.sroa.039.1.i = getelementptr inbounds nuw i8, ptr %.sroa.039.1205.i, i64 %.sroa.039.1.idx.i
  br i1 %i.gf, label %._crit_edge208.i, label %.lr.ph207.i

common.resume:                                    ; preds = %.body72.i, %bb.bg, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22", %bb.bq
  %common.resume.op = phi { ptr, i32 } [ %i.gl, %bb.bq ], [ %.pn44.ph.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22" ], [ %.pn.i, %bb.bg ], [ %.pn.i, %.body72.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22": ; preds = %bb.bk, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", %bb.r, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20", %bb.f
  %.pn44.ph.i = phi { ptr, i32 } [ %.pn.i.i, %bb.r ], [ %i.at, %bb.f ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20" ], [ %i.ft, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i" ], [ %i.ft, %bb.bk ]
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q) #46, !noalias !3299
  br label %common.resume

_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread: ; preds = %bb.b, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"
  %.sroa.20.2.ph = phi i64 [ %.sroa.20.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.8.0.copyload56, %bb.b ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.7.0.copyload53, %bb.b ]
  %.sroa.10.2.ph = phi i64 [ %.sroa.10.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.0.0.copyload50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3298
  br label %bb.bn

_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit: ; preds = %bb.be, %.loopexit192.thread.i
  %.sroa.0117.0.copyload118242.i = phi i64 [ 0, %.loopexit192.thread.i ], [ %.sroa.0117.0.copyload118.pre.i, %bb.be ]
  %.sroa.5119.0.copyload121241.i = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit192.thread.i ], [ %.sroa.5119.0.copyload121.pre.i, %bb.be ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.24..24..24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.24..24..24..24..24..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6122.sroa.4.i, i64 16, i1 false), !noalias !3370
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122.sroa.4.i)
  %.sroa.018.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.l, align 8, !noalias !3298 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.018.sroa.0.i.sroa.4.0.copyload = load i64, ptr %.sroa.018.sroa.0.i.sroa.4.0..sroa_idx, align 8, !noalias !3298 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.018.sroa.0.i.sroa.5.0.copyload = load ptr, ptr %.sroa.018.sroa.0.i.sroa.5.0..sroa_idx, align 8, !noalias !3298 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.018.sroa.0.i.sroa.6.0.copyload = load i64, ptr %.sroa.018.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !3298 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7.0..sroa_idx, i64 80, i1 false)
  %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.sroa.0.i.sroa.7, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3298
  %i.gg = icmp eq i64 %.sroa.018.sroa.0.i.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.gg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit
  %.sroa.10.280 = phi i64 [ %.sroa.10.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.4.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  %.sroa.17.279 = phi ptr [ %.sroa.17.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.5.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  %.sroa.20.278 = phi i64 [ %.sroa.20.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.6.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  store i64 %.sroa.10.280, ptr %0, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.279, ptr %.sroa.247.0..sroa_idx, align 8
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.20.278, ptr %.sroa.348.0..sroa_idx, align 8
  br label %bb.br

bb.bo:                                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.018.sroa.0.i.sroa.7, i64 104, i1 false)
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, i64 16, i1 false)
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  store i64 1, ptr %i.r, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 %.sroa.018.sroa.0.i.sroa.0.0.copyload, ptr %i.gi, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.018.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %.sroa.018.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.018.sroa.0.i.sroa.6.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.sroa.0117.0.copyload118242.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %.sroa.5119.0.copyload121241.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  store i64 %.sroa.5155.0.copyload.i, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  store i64 %.sroa.0153.0.copyload.i, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store ptr %.sroa.4154.0.copyload.i, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 248
  store i64 %.sroa.5155.0.copyload.i, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3371
  %i.gj = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 272, i64 noundef 8) #42, !noalias !3371 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.bp, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit", !prof !11

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 272) #45
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramCore$GT$17h4744720c4f627421E"(ptr noalias noundef readonly align 8 dereferenceable(256) %i.gi)
  br label %common.resume

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit": ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.gj, ptr noundef nonnull align 8 dereferenceable(272) %i.r, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gj, ptr %i.gm, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.br

bb.br:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit", %bb.bn
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram5local17hde3ce61224017615E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3386
  store ptr %i.b, ptr %i.a, align 8, !noalias !3387
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load i64, ptr %i.e, align 8, !noalias !3387, !noundef !6 ; 5 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E.exit, label %bb.c
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr169drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$prometheus..timer..ensure_updater..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbd3f3a422ba7e536E":bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3932, !nonnull !6, !noundef !6
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !3932
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit5"

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.k)
  br label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit5"

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit5": ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h88c8cb60664859e7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3935)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.e, %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3935 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3935, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !6, !noalias !3935 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !3935

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !6, !noalias !3935 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !26, !invariant.load !6, !noalias !3935 ; 2 uses
  %i.l = icmp ult i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.k) #42, !noalias !3935
  br label %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i"

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !6, !noalias !3935 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !26, !invariant.load !6, !noalias !3935 ; 2 uses
  %i.s = icmp ult i64 %i.r, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #42, !noalias !3935
  br label %.body.i.i

"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.c
  %i.u = icmp eq i64 %i.e, %.val1
  br i1 %i.u, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.d
  %i.x = icmp eq i64 %i.e, %.val1
  br i1 %i.x, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.v, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !3935
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !3935, !nonnull !6, !align !7, !noundef !6
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E"(ptr %.val.i.i, ptr nonnull %.val7.i.i) #46
          to label %bb.e unwind label %bb.f, !noalias !3935

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !3935
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %.val4, 0
  br i1 %i.ab, label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit", label %bb.g

bb.g:                                             ; preds = %.body
  %i.ac = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit": ; preds = %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ad = icmp eq i64 %.val2, 0
  br i1 %i.ad, label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit"
  %i.ae = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6"

"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", %bb.h
  ret void

"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit": ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2032f093ad8cc711E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !3939, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !3939
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !3939 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !3939, !noundef !6 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !3939, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !3939, !noundef !6
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !3939, !noundef !6
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !3939
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !3939, !nonnull !6, !noundef !6
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !3939
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !3939, !nonnull !6, !noundef !6
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !3939, !inline_history !3938
  %i.s = load i64, ptr %i.e, align 8, !noalias !3939, !noundef !6
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !3939
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !3939, !noundef !6 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !3939, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !3939
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  %i.a = load i64, ptr %0, align 8, !range !22, !alias.scope !3942, !noundef !6
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !3942, !align !24, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !3942 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !3942 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !3942

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !6, !noalias !3942 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !26, !invariant.load !6, !noalias !3942 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #42, !noalias !3942
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !6, !noalias !3942 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !26, !invariant.load !6, !noalias !3942 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #42, !noalias !3942
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.f
  resume { ptr, i32 } %i.m

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit": ; preds = %bb.a, %bb.b, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h957ee2e35ee099ddE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 8, 65) %2) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !3976
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !3977
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !3976
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !3977
  %exitcond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3979)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !3978
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !3979
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.b, align 1, !alias.scope !3978
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.c, align 1, !alias.scope !3979
  %exitcond.not.i.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3981)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !3980
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !3981
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.d, align 1, !alias.scope !3980
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.e, align 1, !alias.scope !3981
  %exitcond.not.i.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.i.2, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3983)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !3982
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !3983
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.f, align 1, !alias.scope !3982
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.g, align 1, !alias.scope !3983
  %exitcond.not.i.i.3 = icmp eq i64 %i.a, 4
  br i1 %exitcond.not.i.i.3, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !3984
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.i, align 1, !alias.scope !3985
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.h, align 1, !alias.scope !3984
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.i, align 1, !alias.scope !3985
  %exitcond.not.i.i.4 = icmp eq i64 %i.a, 5
  br i1 %exitcond.not.i.i.4, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %.sroa.0.0.copyload.i.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !3986
  %.sroa.02.0.copyload.i.i.i.5 = load i64, ptr %i.k, align 1, !alias.scope !3987
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.j, align 1, !alias.scope !3986
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.k, align 1, !alias.scope !3987
  %exitcond.not.i.i.5 = icmp eq i64 %i.a, 6
  br i1 %exitcond.not.i.i.5, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %.sroa.0.0.copyload.i.i.i.6 = load i64, ptr %i.l, align 1, !alias.scope !3988
  %.sroa.02.0.copyload.i.i.i.6 = load i64, ptr %i.m, align 1, !alias.scope !3989
  store i64 %.sroa.02.0.copyload.i.i.i.6, ptr %i.l, align 1, !alias.scope !3988
  store i64 %.sroa.0.0.copyload.i.i.i.6, ptr %i.m, align 1, !alias.scope !3989
  %exitcond.not.i.i.6 = icmp eq i64 %i.a, 7
  br i1 %exitcond.not.i.i.6, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3991)
  %.sroa.0.0.copyload.i.i.i.7 = load i64, ptr %i.n, align 1, !alias.scope !3990
  %.sroa.02.0.copyload.i.i.i.7 = load i64, ptr %i.o, align 1, !alias.scope !3991
  store i64 %.sroa.02.0.copyload.i.i.i.7, ptr %i.n, align 1, !alias.scope !3990
  store i64 %.sroa.0.0.copyload.i.i.i.7, ptr %i.o, align 1, !alias.scope !3991
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = and i64 %2, 7                            ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i
  %i.q = and i64 %2, 120                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 4 uses
  %i.t = icmp samesign ult i64 %i.p, 4
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.r, align 1, !alias.scope !3992
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.s, align 1, !alias.scope !3993
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.r, align 1, !alias.scope !3992
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.s, align 1, !alias.scope !3993
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.i ], [ 4, %bb.j ] ; 4 uses
  %i.u = and i64 %2, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3995)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.w, align 1, !alias.scope !3994
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h860b387b49ad8ff8E":bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4306, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4306
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h90e2d198218ed23bE.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit"
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h90e2d198218ed23bE.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h90e2d198218ed23bE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.07.i.i
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.d)
  %i.f = icmp eq i64 %i.e, %.val1
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %"_ZN4core3ptr73drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..desc..Desc$GT$$GT$17h43f337a1c083fa2cE.exit6", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit"
  %i.h = mul nuw i64 %.val2, 112
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr73drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..desc..Desc$GT$$GT$17h43f337a1c083fa2cE.exit6"

"_ZN4core3ptr73drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..desc..Desc$GT$$GT$17h43f337a1c083fa2cE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr68drop_in_place$LT$prometheus..process_collector..ProcessCollector$GT$17h40a6a75fac1340cfE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4351)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4351, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4351, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.e = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.d), !noalias !4351
  %i.f = icmp eq i64 %i.e, %.val1.i
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit.i": ; preds = %.lr.ph.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !10, !alias.scope !4351, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val2.i, 0
  br i1 %i.g, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit.i"
  %i.h = mul nuw i64 %.val2.i, 112
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4351
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E.exit"

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E.exit": ; preds = %bb.b, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd23be5396ab0606E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4354)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4355, !nonnull !6, !noundef !6
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !4355
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %"_ZN4core3ptr95drop_in_place$LT$prometheus..counter..GenericCounter$LT$prometheus..atomic64..AtomicU64$GT$$GT$17hff0cfa15cd0f351dE.exit12"

bb.c:                                             ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E.exit"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6461246cf88cf507E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
  br label %"_ZN4core3ptr95drop_in_place$LT$prometheus..counter..GenericCounter$LT$prometheus..atomic64..AtomicU64$GT$$GT$17hff0cfa15cd0f351dE.exit12"

"_ZN4core3ptr95drop_in_place$LT$prometheus..counter..GenericCounter$LT$prometheus..atomic64..AtomicU64$GT$$GT$17hff0cfa15cd0f351dE.exit12": ; preds = %bb.c, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$prometheus..desc..Desc$GT$$GT$17he304e0a683db76d0E.exit"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4358)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4359, !nonnull !6, !noundef !6
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !4359
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit13"

bb.d:                                             ; preds = %"_ZN4core3ptr95drop_in_place$LT$prometheus..counter..GenericCounter$LT$prometheus..atomic64..AtomicU64$GT$$GT$17hff0cfa15cd0f351dE.exit12"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit13"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit13": ; preds = %bb.d, %"_ZN4core3ptr95drop_in_place$LT$prometheus..counter..GenericCounter$LT$prometheus..atomic64..AtomicU64$GT$$GT$17hff0cfa15cd0f351dE.exit12"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4362)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4363, !nonnull !6, !noundef !6
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !4363
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit15"

bb.e:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit13"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.q)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit15"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit15": ; preds = %bb.e, %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit13"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4367, !nonnull !6, !noundef !6
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !4367
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.f, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit17"

bb.f:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit15"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.u)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit17"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit17": ; preds = %bb.f, %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit15"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4370)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4371, !nonnull !6, !noundef !6
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !4371
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit19"

bb.g:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit17"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.y)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit19"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit19": ; preds = %bb.g, %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit17"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4374)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !4375, !nonnull !6, !noundef !6
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !4375
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit21"

bb.h:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit19"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ac)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit21"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit21": ; preds = %bb.h, %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit19"
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !4379, !nonnull !6, !noundef !6
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !4379
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.i, label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit23"

bb.i:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit21"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ag)
  br label %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit23"

"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit23": ; preds = %"_ZN4core3ptr91drop_in_place$LT$prometheus..gauge..GenericGauge$LT$prometheus..atomic64..AtomicI64$GT$$GT$17hfb06fe219cf0dfd2E.exit21", %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE"(ptr %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN4core3ptr88drop_in_place$LT$hashbrown..set..HashSet$LT$u64$C$std..hash..random..RandomState$GT$$GT$17h6dd5eaf2b60b29b4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 3
  %i.c = icmp slt i64 %.8.val, 2305843009213693950
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = icmp uge i64 %i.g, %i.e
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %"_ZN4core3ptr88drop_in_place$LT$hashbrown..set..HashSet$LT$u64$C$std..hash..random..RandomState$GT$$GT$17h6dd5eaf2b60b29b4E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %i.k = sub nuw nsw i64 -16, %i.d
  %i.l = getelementptr inbounds i8, ptr %.0.val, i64 %i.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #42
  br label %"_ZN4core3ptr88drop_in_place$LT$hashbrown..set..HashSet$LT$u64$C$std..hash..random..RandomState$GT$$GT$17h6dd5eaf2b60b29b4E.exit"

"_ZN4core3ptr88drop_in_place$LT$hashbrown..set..HashSet$LT$u64$C$std..hash..random..RandomState$GT$$GT$17h6dd5eaf2b60b29b4E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %.val, i64 %.sroa.0.07.i.i
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.d)
  %i.f = icmp eq i64 %i.e, %.val1
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..Metric$GT$$GT$17h5e659a0d56dcf421E.exit6", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit"
  %i.h = mul nuw i64 %.val2, 136
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..Metric$GT$$GT$17h5e659a0d56dcf421E.exit6"

"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..Metric$GT$$GT$17h5e659a0d56dcf421E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4388)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4390)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !4391 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4391, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4391
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4392)
  %.val.i4.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !4393 ; 2 uses
  %i.i = icmp eq i64 %.val.i4.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i5.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4393, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i, i64 noundef %.val.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4393
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val2, 0
  br i1 %i.l, label %"_ZN4core3ptr79drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..LabelPair$GT$$GT$17h531a36785545097aE.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit"
  %i.m = mul nuw i64 %.val2, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..LabelPair$GT$$GT$17h531a36785545097aE.exit6"

"_ZN4core3ptr79drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..LabelPair$GT$$GT$17h531a36785545097aE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..MetricFamily$GT$$GT$17h9ea4378102ccfcf3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  tail call fastcc void @"_ZN4core3ptr62drop_in_place$LT$$u5b$prometheus..proto..MetricFamily$u5d$$GT$17h369642af7fe39a94E"(ptr noalias noundef nonnull readonly align 8 %.val, i64 noundef %.val1)
  %.val2 = load i64, ptr %0, align 8, !range !10, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..MetricFamily$GT$$GT$17he81478a24f8911a8E.exit6", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val2, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..MetricFamily$GT$$GT$17he81478a24f8911a8E.exit6"

"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$prometheus..proto..MetricFamily$GT$$GT$17he81478a24f8911a8E.exit6": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr84drop_in_place$LT$$LP$alloc..string..String$C$prometheus..proto..MetricFamily$RP$$GT$17h92ed68983145e02eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4404)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !4404 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !4404, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4404
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !4407 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4407, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4407
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  %.val.i5.i = load i64, ptr %i.f, align 8, !alias.scope !4409 ; 2 uses
  %i.g = icmp eq i64 %.val.i5.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i6.i = load ptr, ptr %i.h, align 8, !alias.scope !4409, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i, i64 noundef %.val.i5.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4409
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i": ; preds = %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4410)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i8.i = load ptr, ptr %i.j, align 8, !alias.scope !4411, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i9.i = load i64, ptr %i.k, align 8, !alias.scope !4411, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val1.i9.i, 0
  br i1 %i.l, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i" ] ; 2 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %.val.i8.i, i64 %.sroa.0.07.i.i.i.i
  %i.n = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.m), !noalias !4411
  %i.o = icmp eq i64 %i.n, %.val1.i9.i
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !10, !alias.scope !4411, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i"
  %i.q = mul nuw i64 %.val2.i.i, 136
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4411
  br label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit"

"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$17hb9749667d517164bE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E:bb.a

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fo = getelementptr [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fn, 1
  %i.fp = icmp eq i64 %.sroa.15.099248, %.neg
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fn, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ft, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fq = xor i64 %.sroa.04.014.i, -1
  %i.fr = getelementptr [48 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr [48 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false), !alias.scope !5008
  %i.ft = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.fu = xor i64 %.sroa.04.014.i, -2
  %i.fv = getelementptr [48 x i8], ptr %i.er, i64 %i.fu
  %i.fw = getelementptr [48 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %i.fv, i64 48, i1 false), !alias.scope !5008
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, label %bb.aa

_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ft, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod336 = trunc i64 %i.fn to i1
  call void @llvm.assume(i1 %lcmp.mod336)
  %i.fy = xor i64 %.sroa.04.014.i.epil.init, -1
  %i.fz = getelementptr [48 x i8], ptr %i.er, i64 %i.fy
  %i.ga = getelementptr [48 x i8], ptr %i.fo, i64 %.sroa.04.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ga, ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i64 48, i1 false), !alias.scope !5008
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, %bb.z
  %i.gb = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.gb, label %.critedge35, label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit
  %.not33 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.15.099248
  br i1 %.not33, label %bb.aj, label %bb.ak, !prof !11

.critedge35:                                      ; preds = %bb.u, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  call void @llvm.experimental.noalias.scope.decl(metadata !5012)
  %.not69 = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not69, label %bb.ad, label %bb.ac, !prof !35

bb.ac:                                            ; preds = %.critedge35
  %i.gc = getelementptr [48 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.gd = getelementptr i8, ptr %i.ej, i64 8
  %i.ge = getelementptr i8, ptr %i.ej, i64 16
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %.sroa.19.0.i44 = phi ptr [ %i.gc, %bb.ac ], [ %i.gv, %bb.af ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.ac ], [ %i.gx, %bb.af ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph106, %bb.ac ], [ %i.gy, %bb.af ] ; 3 uses
  %.sroa.02.0.i47 = phi i64 [ %.sroa.0.0.i38, %bb.ac ], [ %.sroa.15.099248, %bb.af ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i47 ; 2 uses
  %i.gg = icmp ult ptr %.sroa.5.0.i46, %i.gf
  br i1 %i.gg, label %.lr.ph.i56, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i56, %bb.ae
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.gp, %.lr.ph.i56 ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.gs, %.lr.ph.i56 ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.gt, %.lr.ph.i56 ] ; 2 uses
  %i.gh = icmp eq i64 %.sroa.02.0.i47, %.sroa.15.099248
  br i1 %i.gh, label %bb.ag, label %bb.af

.lr.ph.i56:                                       ; preds = %bb.ae, %.lr.ph.i56
  %.sroa.5.111.i57 = phi ptr [ %i.gt, %.lr.ph.i56 ], [ %.sroa.5.0.i46, %bb.ae ] ; 4 uses
  %.sroa.11.110.i58 = phi i64 [ %i.gs, %.lr.ph.i56 ], [ %.sroa.11.0.i45, %bb.ae ] ; 2 uses
  %.sroa.19.19.i59 = phi ptr [ %i.gp, %.lr.ph.i56 ], [ %.sroa.19.0.i44, %bb.ae ]
  %i.gi = getelementptr i8, ptr %.sroa.5.111.i57, i64 8
  %.val.i60 = load ptr, ptr %i.gi, align 8, !alias.scope !5013, !nonnull !6, !noundef !6
  %i.gj = getelementptr i8, ptr %.sroa.5.111.i57, i64 16
  %.val24.i61 = load i64, ptr %i.gj, align 8, !alias.scope !5013, !noundef !6 ; 2 uses
  %.val25.i62 = load ptr, ptr %i.gd, align 8, !alias.scope !5014, !nonnull !6, !noundef !6
  %.val26.i63 = load i64, ptr %i.ge, align 8, !alias.scope !5014, !noundef !6 ; 2 uses
  %..i.i.i.i.i.i64 = call i64 @llvm.umin.i64(i64 %.val26.i63, i64 %.val24.i61)
  %i.gk = sub i64 %.val26.i63, %.val24.i61
  %i.gl = call i32 @memcmp(ptr nonnull readonly %.val25.i62, ptr nonnull readonly %.val.i60, i64 %..i.i.i.i.i.i64), !noalias !5015 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp eq i32 %i.gl, 0
  %spec.store.select.i.i.i.i.i.i65 = select i1 %i.gn, i64 %i.gk, i64 %i.gm
  %i.go = icmp sgt i64 %spec.store.select.i.i.i.i.i.i65, -1 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.sroa.19.19.i59, i64 -48 ; 3 uses
  %.sroa.01.0.i.i66 = select i1 %i.go, ptr %2, ptr %i.gp
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i66, i64 %.sroa.11.110.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.111.i57, i64 48, i1 false), !alias.scope !5016, !noalias !5017
  %i.gr = zext i1 %i.go to i64
  %i.gs = add i64 %.sroa.11.110.i58, %i.gr        ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i57, i64 48 ; 3 uses
  %i.gu = icmp ult ptr %i.gt, %i.gf
  br i1 %i.gu, label %.lr.ph.i56, label %._crit_edge.i48

bb.af:                                            ; preds = %._crit_edge.i48
  %i.gv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -48
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gw, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i51, i64 48, i1 false), !alias.scope !5016, !noalias !5018
  %i.gx = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 48
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.i48
  %i.gz = mul i64 %.sroa.11.1.lcssa.i50, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.gz, i1 false), !alias.scope !5016
  %i.ha = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not18.i52 = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50
  br i1 %.not18.i52, label %.outer._crit_edge.thread, label %.lr.ph16.i53

.lr.ph16.i53:                                     ; preds = %bb.ag
  %i.hb = getelementptr [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 3 uses
  %.neg349 = add i64 %.sroa.11.1.lcssa.i50, 1
  %xtraiter344 = and i64 %i.ha, 1
  %i.hc = icmp eq i64 %.sroa.15.099248, %.neg349
  br i1 %i.hc, label %.epil.preheader337, label %.lr.ph16.i53.new

.lr.ph16.i53.new:                                 ; preds = %.lr.ph16.i53
  %unroll_iter347 = and i64 %i.ha, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph16.i53.new
  %.sroa.04.014.i54 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %i.hg, %bb.ah ] ; 5 uses
  %niter348 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %niter348.next.1, %bb.ah ]
  %i.hd = xor i64 %.sroa.04.014.i54, -1
  %i.he = getelementptr [48 x i8], ptr %i.gc, i64 %i.hd
  %i.hf = getelementptr [48 x i8], ptr %i.hb, i64 %.sroa.04.014.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hf, ptr noundef nonnull align 8 dereferenceable(48) %i.he, i64 48, i1 false), !alias.scope !5016
  %i.hg = add nuw i64 %.sroa.04.014.i54, 2        ; 2 uses
  %i.hh = xor i64 %.sroa.04.014.i54, -2
  %i.hi = getelementptr [48 x i8], ptr %i.gc, i64 %i.hh
  %i.hj = getelementptr [48 x i8], ptr %i.hb, i64 %.sroa.04.014.i54
  %i.hk = getelementptr i8, ptr %i.hj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hk, ptr noundef nonnull align 8 dereferenceable(48) %i.hi, i64 48, i1 false), !alias.scope !5016
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, label %bb.ah

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit, label %.epil.preheader337

.epil.preheader337:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.04.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.hg, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.ha to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.hl = xor i64 %.sroa.04.014.i54.epil.init, -1
  %i.hm = getelementptr [48 x i8], ptr %i.gc, i64 %i.hl
  %i.hn = getelementptr [48 x i8], ptr %i.hb, i64 %.sroa.04.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(48) %i.hm, i64 48, i1 false), !alias.scope !5016
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, %.epil.preheader337
  %i.ho = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.15.099248
  br i1 %i.ho, label %bb.ai, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit", !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit

bb.ai:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.15.099248, i64 noundef %.sroa.15.099248, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #45, !noalias !5019
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hq = icmp ult i64 %i.ha, 33
  br i1 %i.hq, label %.outer._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @182, ptr %i.a, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.hu, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #45
  unreachable

bb.ak:                                            ; preds = %bb.ab
  %7 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph106) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.fn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hv = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hv, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(136) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit"
  %.sroa.0.0.ph133 = phi ptr [ %i.mb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph132 = phi i64 [ %i.lm, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph131 = phi i32 [ %i.dj, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph130 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %5, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 128 ; 2 uses
  %i.g = ptrtoint ptr %.sroa.0.0.ph133 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph130, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 128
  %i.k = icmp eq i32 %.sroa.023.0.ph131, 0
  br i1 %i.k, label %.lr.ph._crit_edge, label %.lr.ph364

bb.b:                                             ; preds = %bb.bs
  %i.l = icmp eq i32 %i.dj, 0
  br i1 %i.l, label %.lr.ph._crit_edge, label %.lr.ph364

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit", %bb.bs, %bb.a
  %.sroa.0.0.ph.lcssa124 = phi ptr [ %.sroa.0.0.ph133, %bb.bs ], [ %0, %bb.a ], [ %i.mb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.bs ], [ %1, %bb.a ], [ %i.lm, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5104)
  call void @llvm.experimental.noalias.scope.decl(metadata !5105)
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h349116586d53f114E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.n = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.q = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa124, i64 %i.p ; 3 uses
  %i.s = getelementptr [136 x i8], ptr %2, i64 %i.p ; 6 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbc2f094d82873eabE(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa124, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbc2f094d82873eabE(ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0.ph.lcssa124, i64 136, i1 false), !alias.scope !5106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 8 dereferenceable(136) %i.r, i64 136, i1 false), !alias.scope !5106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.t = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.p  ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.0.0.i, %i.p
  br i1 %i.u, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.v = icmp samesign ult i64 %.sroa.0.0.i, %i.t
  br i1 %i.v, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.08.010.1.i = phi i64 [ %i.w, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.w = add nuw nsw i64 %.sroa.08.010.1.i, 1     ; 2 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %i.r, i64 %.sroa.08.010.1.i
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.s, i64 %.sroa.08.010.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef nonnull align 8 dereferenceable(136) %i.x, i64 136, i1 false), !alias.scope !5106
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hc9f094d554a45734E(ptr noundef %i.s, ptr noundef %i.y), !noalias !5104
  %exitcond.1.not.i = icmp eq i64 %i.w, %i.t
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5107)
  %i.z = add nsw i64 %.sroa.15.0.lcssa, -1        ; 2 uses
  %i.aa = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa124, i64 %i.z
  %i.ab = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.s, i64 -136
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i"
  %i.ad = getelementptr i8, ptr %i.cu, i64 136    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ct, i64 136
  %i.af = and i64 %.sroa.15.0.lcssa, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.t, label %bb.s

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i", %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.bo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.06.012.i.i = phi ptr [ %i.bm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.s, %.loopexit.1.i ] ; 5 uses
  %.sroa.010.011.i.i = phi ptr [ %i.bp, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %.sroa.0.0.ph.lcssa124, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.09.i.i = phi ptr [ %i.cu, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.ac, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.07.i.i = phi ptr [ %i.ct, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.ab, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.06.i.i = phi ptr [ %i.cv, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.aa, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.05.i.i = phi i64 [ %i.ah, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ 0, %.loopexit.1.i ]
  %i.ah = add nuw nsw i64 %.sroa.018.05.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5108)
  call void @llvm.experimental.noalias.scope.decl(metadata !5109)
  call void @llvm.experimental.noalias.scope.decl(metadata !5110)
  call void @llvm.experimental.noalias.scope.decl(metadata !5111)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5112, !noundef !6 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5113, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !5113, !nonnull !6, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5112, !nonnull !6, !noundef !6
  %exitcond.not.i.i.i.i374 = icmp eq i64 %i.aj, 0
  br i1 %exitcond.not.i.i.i.i374, label %._crit_edge378, label %.lr.ph377

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %i.aj, %i.al
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.k:                                             ; preds = %bb.l
  %i.ar = add i64 %.sroa.9.0.i.i.i.i375, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.i, %bb.k
  %.sroa.9.0.i.i.i.i375 = phi i64 [ %i.ar, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %.sroa.9.0.i.i.i.i375 ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.sroa.9.0.i.i.i.i375 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !5114, !noundef !6 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !noalias !5114, !noundef !6 ; 2 uses
  %.not16.i.i.i.i = icmp eq i64 %i.aw, %i.az
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !5114 ; 2 uses
  %.pre14.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !5114 ; 2 uses
  br i1 %.not16.i.i.i.i, label %bb.l, label %bb.m

._crit_edge378:                                   ; preds = %bb.k, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5112, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 128
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !5113, !noundef !6
  %i.be = icmp slt i64 %i.bb, %i.bd
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.l:                                             ; preds = %.lr.ph377
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %i.aw), !noalias !5114
  %.not17.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not17.i.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph377
  %.lcssa.i.i.i.i = phi i64 [ %i.az, %.lr.ph377 ], [ %i.aw, %bb.l ] ; 2 uses
  %i.bf = sub i64 %i.aw, %.lcssa.i.i.i.i
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %.lcssa.i.i.i.i)
  %i.bg = call i32 @memcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %..i.i.i.i), !noalias !5114 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i": ; preds = %bb.m, %._crit_edge378, %bb.j
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.aq, %bb.j ], [ %i.bj, %bb.m ], [ %i.be, %._crit_edge378 ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.06.012.i.i, ptr %.sroa.0.014.i.i
  %i.bk = xor i1 %.sroa.0.0.i.i.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.010.011.i.i, ptr noundef nonnull align 8 dereferenceable(136) %..i23.i.i, i64 136, i1 false), !alias.scope !5106, !noalias !5115
  %i.bl = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %.sroa.06.012.i.i, i64 %i.bl ; 4 uses
  %i.bn = zext i1 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.014.i.i, i64 %i.bn ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5116)
  call void @llvm.experimental.noalias.scope.decl(metadata !5117)
  call void @llvm.experimental.noalias.scope.decl(metadata !5118)
  call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.07.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !5120, !noundef !6 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.09.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5121, !noundef !6 ; 2 uses
  %.not.i.i24.i.i = icmp eq i64 %i.br, %i.bt
  br i1 %.not.i.i24.i.i, label %bb.n, label %bb.o

end_hunk_6
begin_hunk_7_@_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E:bb.a
bb.bf:                                            ; preds = %.critedge35
  %i.ju = getelementptr [136 x i8], ptr %2, i64 %.sroa.15.0126362 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.bn, %bb.bf
  %.sroa.19.0.i57 = phi ptr [ %i.ju, %bb.bf ], [ %i.lh, %bb.bn ] ; 2 uses
  %.sroa.11.0.i58 = phi i64 [ 0, %bb.bf ], [ %i.lj, %bb.bn ] ; 2 uses
  %.sroa.5.0.i59 = phi ptr [ %.sroa.0.0.ph133, %bb.bf ], [ %i.lk, %bb.bn ] ; 3 uses
  %.sroa.02.0.i60 = phi i64 [ %.sroa.0.0.i36, %bb.bf ], [ %.sroa.15.0126362, %bb.bn ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.02.0.i60 ; 2 uses
  %i.jz = icmp ult ptr %.sroa.5.0.i59, %i.jy
  br i1 %i.jz, label %.lr.ph.i69, label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i", %bb.bh
  %.sroa.19.1.lcssa.i62 = phi ptr [ %.sroa.19.0.i57, %bb.bh ], [ %i.lb, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ]
  %.sroa.11.1.lcssa.i63 = phi i64 [ %.sroa.11.0.i58, %bb.bh ], [ %i.le, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ] ; 10 uses
  %.sroa.5.1.lcssa.i64 = phi ptr [ %.sroa.5.0.i59, %bb.bh ], [ %i.lf, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ] ; 2 uses
  %i.ka = icmp eq i64 %.sroa.02.0.i60, %.sroa.15.0126362
  br i1 %i.ka, label %bb.bo, label %bb.bn

.lr.ph.i69:                                       ; preds = %bb.bh, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"
  %.sroa.5.111.i70 = phi ptr [ %i.lf, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.5.0.i59, %bb.bh ] ; 5 uses
  %.sroa.11.110.i71 = phi i64 [ %i.le, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.11.0.i58, %bb.bh ] ; 2 uses
  %.sroa.19.19.i72 = phi ptr [ %i.lb, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.19.0.i57, %bb.bh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5168)
  call void @llvm.experimental.noalias.scope.decl(metadata !5169)
  call void @llvm.experimental.noalias.scope.decl(metadata !5170)
  call void @llvm.experimental.noalias.scope.decl(metadata !5171)
  call void @llvm.experimental.noalias.scope.decl(metadata !5172)
  call void @llvm.experimental.noalias.scope.decl(metadata !5173)
  %i.kb = load i64, ptr %i.jv, align 8, !alias.scope !5174, !noundef !6 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !5175, !noundef !6 ; 2 uses
  %.not.i.i.i.i73 = icmp eq i64 %i.kb, %i.kd
  br i1 %.not.i.i.i.i73, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i69
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !5175, !nonnull !6, !noundef !6
  %i.kg = load ptr, ptr %i.jw, align 8, !alias.scope !5174, !nonnull !6, !noundef !6
  %exitcond.not.i.i.i.i77369 = icmp eq i64 %i.kb, 0
  br i1 %exitcond.not.i.i.i.i77369, label %._crit_edge373, label %.lr.ph372

bb.bj:                                            ; preds = %.lr.ph.i69
  %i.kh = icmp ult i64 %i.kb, %i.kd
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

bb.bk:                                            ; preds = %bb.bl
  %i.ki = add i64 %.sroa.9.0.i.i.i.i76370, 1      ; 2 uses
  %exitcond.not.i.i.i.i77 = icmp eq i64 %i.ki, %i.kb
  br i1 %exitcond.not.i.i.i.i77, label %._crit_edge373, label %.lr.ph372

.lr.ph372:                                        ; preds = %bb.bi, %bb.bk
  %.sroa.9.0.i.i.i.i76370 = phi i64 [ %i.ki, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [48 x i8], ptr %i.kg, i64 %.sroa.9.0.i.i.i.i76370 ; 2 uses
  %i.kk = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.9.0.i.i.i.i76370 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kn = load i64, ptr %i.km, align 8, !noalias !5176, !noundef !6 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !5176, !noundef !6 ; 2 uses
  %.not16.i.i.i.i78 = icmp eq i64 %i.kn, %i.kq
  %.pre.i.i.i.i79 = load ptr, ptr %i.kl, align 8, !noalias !5176 ; 2 uses
  %.pre14.i.i.i.i80 = load ptr, ptr %i.ko, align 8, !noalias !5176 ; 2 uses
  br i1 %.not16.i.i.i.i78, label %bb.bl, label %bb.bm

._crit_edge373:                                   ; preds = %bb.bk, %bb.bi
  %i.kr = load i64, ptr %i.jx, align 8, !alias.scope !5174, !noundef !6
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 128
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !5175, !noundef !6
  %i.ku = icmp slt i64 %i.kr, %i.kt
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

bb.bl:                                            ; preds = %.lr.ph372
  %bcmp.i.i.i.i84 = call i32 @bcmp(ptr nonnull %.pre.i.i.i.i79, ptr nonnull %.pre14.i.i.i.i80, i64 %i.kn), !noalias !5176
  %.not17.i.i.i.i85 = icmp eq i32 %bcmp.i.i.i.i84, 0
  br i1 %.not17.i.i.i.i85, label %bb.bk, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph372
  %.lcssa.i.i.i.i81 = phi i64 [ %i.kq, %.lr.ph372 ], [ %i.kn, %bb.bl ] ; 2 uses
  %i.kv = sub i64 %i.kn, %.lcssa.i.i.i.i81
  %..i.i.i.i82 = call i64 @llvm.umin.i64(i64 %i.kn, i64 %.lcssa.i.i.i.i81)
  %i.kw = call i32 @memcmp(ptr nonnull %.pre.i.i.i.i79, ptr nonnull %.pre14.i.i.i.i80, i64 %..i.i.i.i82), !noalias !5176 ; 2 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = icmp eq i32 %i.kw, 0
  %spec.store.select.i.i.i.i83 = select i1 %i.ky, i64 %i.kv, i64 %i.kx
  %i.kz = icmp slt i64 %spec.store.select.i.i.i.i83, 0
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i": ; preds = %bb.bm, %._crit_edge373, %bb.bj
  %.sroa.0.0.i.i.i.i74 = phi i1 [ %i.kh, %bb.bj ], [ %i.kz, %bb.bm ], [ %i.ku, %._crit_edge373 ] ; 2 uses
  %i.la = xor i1 %.sroa.0.0.i.i.i.i74, true
  %i.lb = getelementptr inbounds i8, ptr %.sroa.19.19.i72, i64 -136 ; 3 uses
  %.sroa.01.0.i.i75 = select i1 %.sroa.0.0.i.i.i.i74, ptr %i.lb, ptr %2
  %i.lc = getelementptr inbounds nuw [136 x i8], ptr %.sroa.01.0.i.i75, i64 %.sroa.11.110.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lc, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.111.i70, i64 136, i1 false), !alias.scope !5177, !noalias !5178
  %i.ld = zext i1 %i.la to i64
  %i.le = add i64 %.sroa.11.110.i71, %i.ld        ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 136 ; 3 uses
  %i.lg = icmp ult ptr %i.lf, %i.jy
  br i1 %i.lg, label %.lr.ph.i69, label %._crit_edge.i61

bb.bn:                                            ; preds = %._crit_edge.i61
  %i.lh = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i62, i64 -136
  %i.li = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.li, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.1.lcssa.i64, i64 136, i1 false), !alias.scope !5177, !noalias !5179
  %i.lj = add i64 %.sroa.11.1.lcssa.i63, 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i64, i64 136
  br label %bb.bh

bb.bo:                                            ; preds = %._crit_edge.i61
  %i.ll = mul i64 %.sroa.11.1.lcssa.i63, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph133, ptr nonnull align 8 %2, i64 %i.ll, i1 false), !alias.scope !5177
  %i.lm = sub i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i63 ; 6 uses
  %.not18.i65 = icmp eq i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i63
  br i1 %.not18.i65, label %.outer._crit_edge.thread, label %.lr.ph16.i66

.lr.ph16.i66:                                     ; preds = %bb.bo
  %i.ln = getelementptr [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 3 uses
  %.neg488 = add i64 %.sroa.11.1.lcssa.i63, 1
  %xtraiter483 = and i64 %i.lm, 1
  %i.lo = icmp eq i64 %.sroa.15.0126362, %.neg488
  br i1 %i.lo, label %.epil.preheader476, label %.lr.ph16.i66.new

.lr.ph16.i66.new:                                 ; preds = %.lr.ph16.i66
  %unroll_iter486 = and i64 %i.lm, -2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph16.i66.new
  %.sroa.04.014.i67 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %i.ls, %bb.bp ] ; 5 uses
  %niter487 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %niter487.next.1, %bb.bp ]
  %i.lp = xor i64 %.sroa.04.014.i67, -1
  %i.lq = getelementptr [136 x i8], ptr %i.ju, i64 %i.lp
  %i.lr = getelementptr [136 x i8], ptr %i.ln, i64 %.sroa.04.014.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lr, ptr noundef nonnull align 8 dereferenceable(136) %i.lq, i64 136, i1 false), !alias.scope !5177
  %i.ls = add nuw i64 %.sroa.04.014.i67, 2        ; 2 uses
  %i.lt = xor i64 %.sroa.04.014.i67, -2
  %i.lu = getelementptr [136 x i8], ptr %i.ju, i64 %i.lt
  %i.lv = getelementptr [136 x i8], ptr %i.ln, i64 %.sroa.04.014.i67
  %i.lw = getelementptr i8, ptr %i.lv, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lw, ptr noundef nonnull align 8 dereferenceable(136) %i.lu, i64 136, i1 false), !alias.scope !5177
  %niter487.next.1 = add i64 %niter487, 2         ; 2 uses
  %niter487.ncmp.1 = icmp eq i64 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, label %bb.bp

_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa: ; preds = %bb.bp
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit, label %.epil.preheader476

.epil.preheader476:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, %.lr.ph16.i66
  %.sroa.04.014.i67.epil.init = phi i64 [ 0, %.lr.ph16.i66 ], [ %i.ls, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod485 = trunc i64 %i.lm to i1
  call void @llvm.assume(i1 %lcmp.mod485)
  %i.lx = xor i64 %.sroa.04.014.i67.epil.init, -1
  %i.ly = getelementptr [136 x i8], ptr %i.ju, i64 %i.lx
  %i.lz = getelementptr [136 x i8], ptr %i.ln, i64 %.sroa.04.014.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lz, ptr noundef nonnull align 8 dereferenceable(136) %i.ly, i64 136, i1 false), !alias.scope !5177
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, %.epil.preheader476
  %i.ma = icmp ugt i64 %.sroa.11.1.lcssa.i63, %.sroa.15.0126362
  br i1 %i.ma, label %bb.bq, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit", !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h349116586d53f114E.exit

bb.bq:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i63, i64 noundef %.sroa.15.0126362, i64 noundef %.sroa.15.0126362, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #45, !noalias !5180
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit
  %i.mb = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mc = icmp ult i64 %i.lm, 33
  br i1 %i.mc, label %.outer._crit_edge, label %.lr.ph

bb.br:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @182, ptr %i.a, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.mg, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #45
  unreachable

bb.bs:                                            ; preds = %bb.be
  %7 = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph133) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.jf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.mh, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 1 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h004ca37d1eed6459E"() unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i10 = extractvalue { i8, i1 } %i.a, 1
  br i1 %.sroa.18.0.in.i10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
  %.pn = phi { i8, i1 } [ %i.b, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread" ], [ %i.a, %bb.a ]
  %.sroa.01.0.i12 = extractvalue { i8, i1 } %.pn, 0
  switch i8 %.sroa.01.0.i12, label %default.unreachable [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
    i8 1, label %.preheader
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"
    i8 3, label %bb.d
  ], !prof !36

._crit_edge:                                      ; preds = %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread", %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i64 1), align 1
  store atomic i8 2, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" release, align 1
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit": ; preds = %.lr.ph, %.preheader, %._crit_edge
  ret ptr getelementptr inbounds nuw (i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i64 1)

default.unreachable:                              ; preds = %.lr.ph
  unreachable

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread": ; preds = %.preheader, %.lr.ph
  %i.b = cmpxchg ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.b, 1
  br i1 %.sroa.18.0.in.i, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.b
  %i.c = load atomic i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" acquire, align 1 ; 2 uses
  %i.d = icmp ult i8 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  switch i8 %i.c, label %default.unreachable15 [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
    i8 1, label %bb.b
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"
    i8 3, label %bb.c
  ], !prof !36

default.unreachable15:                            ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  tail call void @llvm.x86.sse2.pause() #42
  br label %.preheader

bb.c:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #45
  unreachable

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h0f93d9e76f2b9f74E"() unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8), i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i10 = extractvalue { i8, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread"
  %.pn = phi { i8, i1 } [ %i.t, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread" ], [ %i.f, %bb.a ]
  %.sroa.01.0.i12 = extractvalue { i8, i1 } %.pn, 0
  switch i8 %.sroa.01.0.i12, label %default.unreachable [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread"
    i8 1, label %.preheader
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit"
    i8 3, label %bb.q
  ], !prof !36

._crit_edge:                                      ; preds = %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8), ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke fastcc noundef nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h4d3dd46e6944d6d8E"()
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN10prometheus17process_collector16ProcessCollector8for_self17hab9b02288a1e1827E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5194
  %i.h = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #42, !noalias !5194 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i", !prof !11

bb.b:                                             ; preds = %.noexc.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #45
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !5195

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr68drop_in_place$LT$prometheus..process_collector..ProcessCollector$GT$17h40a6a75fac1340cfE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #46, !noalias !5195
  br label %.body.i.i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i": ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !5195
  invoke void @_ZN10prometheus8registry8Registry8register17h1f532ff5185040d5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @116)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i", %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.h ] ; 2 uses
  %i.l = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !5196
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %.body

bb.e:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17habf4c9d95c4e59b9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.k

bb.f:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5197)
  %i.n = load i64, ptr %i.c, align 8, !range !13, !alias.scope !5197, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.n, -9223372036854775804
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #45
          to label %bb.i unwind label %bb.h, !noalias !5197

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$prometheus..errors..Error$GT$17h9f32d9ce0c792e64E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #46
          to label %.body.i.i.i unwind label %bb.j, !noalias !5197

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !5197
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.l:                                             ; preds = %._crit_edge
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", align 8
  store atomic i8 2, ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8) release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit": ; preds = %.lr.ph, %.preheader, %bb.m
  ret ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE"

.body:                                            ; preds = %bb.l, %bb.e, %.body.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.l ], [ %eh.lpad-body.i.i.i, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @"_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1784bb9643b282d4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr39drop_in_place$LT$spin..once..Finish$GT$17h7e06b854c4180c85E.exit" unwind label %bb.n

bb.n:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_7
begin_hunk_8_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17habf4c9d95c4e59b9E":bb.a
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -384 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.p to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h50847adf967d46b8E.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h50847adf967d46b8E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, i64 %i.w ; 2 uses
  %i.y = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 -16
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !5738 ; 5 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -8
  %.val6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !5738, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  %i.ab = load ptr, ptr %.val6.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !6, !noalias !5738 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h50847adf967d46b8E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.ab(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !5738

bb.f:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h50847adf967d46b8E.exit.i.i.i.i.i.i.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !10, !invariant.load !6, !noalias !5738 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !26, !invariant.load !6, !noalias !5738 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$RP$$GT$17hdccefb5371cdb553E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #42, !noalias !5738
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$RP$$GT$17hdccefb5371cdb553E.exit.i.i.i.i.i.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !10, !invariant.load !6, !noalias !5738 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !26, !invariant.load !6, !noalias !5738 ; 2 uses
  %i.an = icmp ult i64 %i.am, -9223372036854775807
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %.body.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.am) #42, !noalias !5738
  br label %.body.i.i.i

"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$RP$$GT$17hdccefb5371cdb553E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.f
  %i.ap = icmp eq i64 %i.y, 0
  br i1 %i.ap, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h92ce3f8c29d20741E.exit.i.i.i.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h92ce3f8c29d20741E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$RP$$GT$17hdccefb5371cdb553E.exit.i.i.i.i.i.i.i.i.i", %bb.b
  %i.aq = mul i64 %i.e, 24
  %i.ar = icmp slt i64 %i.e, 768614336404564650
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = and i64 %i.aq, -16                      ; 2 uses
  %i.at = add i64 %i.as, 32                       ; 2 uses
  %i.au = add nsw i64 %i.e, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.av, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %"_ZN4core3ptr134drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$$GT$17he0a60638f893c2daE.exit.i.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h92ce3f8c29d20741E.exit.i.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.c, align 8, !alias.scope !5736, !nonnull !6, !noundef !6
  %i.ba = sub i64 -32, %i.as
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !5736
  br label %"_ZN4core3ptr134drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$$GT$17he0a60638f893c2daE.exit.i.i.i"

.body.i.i.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i", %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call fastcc void @"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.bc) #46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.val11.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !5741
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val12.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !5741, !noundef !6
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE"(ptr %.val11.i.i.i, i64 %.val12.i.i.i) #46, !noalias !5741
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !5742, !noundef !6
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit.i.i.i", label %bb.o

"_ZN4core3ptr134drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$$GT$17he0a60638f893c2daE.exit.i.i.i": ; preds = %bb.h, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h92ce3f8c29d20741E.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5747)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5748, !noundef !6 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$$GT$17he0a60638f893c2daE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5749)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !5750, !noundef !6 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h66dde6d58351f9f2E.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bi, align 8, !alias.scope !5750, !nonnull !6, !noundef !6 ; 3 uses
  %.val3.i.i.i.i.i.i.i13.i.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !5751
  %i.bq = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i13.i.i.i, splat (i8 -1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = bitcast <16 x i1> %i.bq to i16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i", %bb.j
  %.sroa.07.018.i.i.i.i.i.i14.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %.sroa.07.1.i.i.i.i.i.i20.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.br, %bb.j ], [ %.sroa.6.1.i.i.i.i.i.i19.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i16.i.i.i = phi i16 [ %i.bs, %bb.j ], [ %i.cb, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i17.i.i.i = phi i64 [ %i.bn, %bb.j ], [ %i.ce, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i18.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i16.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i18.i.i.i, label %.lr.ph.i.i.i.i.i.i.i24.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4b19437af1f1584dE.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i24.i.i.i:                     ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i24.i.i.i
  %i.bt = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i24.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i15.i.i.i, %bb.k ] ; 2 uses
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i24.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i14.i.i.i, %bb.k ]
  %.val11.i.i.i.i.i.i.i25.i.i.i = load <16 x i8>, ptr %i.bt, align 16, !noalias !5752
  %i.bv = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i25.i.i.i, splat (i8 -1)
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -512 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i26.i.i.i = bitcast <16 x i1> %i.bv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i27.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i26.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i24.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4b19437af1f1584dE.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4b19437af1f1584dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i24.i.i.i, %bb.k
  %.sroa.6.1.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i15.i.i.i, %bb.k ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i24.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i20.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i14.i.i.i, %bb.k ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i24.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i21.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i16.i.i.i, %bb.k ], [ %.cast.i.i.i.i.i.i.i26.i.i.i, %.lr.ph.i.i.i.i.i.i.i24.i.i.i ] ; 3 uses
  %i.by = add i16 %.lcssa.i.i.i.i.i.i.i21.i.i.i, -1
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i21.i.i.i, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.lcssa.i.i.i.i.i.i.i21.i.i.i
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i20.i.i.i, i64 %i.cc ; 2 uses
  %i.ce = add i64 %.sroa.109.015.i.i.i.i.i.i17.i.i.i, -1 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -32
  %.val.i.i.i.i.i.i22.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !5753, !noalias !5750 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i.i.i.i.i22.i.i.i, 0
  br i1 %i.cg, label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4b19437af1f1584dE.exit.i.i.i.i.i.i.i.i.i"
  %i.ch = getelementptr i8, ptr %i.cd, i64 -24
  %.val6.i.i.i.i.i.i23.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !5750, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i23.i.i.i, i64 noundef %.val.i.i.i.i.i.i22.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5754
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4b19437af1f1584dE.exit.i.i.i.i.i.i.i.i.i"
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h66dde6d58351f9f2E.exit.i.i.i.i.i.i.i.i, label %bb.k

_ZN9hashbrown3raw13RawTableInner13drop_elements17h66dde6d58351f9f2E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$u64$RP$$GT$17hf30c0caf4341e1f0E.exit.i.i.i.i.i.i.i.i.i", %bb.i
  %i.cj = shl i64 %i.bk, 5                        ; 2 uses
  %i.ck = add i64 %i.cj, 32                       ; 2 uses
  %i.cl = add i64 %i.bk, 17
  %i.cm = add i64 %i.cl, %i.ck                    ; 4 uses
  %i.cn = icmp uge i64 %i.cm, %i.ck
  %i.co = icmp ult i64 %i.cm, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cn)
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp eq i64 %i.cm, 0
  br i1 %i.cp, label %"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h66dde6d58351f9f2E.exit.i.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %i.bi, align 8, !alias.scope !5748, !nonnull !6, !noundef !6
  %i.cr = sub nuw nsw i64 -32, %i.cj
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !5748
  br label %"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i": ; preds = %bb.m, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h66dde6d58351f9f2E.exit.i.i.i.i.i.i.i.i, %"_ZN4core3ptr134drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$alloc..boxed..Box$LT$dyn$u20$prometheus..metrics..Collector$GT$$GT$$GT$17he0a60638f893c2daE.exit.i.i.i"
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.val9.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !5741 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val10.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !5741, !noundef !6 ; 4 uses
  %i.cv = icmp eq i64 %.val10.i.i.i, 0
  br i1 %i.cv, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i"
  %i.cw = shl i64 %.val10.i.i.i, 3
  %i.cx = icmp slt i64 %.val10.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = and i64 %i.cw, -16                      ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add nsw i64 %.val10.i.i.i, 17
  %i.db = add i64 %i.da, %i.cz                    ; 4 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dc)
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %i.df = sub nuw nsw i64 -16, %i.cy
  %i.dg = getelementptr inbounds i8, ptr %.val9.i.i.i, i64 %i.df
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !5741
  br label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i"

bb.o:                                             ; preds = %.body.i.i.i
  tail call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h75607476e5bbcd71E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.bf)
  br label %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i": ; preds = %bb.n, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$u64$GT$$GT$17h12efd05c687229dfE.exit.i.i.i"
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !5755, !noundef !6
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit28.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i"
  tail call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h75607476e5bbcd71E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.dh)
  br label %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit28.i.i.i"

"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit.i.i.i": ; preds = %bb.o, %.body.i.i.i
  %.val7.i.i.i = load i64, ptr %i.b, align 8, !range !8, !alias.scope !5741, !noundef !6 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val7.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.q, label %.body

bb.q:                                             ; preds = %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit.i.i.i"
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !5741, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5756
  br label %.body

"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit28.i.i.i": ; preds = %bb.p, %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u64$GT$$GT$17h8819a91fd059f54fE.exit.i.i.i"
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !8, !alias.scope !5741, !noundef !6 ; 2 uses
  %switch30.i.i.i = icmp sgt i64 %.val.i.i.i, 0
  br i1 %switch30.i.i.i, label %bb.r, label %"_ZN4core3ptr124drop_in_place$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h5d0c388e428a656fE.exit"

bb.r:                                             ; preds = %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit28.i.i.i"
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val6.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !5741, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5757
  br label %"_ZN4core3ptr124drop_in_place$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h5d0c388e428a656fE.exit"

.body:                                            ; preds = %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit.i.i.i", %bb.q
  %i.dm = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.dm, label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit", label %bb.s

bb.s:                                             ; preds = %.body
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.t, label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit"

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 240, i64 noundef 8) #42
  br label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit"

"_ZN4core3ptr124drop_in_place$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h5d0c388e428a656fE.exit": ; preds = %bb.r, %"_ZN4core3ptr138drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h8e168aac9f20a8a1E.exit28.i.i.i"
  %i.dq = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.dq, label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit2", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr124drop_in_place$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h5d0c388e428a656fE.exit"
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ds = atomicrmw add ptr %i.dr, i64 -1 release, align 8
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.v, label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit2"

bb.v:                                             ; preds = %bb.u
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 240, i64 noundef 8) #42
  br label %"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit2"

"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit2": ; preds = %"_ZN4core3ptr124drop_in_place$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$GT$17h5d0c388e428a656fE.exit", %bb.u, %bb.v
  ret void

"_ZN4core3ptr176drop_in_place$LT$alloc..sync..Weak$LT$lock_api..rwlock..RwLock$LT$parking_lot..raw_rwlock..RawRwLock$C$prometheus..registry..RegistryCore$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h986ec91d91506719E.exit": ; preds = %bb.t, %bb.s, %.body
  resume { ptr, i32 } %i.ai
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hafe28e9173b8b013E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5770)
  tail call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(152) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5772, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !5772, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5773)
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.h, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.h = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5775)
  %.val.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !5776, !noalias !5772 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !5776, !noalias !5772, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5777
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5778)
  %.val.i4.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !5779, !noalias !5772 ; 2 uses
  %i.l = icmp eq i64 %.val.i4.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val1.i5.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5779, !noalias !5772, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5780
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.n = icmp eq i64 %i.h, %.val1.i.i
  br i1 %i.n, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i.i", %bb.a
  %.val2.i.i = load i64, ptr %i.c, align 8, !range !10, !alias.scope !5772, !noundef !6 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr84drop_in_place$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$GT$17h86afa70acf3357d8E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  %i.p = mul nuw i64 %.val2.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !5772
  br label %"_ZN4core3ptr84drop_in_place$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$GT$17h86afa70acf3357d8E.exit"

"_ZN4core3ptr84drop_in_place$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$GT$17h86afa70acf3357d8E.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %"_ZN4core3ptr136drop_in_place$LT$alloc..sync..Weak$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf995d3195ad79b4cE.exit2", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr84drop_in_place$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$GT$17h86afa70acf3357d8E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %"_ZN4core3ptr136drop_in_place$LT$alloc..sync..Weak$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf995d3195ad79b4cE.exit2"

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 168, i64 noundef 8) #42
  br label %"_ZN4core3ptr136drop_in_place$LT$alloc..sync..Weak$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf995d3195ad79b4cE.exit2"

"_ZN4core3ptr136drop_in_place$LT$alloc..sync..Weak$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf995d3195ad79b4cE.exit2": ; preds = %"_ZN4core3ptr84drop_in_place$LT$prometheus..value..Value$LT$prometheus..atomic64..AtomicI64$GT$$GT$17h86afa70acf3357d8E.exit", %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h7361105333ceb6e1E"(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #42
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #42
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h407dee01a5286f91E.exit2"
end_hunk_8
begin_hunk_9_@"_ZN98_$LT$prometheus..process_collector..ProcessCollector$u20$as$u20$prometheus..metrics..Collector$GT$7collect17h11e04a2df0f1d8f3E":bb.a
  %.pre.i.i120 = load i64, ptr %i.de, align 8, !alias.scope !6384
  %.pre159 = load ptr, ptr %i.dd, align 8, !alias.scope !6384
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc.i119, %bb.bn
  %i.gz = phi ptr [ %i.gi, %bb.bn ], [ %.pre159, %.noexc.i119 ]
  %i.ha = phi i64 [ %i.gm, %bb.bn ], [ %.pre.i.i120, %.noexc.i119 ] ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 115292150460684698
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [80 x i8], ptr %i.gz, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr nonnull readonly align 8 %.sroa.4.0.copyload.i114, i64 %.idx155, i1 false), !noalias !6385
  %i.hd = add nuw nsw i64 %i.ha, %.sroa.5.0.copyload.i116
  store i64 %i.hd, ptr %i.de, align 8, !alias.scope !6384
  %i.he = icmp eq i64 %.sroa.0.0.copyload.i112, 0
  br i1 %i.he, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hf = mul nuw i64 %.sroa.0.0.copyload.i112, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i114, i64 noundef %i.hf, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6386
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123": ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6387)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val4.i = load i32, ptr %i.hg, align 8, !range !16, !alias.scope !6387, !noundef !6
  %i.hh = call noundef i32 @close(i32 noundef %.val4.i) #42, !noalias !6387 ; 0 uses
  %.val.i124 = load i64, ptr %i.v, align 8, !alias.scope !6387 ; 2 uses
  %i.hi = icmp eq i64 %.val.i124, 0
  br i1 %i.hi, label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit", label %bb.bs

bb.bs:                                            ; preds = %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123"
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i125 = load ptr, ptr %i.hj, align 8, !alias.scope !6387, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i125, i64 noundef %.val.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6387
  br label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit"

"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit": ; preds = %bb.bs, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123", %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.bt:                                            ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..MetricFamily$GT$$GT$17h9ea4378102ccfcf3E"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #46
  br label %.thread170

bb.bu:                                            ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hl, align 8
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h9239a85932bb9657E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b937d6ada5a72b2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hccfa02af68edd295E(i64 %.val, i64 %.val8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6399, !noundef !6
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i", !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0f17c4ed12d1935bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true), !noalias !6400 ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6401, !nonnull !6, !noundef !6 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !6401, !noundef !6 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %i.aj, %bb.f ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %.sroa.6.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !6402 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.o, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.026.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.val3.i.i = load i64, ptr %i.v, align 8, !noalias !6403, !noundef !6
  %i.w = icmp eq i64 %1, %.val3.i.i
  br i1 %i.w, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit", label %bb.d, !prof !14

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !11

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.05.026.i.i, -1
  %i.y = and i16 %i.x, %.sroa.05.026.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.aa, 0      ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ac
  %i.ad = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ae = and i64 %i.ad, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ae, %bb.e ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !6400, !noundef !6 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !6400
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %i.ap = icmp ne i16 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !6404
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.as = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ar, %bb.h ], [ %.sroa.6.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6404)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.au = and i8 %i.as, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = and i64 %i.aw, %.val7.i
  store i8 %i.k, ptr %i.at, align 1, !noalias !6404
  %i.ay = getelementptr i8, ptr %.val.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.k, ptr %i.az, align 1, !noalias !6404
  %i.ba = load <2 x i64>, ptr %i.e, align 8, !alias.scope !6404
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.av, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.e, align 8, !alias.scope !6404
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %1, ptr %i.bf, align 8, !noalias !6404
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit": ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 65) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i.not = icmp eq i64 %i.c, 0
  br i1 %.not6.i.not, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread18, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread18: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.26 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !6
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread18, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread18 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread18 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2032f093ad8cc711E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #46
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !6407
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !27

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !6407
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !28

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !6
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !11

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !6
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !6
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_9
