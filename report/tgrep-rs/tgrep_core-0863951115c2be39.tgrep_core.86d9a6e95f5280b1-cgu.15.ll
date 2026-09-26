Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.15?download=true
inline.NumInlined: 747
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@26 = private unnamed_addr constant [24 x i8] c"tgrep-core/src/query.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\17\00\00\00\00\00\00\00\83\01\00\00&\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\17\00\00\00\00\00\00\00\83\01\00\000\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\17\00\00\00\00\00\00\00\83\01\00\00>\00\00\00" }>, align 8
@30 = private unnamed_addr constant [26 x i8] c"tgrep-core/src/builder.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"\19\00\00\00\00\00\00\00\E0\02\00\004\00\00\00" }>, align 8
@32 = private unnamed_addr constant [4 x i8] c"core", align 1
@33 = private unnamed_addr constant [10 x i8] c"ignorecase", align 1
@34 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3set7HashSetNtNtBI_4path7PathBufEEEECsbzNSmZPCnTx_10tgrep_core, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs5Xr050g3D4S_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3set7HashSetNtNtB8_4path7PathBufEEENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbzNSmZPCnTx_10tgrep_core }>, align 8
@36 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@37 = private unnamed_addr constant [47 x i8] c"assertion failed: vec.capacity() - start >= len", align 1
@38 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-1.11.0/src/iter/collect/consumer.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"n\00\00\00\00\00\00\00\12\00\00\00\09\00\00\00" }>, align 8
@40 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.14/src/util/pool.rs\00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"k\00\00\00\00\00\00\00=\02\00\00\1C\00\00\00" }>, align 8
@42 = private unnamed_addr constant [33 x i8] c"failed to write the buffered data", align 1
@43 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @42, [9 x i8] c"!\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@44 = private unnamed_addr constant [5 x i8] c"index", align 1
@45 = private unnamed_addr constant [28 x i8] c"tgrep-core/src/git_index.rs\00", align 1
@46 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsbzNSmZPCnTx_10tgrep_core, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\1B\00\00\00\00\00\00\00\1D\01\00\00*\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\1B\00\00\00\00\00\00\00\1C\01\00\00-\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\1B\00\00\00\00\00\00\00\0A\01\00\00-\00\00\00" }>, align 8
@50 = private unnamed_addr constant [6 x i8] c"config", align 1
@51 = private unnamed_addr constant [10 x i8] c"extensions", align 1
@52 = private unnamed_addr constant [14 x i8] c"worktreeConfig", align 1
@53 = private unnamed_addr constant [15 x i8] c"config.worktree", align 1
@54 = private unnamed_addr constant [9 x i8] c"commondir", align 1
@55 = private unnamed_addr constant [4 x i8] c".git", align 1
@56 = private unnamed_addr constant [7 x i8] c"gitdir:", align 1
@_RNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner7COUNTER = external global { { { i64 } } }
@57 = private unnamed_addr constant [43 x i8] c"regex: thread ID allocation space exhausted", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"k\00\00\00\00\00\00\00^\01\00\00\11\00\00\00" }>, align 8
@59 = private unnamed_addr constant [45 x i8] c"invalid use of **; must be one path component", align 1
@60 = private unnamed_addr constant [37 x i8] c"unclosed character class; missing ']'", align 1
@61 = private unnamed_addr constant [23 x i8] c"invalid character range", align 1
@62 = private unnamed_addr constant [68 x i8] c"unopened alternate group; missing '{' (maybe escape '}' with '[}]'?)", align 1
@63 = private unnamed_addr constant [68 x i8] c"unclosed alternate group; missing '}' (maybe escape '{' with '[{]'?)", align 1
@64 = private unnamed_addr constant [39 x i8] c"nested alternate groups are not allowed", align 1
@65 = private unnamed_addr constant [12 x i8] c"dangling '\\'", align 1
@66 = private unnamed_addr constant [14 x i8] c"\0BI/O error: \C0\00", align 1
@67 = private unnamed_addr constant [15 x i8] c"\0CJSON error: \C0\00", align 1
@68 = private unnamed_addr constant [22 x i8] c"\13index not found at \C0\00", align 1
@69 = private unnamed_addr constant [20 x i8] c"\11corrupted index: \C0\00", align 1
@70 = private unnamed_addr constant [16 x i8] c"\0Dregex error: \C0\00", align 1
@71 = private unnamed_addr constant [17 x i8] c"\0Eserver error: \C0\00", align 1
@72 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@73 = private unnamed_addr constant [5 x i8] c"a map", align 1
@74 = private unnamed_addr constant [21 x i8] c"an array of length 32", align 1
@75 = private unnamed_addr constant [34 x i8] c"number of read bytes exceeds limit", align 1
@76 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/io/util.rs\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"u\00\00\00\00\00\00\00\F4\00\00\00\09\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"u\00\00\00\00\00\00\00\1B\01\00\00(\00\00\00" }>, align 8
@79 = private unnamed_addr constant [30 x i8] c"assertion failed: index <= len", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"n\00\00\00\00\00\00\00a\00\00\00\0D\00\00\00" }>, align 8
@81 = private unnamed_addr constant [34 x i8] c"too many values pushed to consumer", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"n\00\00\00\00\00\00\00~\00\00\00\09\00\00\00" }>, align 8
@83 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-1.11.0/src/slice/mod.rs\00", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"b\00\00\00\00\00\00\00[\03\00\00(\00\00\00" }>, align 8
@85 = private unnamed_addr constant [4 x i8] c"None", align 1
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCsbzNSmZPCnTx_10tgrep_core }>, align 8
@87 = private unnamed_addr constant [4 x i8] c"Some", align 1
@88 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@89 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@90 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@91 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@92 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@93 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsbzNSmZPCnTx_10tgrep_core }>, align 8
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs9oNxn7AafV1_7globset9ErrorKindNtB6_5Debug3fmtCsbzNSmZPCnTx_10tgrep_core }>, align 8
@96 = private unnamed_addr constant [5 x i8] c"Error", align 1
@97 = private unnamed_addr constant [4 x i8] c"glob", align 1
@98 = private unnamed_addr constant [4 x i8] c"kind", align 1
@99 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@100 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8669492143975730732 to ptr), ptr inttoptr (i64 -3633764041529900764 to ptr) }>, align 8
@101 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 368994047359312973 to ptr), ptr inttoptr (i64 5607712199609603308 to ptr) }>, align 8
@102 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6442881011103088862 to ptr), ptr inttoptr (i64 44924448347687813 to ptr) }>, align 8
@103 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7476139267491839551 to ptr), ptr inttoptr (i64 5958738223589126043 to ptr) }>, align 8
@104 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2967678025193494254 to ptr), ptr inttoptr (i64 475058894427441962 to ptr) }>, align 8
@105 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@106 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @105, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@107 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/io/write.rs\00", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @107, [16 x i8] c"u\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbzNSmZPCnTx_10tgrep_core = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbzNSmZPCnTx_10tgrep_core.233 = private unnamed_addr constant [6 x ptr] [ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsbzNSmZPCnTx_10tgrep_core9git_indexNtB3_12TrackedFiles20fingerprint_matchingNCNCNvMs0_NtB5_9gitignoreNtB1u_21CaseInsensitiveIgnore11fingerprint00EB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit
  %i.d = phi ptr [ %i.am, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.0.012 = phi i64 [ %i.ai, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ], [ 0, %bb.a ]
  %.sroa.02.011 = phi i64 [ %i.aj, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ], [ 0, %bb.a ]
  %.sroa.04.010 = phi i64 [ %i.ak, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %i.h = icmp samesign eq i64 %i.g, 0
  br i1 %i.h, label %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.g, 4
  br i1 %i.i, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ac, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ -3750763034362895579, %.preheader.i.preheader.new ], [ %i.ab, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.j, align 1, !alias.scope !36, !noundef !12
  %i.k = zext i8 %.val.i.i to i64
  %i.l = xor i64 %.sroa.02.0.i.i, %i.k
  %i.m = mul i64 %i.l, 1099511628211
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.val.i.i.1 = load i8, ptr %i.o, align 1, !alias.scope !36, !noundef !12
  %i.p = zext i8 %.val.i.i.1 to i64
  %i.q = xor i64 %i.m, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.val.i.i.2 = load i8, ptr %i.t, align 1, !alias.scope !36, !noundef !12
  %i.u = zext i8 %.val.i.i.2 to i64
  %i.v = xor i64 %i.r, %i.u
  %i.w = mul i64 %i.v, 1099511628211
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %.val.i.i.3 = load i8, ptr %i.y, align 1, !alias.scope !36, !noundef !12
  %i.z = zext i8 %.val.i.i.3 to i64
  %i.aa = xor i64 %i.w, %i.z
  %i.ab = mul i64 %i.aa, 1099511628211            ; 3 uses
  %i.ac = add nuw i64 %.sroa.04.0.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa, label %.preheader.i

_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ac, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ -3750763034362895579, %.preheader.i.preheader ], [ %i.ab, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod30)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.ah, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.ag, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i8, ptr %i.ad, align 1, !alias.scope !36, !noundef !12
  %i.ae = zext i8 %.val.i.i.epil to i64
  %i.af = xor i64 %.sroa.02.0.i.i.epil, %i.ae
  %i.ag = mul i64 %i.af, 1099511628211            ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit, label %.preheader.i.epil, !llvm.loop !35

_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit: ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ -3750763034362895579, %.lr.ph ], [ %i.ab, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit.loopexit.unr-lcssa ], [ %i.ag, %.preheader.i.epil ] ; 2 uses
  %i.ai = add i64 %.sroa.0.012, 1                 ; 2 uses
  %i.aj = xor i64 %.sroa.0.0.i.i, %.sroa.02.011   ; 2 uses
  %i.ak = add i64 %.sroa.0.0.i.i, %.sroa.04.010   ; 2 uses
  %i.al = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit, %bb.a
  %.sroa.04.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ]
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ]
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ai, %_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index15membership_hash.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.lcssa, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.lcssa, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.04.0.lcssa, ptr %i.ao, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.c

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a) #31
  %i.b = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorReEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !39
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 105) 80, i64 noundef 8) #32, !noalias !39 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorNtNtB4_6string6StringEEE3newCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructINtNtB5_7wrapper12MessageErrorReEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !46
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 105) 72, i64 noundef 8) #32, !noalias !46 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorReEEE3newCsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.b, align 8, !range !15, !alias.scope !47, !noundef !12
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtBJ_7wrapper12MessageErrorReEEE3newCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !50
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 105) 104, i64 noundef 8) #32, !noalias !50 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorEE3newCsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorEE3newCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs5Xr050g3D4S_3std4sync6poison7condvarNtB3_7Condvar4waityECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1, ptr noundef nonnull align 8 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %3 to i8                         ; 2 uses
  invoke void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %1, ptr noundef nonnull align 4 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardyEECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %2, i8 %i.a) #29
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4
  %.not = icmp ne i8 %i.d, 0
  %spec.select = zext i1 %.not to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.f, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !12
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noundef !12
  switch i8 %i.c, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit
    i8 2, label %bb.c
  ]

