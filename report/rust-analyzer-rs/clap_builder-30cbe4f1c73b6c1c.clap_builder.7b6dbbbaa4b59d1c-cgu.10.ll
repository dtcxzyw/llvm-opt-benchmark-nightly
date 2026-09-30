Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/clap_builder-30cbe4f1c73b6c1c.clap_builder.7b6dbbbaa4b59d1c-cgu.10?download=true
inline.NumInlined: 176
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [126 x i8] c"\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\FF\00\00\00\FF\00\00\00\00\00\FE\00\00\00\00\00\00\00\00\00\00\00\00\00", align 2
@_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@1 = private unnamed_addr constant [25 x i8] c"\14unknown ValueHint: `\C0\01`\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"\00\01\02", align 1
@3 = private unnamed_addr constant [4 x i8] c"auto", align 1
@4 = private unnamed_addr constant [6 x i8] c"always", align 1
@5 = private unnamed_addr constant [5 x i8] c"never", align 1
@6 = private unnamed_addr constant [20 x i8] c"\11invalid variant: \C0\00", align 1
@switch.table._RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c"\04\06\05", align 8
@switch.table._RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.40 = private unnamed_addr constant [3 x ptr] [ptr @3, ptr @4, ptr @5], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs3newNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsaB0tVqiIPBo_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !21
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs6insertRNtNtCsbSS6DM8SDEO_5alloc6string6StringABK_j1_ECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !4   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE5drainINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.b), !noalias !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.c, align 8, !alias.scope !27, !noalias !28
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !27, !noalias !28
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !27, !noalias !28
  invoke void @_RNvXs1_NtNtCsbSS6DM8SDEO_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE4intoEEECsaB0tVqiIPBo_12clap_builder.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec5drain5DrainNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsaB0tVqiIPBo_12clap_builder.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec5drain5DrainNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsaB0tVqiIPBo_12clap_builder.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterRNtNtBI_6string6StringKj1_ENvYB2m_INtNtB4_7convert4IntoNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE4intoEEECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %bb.a
  call void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB3_5Error3rawReEB5_(i8 noundef range(i8 0, 17) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [208 x i8], align 8               ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 %0, ptr %i.c, align 1
  store i64 2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 -2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i8 -1, ptr %i.f, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i8 -1, ptr %.sroa.019.sroa.5.0..sroa_idx, align 4
  %.sroa.019.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 -1, ptr %.sroa.019.sroa.7.0..sroa_idx, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i16 0, ptr %.sroa.420.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  store i8 -1, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  store i8 -1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  store i8 -1, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 122
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 126
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.1321.0..sroa_idx, align 2
  %.sroa.1321.sroa.5.0..sroa.1321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i8 -1, ptr %.sroa.1321.sroa.5.0..sroa.1321.0..sroa_idx.sroa_idx, align 2
  %.sroa.1321.sroa.7.0..sroa.1321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 150
  store i8 -1, ptr %.sroa.1321.sroa.7.0..sroa.1321.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 154
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 178
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 182
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 199
  store i8 2, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 0, ptr %i.i, align 2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !41
  %i.j = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef 8) #18, !noalias !41 ; 14 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsaB0tVqiIPBo_12clap_builder5error10ErrorInnerE3newBI_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #19
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsaB0tVqiIPBo_12clap_builder5error10ErrorInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.b) #20
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.x, %bb.j ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsaB0tVqiIPBo_12clap_builder5error10ErrorInnerE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc54 unwind label %bb.j

.noexc54:                                         ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsaB0tVqiIPBo_12clap_builder5error10ErrorInnerE3newBI_.exit
  %i.n = load i64, ptr %i.a, align 8, !range !6, !noalias !42, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noalias !42, !noundef !4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.e, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaB0tVqiIPBo_12clap_builder.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %.noexc54
  %i.s = load i64, ptr %i.r, align 8, !noalias !42
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #19
          to label %.noexc55 unwind label %bb.j