default.unreachable8:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !18, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCs4ciboHeBKjP_15crossbeam_epoch7default9collector()
  %i.i = tail call noundef ptr @_RNvMs1_NtCs4ciboHeBKjP_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  %.pre = load i8, ptr %i.b, align 8, !range !17
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable8 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !prof !51

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2072
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !12 ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8
  %i.p = icmp eq i64 %i.l, 0
  %i.q = icmp eq i64 %i.n, 1
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit

bb.i:                                             ; preds = %bb.e
  %i.r = call noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr %i.r)
  call void @_RNvNtCs5Xr050g3D4S_3std7process5abort() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtB7_4iter8plumbing8Producer8split_atCsbzNSmZPCnTx_10tgrep_core:bb.a
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String8split_atCsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #34, !noalias !893
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String8split_atCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProduceryENtNtNtB7_4iter8plumbing8Producer8split_atCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSy8split_atCsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #34, !noalias !897
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSy8split_atCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE9flush_bufCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i
    i64 1, label %bb.e
  ], !prof !21

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !900
  store i8 3, ptr %i.a, align 8, !alias.scope !900
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsD_NtNtNtNtCs5Xr050g3D4S_3std3sys2io11kernel_copy5linuxINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtBd_2fs4FileENtB5_9CopyWrite10propertiesCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  tail call void @_RNvXsh_NtNtNtNtCs5Xr050g3D4S_3std3sys2io11kernel_copy5linuxNtNtBd_2fs4FileNtB5_9CopyWrite10properties(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !12
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deINtNtB4_5impls12ArrayVisitorAhj20_ENtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deINtNvXs3d_NtB4_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB4_11Deserialize11deserialize10MapVisitorNtNtB13_6string6StringbENtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deINtNvXs3e_NtB4_5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtB4_11Deserialize11deserialize10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryNtNtNtB13_4hash6random11RandomStateENtB4_8Expected3fmtB3g_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deINtNvXs3e_NtB4_5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtB4_11Deserialize11deserialize10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtB13_4hash6random11RandomStateENtB4_8Expected3fmtB3g_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNtB4_5impls11BoolVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXs14_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXs17_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs17_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXsS_NtB4_5implsxNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsS_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsxNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXsY_NtB4_5implshNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBa_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBa_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtCs9oNxn7AafV1_7globset5ErrorE4fromCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCsjYKKaZ3qa7A_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @9)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error18construct_from_stdNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.e = call fastcc noalias noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error9constructNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9oNxn7AafV1_7globset5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #29
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !903
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !903
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !903
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !906
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !906
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !906
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtB8_6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringmENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !909
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !909
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !909
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !912
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !912
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !912
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_Cs9oNxn7AafV1_7globsetNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @100, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @101, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @102, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
end_hunk_1