.noexc55:                                         ; preds = %bb.e
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaB0tVqiIPBo_12clap_builder.exit.i.i.i: ; preds = %.noexc54
  %i.t = load ptr, ptr %i.r, align 8, !noalias !42, !nonnull !4, !noundef !4 ; 3 uses
  %i.u = icmp samesign ule i64 %2, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCsaB0tVqiIPBo_12clap_builder.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaB0tVqiIPBo_12clap_builder.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !43
  br label %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCsaB0tVqiIPBo_12clap_builder.exit

_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCsaB0tVqiIPBo_12clap_builder.exit: ; preds = %bb.f, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaB0tVqiIPBo_12clap_builder.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsaB0tVqiIPBo_12clap_builder7builder10value_hintNtB2_9ValueHintNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str:bb.a
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %bb.g

bb.f:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.bo = load i64, ptr %i.m, align 1
  %i.bp = icmp ne i64 %i.bo, 7526748012608776550
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.m, align 1
  %i.bt = xor i32 %i.bs, 1886546276
  %i.bu = getelementptr i8, ptr %i.m, i64 3
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 1752457584
  %i.bx = or i32 %i.bt, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.u, label %bb.p

bb.h:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.cb = load i64, ptr %i.m, align 1
  %i.cc = xor i64 %i.cb, 7089075335985461349
  %i.cd = getelementptr i8, ptr %i.m, i64 6
  %i.ce = load i64, ptr %i.cd, align 1
  %i.cf = xor i64 %i.ce, 7526748012608774753
  %i.cg = or i64 %i.cc, %i.cf
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.p

bb.i:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.ck = load i64, ptr %i.m, align 1
  %i.cl = xor i64 %i.ck, 7954604206569910115
  %i.cm = getelementptr i8, ptr %i.m, i64 3
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = xor i64 %i.cn, 7308604897051435373
  %i.cp = or i64 %i.cl, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.p

bb.j:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.ct = load i64, ptr %i.m, align 1
  %i.cu = xor i64 %i.ct, 8314892176759549795
  %i.cv = getelementptr i8, ptr %i.m, i64 5
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 7453010373645657198
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.u, label %bb.p

bb.k:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.dc = load i128, ptr %i.m, align 1
  %i.dd = xor i128 %i.dc, 145495448423350431705174846143701282659
  %i.de = getelementptr i8, ptr %i.m, i64 16
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = zext i32 %i.df to i128
  %i.dh = xor i128 %i.dg, 1937010277
  %i.di = or i128 %i.dd, %i.dh
  %i.dj = icmp ne i128 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %bb.p

bb.l:                                             ; preds = %bb.f
  %i.dm = load i64, ptr %i.m, align 1
  %i.dn = icmp ne i64 %i.dm, 7308604897285731189
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load i64, ptr %i.m, align 1
  %i.dr = icmp ne i64 %i.dq, 7308604897320202088
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %bb.p

bb.n:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.du = load i16, ptr %i.m, align 1
  %i.dv = xor i16 %i.du, 29301
  %i.dw = getelementptr i8, ptr %i.m, i64 2
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i16
  %i.dz = xor i16 %i.dy, 108
  %i.ea = or i16 %i.dv, %i.dz
  %i.eb = icmp ne i16 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %bb.p

bb.o:                                             ; preds = %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit
  %i.ee = load i64, ptr %i.m, align 1
  %i.ef = xor i64 %i.ee, 7234014019716214117
  %i.eg = getelementptr i8, ptr %i.m, i64 8
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = xor i64 %i.ei, 1936942450
  %i.ek = or i64 %i.ef, %i.ej
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit.thread, %bb.m, %_RNvMs3_NtCsbSS6DM8SDEO_5alloc3stre18to_ascii_lowercase.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsaB0tVqiIPBo_12clap_builder, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @1, ptr noundef nonnull %i.b)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaB0tVqiIPBo_12clap_builder.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.t

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit21 unwind label %bb.r

bb.r:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaB0tVqiIPBo_12clap_builder.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.eo, %bb.q ], [ %i.ep, %bb.r ], [ %i.et, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit21: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaB0tVqiIPBo_12clap_builder.exit, %bb.u
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.t:                                             ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ 11, %bb.n ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 12, %bb.o ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0, ptr %i.es, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit21 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB5_11ColorChoiceNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 24 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  store ptr @3, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.e = invoke noundef zeroext i1 @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #20
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  store ptr @4, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 6, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = invoke noundef zeroext i1 @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  store ptr @5, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 5, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.h = invoke noundef zeroext i1 @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsaB0tVqiIPBo_12clap_builder, ptr %.sroa.434.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.0.0.idx47.lcssa48 = phi i64 [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ]
  %.sroa.0.0.ptr.le = getelementptr inbounds nuw i8, ptr @2, i64 %.sroa.0.0.idx47.lcssa48
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %3 = load i8, ptr %.sroa.0.0.ptr.le, align 1, !range !16, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %3, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.split, %bb.h
  ret void

bb.j:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !align !17, !noundef !4
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.h = load i8, ptr %i.g, align 8, !range !243, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  %i.l = icmp eq i64 %.val3, %i.k
  br i1 %i.l, label %bb.d, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB1Z_10MatchedArg14check_explicits_0E0B25_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.q = load ptr, ptr %.val1, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.val1, align 8, !nonnull !4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2, ptr nonnull %i.t, i64 %.val3)
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB1Z_10MatchedArg14check_explicits_0E0B25_.exit

.body.i.i:                                        ; preds = %bb.j, %bb.g, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %bb.e ], [ %i.ae, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume.i.i unwind label %bb.o

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i.i.i, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = invoke noundef zeroext i1 @_RNvNtCsaB0tVqiIPBo_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %.body.i.i unwind label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.a, align 8, !range !12, !alias.scope !244, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit.i.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load i64, ptr %i.b, align 8, !range !12, !alias.scope !245, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit9.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i8.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i8.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit9.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit9.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i8.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB1Z_10MatchedArg14check_explicits_0E0B25_.exit

bb.o:                                             ; preds = %bb.g, %.body.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB1Z_10MatchedArg14check_explicits_0E0B25_.exit: ; preds = %bb.b, %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit9.i.i
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsaB0tVqiIPBo_12clap_builder.exit9.i.i ], [ %i.u, %bb.d ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB2A_6Parser17add_default_value0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !17, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.e, %.val2
  br i1 %i.f, label %bb.b, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB21_6Parser17add_default_value0E0B25_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull readonly %.val1, i64 %.val2)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB21_6Parser17add_default_value0E0B25_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB21_6Parser17add_default_value0E0B25_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB1T_13PossibleValue7matches0E0INtB7_5FnMutTuB1K_EE8call_mutB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = tail call noundef zeroext i1 @_RNvNtCsaB0tVqiIPBo_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB1T_13PossibleValue7matchess_0E0INtB7_5FnMutTuB1K_EE8call_mutB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !250, !noundef !4
  %i.d = icmp eq i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB1k_13PossibleValue7matchess_0E0B1o_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val, align 8, !noalias !250, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull %i.e, i64 %2)
  %i.f = icmp eq i32 %bcmp.i.i, 0
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB1k_13PossibleValue7matchess_0E0B1o_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkReNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB1k_13PossibleValue7matchess_0E0B1o_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdQNCNvMNtNtB1S_6parser9validatorNtB2B_9Validator24build_conflict_err_usages4_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !254
  %i.c = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtBT_9Validator24build_conflict_err_usages4_0INtB7_5FnMutTRRNtNtNtBX_4util2id2IdEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %..i = select i1 %i.c, ptr %1, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1Q_7commandNtB2K_7Command29get_global_arg_conflicts_with0s_0E0INtB7_5FnMutTuB1L_EE8call_mutB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(600) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !17, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !17, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.b = load ptr, ptr %.val, align 8, !noalias !257, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !257, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !257, !noundef !4
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %_RNCNCNvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1h_7commandNtB2b_7Command29get_global_arg_conflicts_with0s_0E0B1j_.exit

_RNCNCNvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !noalias !257, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !257, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.h, i64 %i.d), !noalias !257
  %bcmp.i.fr.i = freeze i32 %bcmp.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i, 0
  %spec.select.i = select i1 %i.k, ptr %1, ptr null
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1h_7commandNtB2b_7Command29get_global_arg_conflicts_with0s_0E0B1j_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgNCNCNvMs2_NtB1h_7commandNtB2b_7Command29get_global_arg_conflicts_with0s_0E0B1j_.exit: ; preds = %bb.a, %_RNCNCNvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i
  %i.l = phi ptr [ null, %bb.a ], [ %spec.select.i, %_RNCNCNvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit.i ]
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareTjTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtBb_6option6OptionB1V_EEEjEINtB7_6FnOnceTRTjB1S_EB3g_EE9call_onceCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !4
  %.val1 = load i64, ptr %2, align 8, !noundef !4
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !4
  %.val1 = load i64, ptr %2, align 8, !noundef !4
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !16, !noundef !4 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep32 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.40, i64 %i.d
  %switch.load33 = load ptr, ptr %switch.gep32, align 8 ; 2 uses
  store i64 0, ptr %i.a, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -1, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %switch.load33, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %switch.ext, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.e = invoke noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load33, i64 noundef %switch.ext, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #20
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %switch.lookup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %bb.a
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util6escapeNtB4_6EscapeNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1 ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.b
  %i.d = phi ptr [ %i.am, %bb.k ], [ %.val, %bb.b ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.d, align 1, !alias.scope !270, !noalias !271, !noundef !4 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.e, %i.c
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1, !alias.scope !270, !noalias !271, !noundef !4
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = zext nneg i8 %i.f to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i
  %i.s = icmp ne ptr %i.k, %i.c
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !270, !noalias !271, !noundef !4
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit16.i.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i
  %i.ac = icmp ne ptr %i.t, %i.c
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !alias.scope !270, !noalias !271, !noundef !4
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i
  %i.am = phi ptr [ %i.t, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit16.i.i.i.i.i.i ], [ %i.k, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.aa, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit14.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit16.i.i.i.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaB0tVqiIPBo_12clap_builder.exit12.i.i.i.i.i.i ], [ %i.r, %bb.c ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.e [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.ao, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.ap, label %bb.k [
    i32 0, label %bb.i
    i32 22, label %bb.g
    i32 32, label %bb.j
    i32 48, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.ar = zext i1 %i.aq to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.as = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.at = zext i1 %i.as to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.au = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !272, !noundef !4
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i

bb.j:                                             ; preds = %bb.f
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !272, !noundef !4
  %i.bc = lshr i8 %i.bb, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.at, %bb.h ], [ %i.ax, %bb.i ], [ %i.ar, %bb.g ], [ %i.bc, %bb.j ]
  %i.bd = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.bd, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i, %bb.f, %bb.e
  %i.be = icmp eq ptr %i.am, %i.c
  br i1 %i.be, label %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder4util6escapeNtB2_6Escape14needs_escaping.exit, label %.lr.ph.i.i.i

_RNvMNtNtCsaB0tVqiIPBo_12clap_builder4util6escapeNtB2_6Escape14needs_escaping.exit: ; preds = %bb.k
  %i.bf = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

.loopexit:                                        ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsaB0tVqiIPBo_12clap_builder.exit.i.i.i.i, %bb.a
  %i.bg = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder4util6escapeNtB2_6Escape14needs_escaping.exit
  %.sroa.0.0.in = phi i1 [ %i.bg, %.loopexit ], [ %i.bf, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder4util6escapeNtB2_6Escape14needs_escaping.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsaB0tVqiIPBo_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #10
end_hunk_1
