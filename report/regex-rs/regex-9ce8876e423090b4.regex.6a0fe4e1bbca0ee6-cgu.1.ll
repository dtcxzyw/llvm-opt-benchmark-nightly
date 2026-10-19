Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex-9ce8876e423090b4.regex.6a0fe4e1bbca0ee6-cgu.1?download=true
inline.NumInlined: 444
inline.NumDeleted: 225
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsd_NtNtCsj6eKBz9Db1c_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt }>, align 8, !dbg !1056
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 8
@3 = private unnamed_addr constant [16 x i8] c"src/builders.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\0F\00\00\00\00\00\00\00X\00\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\0F\00\00\00\00\00\00\00G\00\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant [74 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/sync.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"I\00\00\00\00\00\00\00\E5\08\00\00)\00\00\00" }>, align 8
@8 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 24), (32, 56), (64, 72), (80, 88), (120, 121), (128, 129), (130, 139), (144, 184)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4168 {
bb.a:
    #dbg_declare(ptr poison, !4177, !DIExpression(), !4180)
    #dbg_value(i64 0, !4178, !DIExpression(DW_OP_LLVM_fragment, 1152, 64), !4182)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4178, !DIExpression(DW_OP_LLVM_fragment, 1216, 64), !4182)
    #dbg_value(i64 0, !4178, !DIExpression(DW_OP_LLVM_fragment, 1280, 64), !4182)
    #dbg_value(i64 1, !4178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
    #dbg_value(i64 2097152, !4178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
    #dbg_value(i64 0, !4178, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4182)
    #dbg_value(i64 1, !4178, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4182)
    #dbg_value(i64 10485760, !4178, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4182)
    #dbg_value(i64 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4182)
    #dbg_value(i64 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !4182)
    #dbg_value(i64 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !4182)
    #dbg_value(i8 -1, !4178, !DIExpression(DW_OP_LLVM_fragment, 960, 8), !4182)
    #dbg_value(i8 0, !4178, !DIExpression(DW_OP_LLVM_fragment, 1024, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1040, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1048, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1056, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1064, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1072, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1080, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1088, 8), !4182)
    #dbg_value(i8 2, !4178, !DIExpression(DW_OP_LLVM_fragment, 1096, 8), !4182)
    #dbg_value(i8 -1, !4178, !DIExpression(DW_OP_LLVM_fragment, 1104, 8), !4182)
    #dbg_value(i128 79537647524085682705218404602, !4178, !DIExpression(DW_OP_LLVM_fragment, 1344, 128), !4182)
  store i64 1, ptr %0, align 8, !dbg !4186
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4186
  store i64 2097152, ptr %.sroa.4.0..sroa_idx61, align 8, !dbg !4186
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4186
  store i64 0, ptr %.sroa.5.0..sroa_idx62, align 8, !dbg !4186
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4186
  store i64 1, ptr %.sroa.663.0..sroa_idx, align 8, !dbg !4186
  %.sroa.7.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4186
  store i64 10485760, ptr %.sroa.7.0..sroa_idx64, align 8, !dbg !4186
  %.sroa.8.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4186
  store i64 2, ptr %.sroa.8.0..sroa_idx65, align 8, !dbg !4186
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4186
  store i64 2, ptr %.sroa.967.0..sroa_idx, align 8, !dbg !4186
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !4186
  store i64 2, ptr %.sroa.1068.0..sroa_idx, align 8, !dbg !4186
  %.sroa.1170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !4186
  store i8 -1, ptr %.sroa.1170.0..sroa_idx, align 8, !dbg !4186
  %.sroa.1271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4186
  store i8 0, ptr %.sroa.1271.0..sroa_idx, align 8, !dbg !4186
  %.sroa.1373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130, !dbg !4186
  %.sroa.21.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 138, !dbg !4186
  store i64 144680345676153346, ptr %.sroa.1373.0..sroa_idx, align 2, !dbg !4186
  store i8 -1, ptr %.sroa.21.0..sroa_idx78, align 2, !dbg !4186
  %.sroa.2280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !4186
  store i64 0, ptr %.sroa.2280.0..sroa_idx, align 8, !dbg !4186
  %.sroa.23.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4186
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.23.0..sroa_idx81, align 8, !dbg !4186
  %.sroa.24.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !4186
  store i64 0, ptr %.sroa.24.0..sroa_idx82, align 8, !dbg !4186
  %.sroa.25.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !4186
  store i128 79537647524085682705218404602, ptr %.sroa.25.0..sroa_idx83, align 8, !dbg !4186
  ret void, !dbg !4187
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej1_BS_EB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4189 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [184 x i8], align 8               ; 20 uses
    #dbg_declare(ptr %1, !4460, !DIExpression(), !4463)
    #dbg_declare(ptr %i.b, !4461, !DIExpression(), !4464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4854
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1040, 8), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1048, 8), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1056, 8), !4471)
    #dbg_value(i8 -1, !4465, !DIExpression(DW_OP_LLVM_fragment, 960, 8), !4471)
    #dbg_value(i8 -1, !4465, !DIExpression(DW_OP_LLVM_fragment, 1104, 8), !4471)
    #dbg_value(i64 1, !4465, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4471)
    #dbg_value(i64 10485760, !4465, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4471)
    #dbg_value(i64 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4471)
    #dbg_value(i64 undef, !4465, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !4471)
    #dbg_value(i64 1, !4465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4471)
    #dbg_value(i64 2097152, !4465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1064, 8), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1072, 8), !4471)
    #dbg_value(i64 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !4471)
    #dbg_value(i64 undef, !4465, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !4471)
    #dbg_value(i64 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !4471)
    #dbg_value(i64 undef, !4465, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1080, 8), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1088, 8), !4471)
    #dbg_value(i8 2, !4465, !DIExpression(DW_OP_LLVM_fragment, 1096, 8), !4471)
    #dbg_value(i8 0, !4465, !DIExpression(DW_OP_LLVM_fragment, 1024, 8), !4471)
    #dbg_value(i8 undef, !4465, !DIExpression(DW_OP_LLVM_fragment, 1032, 8), !4471)
    #dbg_value(i64 0, !4465, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4471)
    #dbg_value(i64 undef, !4465, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4471)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !4855 ; 2 uses
  store i64 0, ptr %i.c, align 8, !dbg !4855
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !4855 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !4855
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !4855 ; 4 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !4855
  store i64 1, ptr %i.b, align 8, !dbg !4855
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4855
  store i64 2097152, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4855
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4855
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4855
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !4855
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !4855
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !4855
  store i64 10485760, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !4855
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !4855
  store i64 2, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !4855
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !4855
  store i64 2, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !4855
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !4855
  store i64 2, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !4855
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !4855
  store i8 -1, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx, align 8, !dbg !4855
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !4855
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !4855
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 130, !dbg !4855
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138, !dbg !4855
  store i64 144680345676153346, ptr %.sroa.18.0..sroa_idx, align 2, !dbg !4855
  store i8 -1, ptr %.sroa.26.0..sroa_idx, align 2, !dbg !4855
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !4855
  store i128 79537647524085682705218404602, ptr %i.d, align 8, !dbg !4855
    #dbg_value(ptr %i.c, !4472, !DIExpression(), !4523)
    #dbg_declare(ptr %1, !4525, !DIExpression(), !4205)
  %.sroa.663.16.copyload = load ptr, ptr %1, align 8, !dbg !4856, !alias.scope !4530 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4856
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !dbg !4856, !alias.scope !4530 ; 5 uses
    #dbg_value(i64 0, !4518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4523)
    #dbg_value(i64 0, !4531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4535)
    #dbg_value(i64 0, !4536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4556)
    #dbg_value(i64 1, !4518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4523)
    #dbg_value(i64 1, !4531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4535)
    #dbg_value(i64 1, !4536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4556)
    #dbg_value(ptr %.sroa.663.16.copyload, !4518, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4523)
    #dbg_value(ptr %.sroa.663.16.copyload, !4531, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4535)
    #dbg_value(ptr %.sroa.663.16.copyload, !4536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4556)
    #dbg_value(i64 %.sroa.8.16.copyload, !4518, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4523)
    #dbg_value(i64 %.sroa.8.16.copyload, !4531, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4535)
    #dbg_value(i64 %.sroa.8.16.copyload, !4536, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4557), !dbg !4857
    #dbg_value(ptr %i.c, !4532, !DIExpression(), !4223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558), !dbg !4858
    #dbg_value(ptr %i.c, !4540, !DIExpression(), !4226)
    #dbg_value(ptr %i.c, !4559, !DIExpression(), !4229)
    #dbg_value(i64 poison, !4541, !DIExpression(), !4230)
    #dbg_value(i64 1, !4542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4230)
    #dbg_value(i64 1, !4542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4230)
    #dbg_value(i64 1, !4543, !DIExpression(), !4231)
    #dbg_value(ptr %i.c, !4561, !DIExpression(), !4234)
    #dbg_value(i64 1, !4565, !DIExpression(), !4234)
    #dbg_value(i64 1, !4567, !DIExpression(), !4237)
    #dbg_value(i64 1, !4574, !DIExpression(), !4240)
    #dbg_value(ptr %i.c, !4571, !DIExpression(), !4241)
    #dbg_value(i64 0, !4572, !DIExpression(), !4237)
    #dbg_value(i64 0, !4576, !DIExpression(), !4240)
    #dbg_value(ptr %i.c, !4575, !DIExpression(), !4240)
    #dbg_value(i64 8, !4577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4240)
    #dbg_value(i64 24, !4577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4240)
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %.lr.ph.i.split.us.i.i.i.i.i unwind label %bb.b, !dbg !4859

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !4860

.body:                                            ; preds = %.body.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %lpad.phi.i.i.i.i.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs96z5GJ9HwjO_5regex8builders7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(184) %i.b) #19
          to label %bb.g unwind label %bb.f, !dbg !4860

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.split.us.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %lpad.loopexit.i.us.i.i.i.i.i, %.loopexit.i.split.us.i.i.i.i.i ]
    #dbg_value(ptr poison, !4580, !DIExpression(), !4271)
    #dbg_value(ptr poison, !4683, !DIExpression(), !4274)
    #dbg_value(ptr poison, !4690, !DIExpression(), !4277)
    #dbg_value(ptr poison, !4697, !DIExpression(), !4280)
    #dbg_value(ptr poison, !4704, !DIExpression(), !4283)
    #dbg_value(ptr poison, !4710, !DIExpression(), !4286)
    #dbg_value(ptr poison, !4716, !DIExpression(), !4289)
  store i64 %.pre.i.i, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !4861, !alias.scope !4719, !noalias !4720
  br label %.body, !dbg !4862

.lr.ph.i.split.us.i.i.i.i.i:                      ; preds = %bb.a
  %.pre.i.i = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !4863, !alias.scope !4719 ; 3 uses
  %.pre = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !4864, !alias.scope !4719
    #dbg_value(ptr %.pre, !4553, !DIExpression(), !4310)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4724, !DIExpression(), !4311)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4312)
    #dbg_value(i64 %.pre.i.i, !4554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4312)
    #dbg_value(i64 0, !4676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4313)
    #dbg_value(i64 0, !4667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4314)
    #dbg_value(i64 1, !4676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4313)
    #dbg_value(i64 1, !4667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4314)
    #dbg_value(ptr %.sroa.663.16.copyload, !4676, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4313)
    #dbg_value(ptr %.sroa.663.16.copyload, !4667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4314)
    #dbg_value(i64 %.sroa.8.16.copyload, !4676, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4313)
    #dbg_value(i64 %.sroa.8.16.copyload, !4667, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4314)
    #dbg_value(ptr %.pre, !4677, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4313)
    #dbg_value(ptr %.pre, !4669, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4314)
    #dbg_value(ptr %.pre, !4661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4315)
    #dbg_value(ptr %.pre, !4654, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4316)
    #dbg_value(ptr %.pre, !4644, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4317)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4313)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4314)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4315)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4316)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4317)
    #dbg_value(i64 %.pre.i.i, !4677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4313)
    #dbg_value(i64 %.pre.i.i, !4669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4314)
    #dbg_value(i64 %.pre.i.i, !4661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4315)
    #dbg_value(i64 %.pre.i.i, !4654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4316)
    #dbg_value(i64 %.pre.i.i, !4644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4317)
    #dbg_declare(ptr poison, !4668, !DIExpression(), !4318)
    #dbg_value(i64 0, !4659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4319)
    #dbg_value(i64 1, !4659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4319)
    #dbg_value(ptr %.sroa.663.16.copyload, !4659, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4319)
    #dbg_value(i64 %.sroa.8.16.copyload, !4659, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4319)
    #dbg_declare(ptr poison, !4660, !DIExpression(), !4320)
    #dbg_declare(ptr poison, !4653, !DIExpression(), !4321)
    #dbg_declare(ptr poison, !4643, !DIExpression(), !4322)
    #dbg_value(ptr undef, !4652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4323)
    #dbg_value(ptr undef, !4642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4324)
    #dbg_value(i64 1, !4652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4323)
    #dbg_value(i64 1, !4642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4324)
    #dbg_value(i64 1, !4645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4325)
    #dbg_value(i64 1, !4615, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4326)
    #dbg_value(ptr %.sroa.53.0..sroa_idx, !4615, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4326)
    #dbg_value(i64 %.pre.i.i, !4615, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4326)
    #dbg_value(ptr %.pre, !4615, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4326)
    #dbg_value(ptr undef, !4613, !DIExpression(), !4327)
    #dbg_declare(ptr poison, !4614, !DIExpression(), !4328)
    #dbg_value(ptr undef, !4645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4325)
    #dbg_value(ptr undef, !4615, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4326)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
    #dbg_value(i64 poison, !4616, !DIExpression(), !4329)
    #dbg_value(ptr poison, !4726, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4333)
    #dbg_value(ptr poison, !4731, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !4333)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !4334)
    #dbg_value(i64 poison, !4730, !DIExpression(), !4333)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.663.16.copyload) ]
    #dbg_value(ptr %.sroa.663.16.copyload, !4732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4335)
    #dbg_value(i64 %.sroa.8.16.copyload, !4732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4335)
    #dbg_value(ptr poison, !4736, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4338)
    #dbg_declare(ptr poison, !4739, !DIExpression(), !4339)
    #dbg_value(ptr %.sroa.663.16.copyload, !4740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4338)
    #dbg_value(i64 %.sroa.8.16.copyload, !4740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4338)
    #dbg_value(ptr poison, !4746, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4342)
    #dbg_declare(ptr poison, !4749, !DIExpression(), !4343)
    #dbg_value(ptr %.sroa.663.16.copyload, !4750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4342)
    #dbg_value(i64 %.sroa.8.16.copyload, !4750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4342)
    #dbg_value(ptr %.sroa.663.16.copyload, !4756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4346)
    #dbg_value(i64 %.sroa.8.16.copyload, !4756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4346)
    #dbg_value(ptr poison, !4760, !DIExpression(), !4346)
    #dbg_declare(ptr poison, !4763, !DIExpression(), !4362)
    #dbg_declare(ptr poison, !4794, !DIExpression(), !4367)
    #dbg_declare(ptr poison, !4801, !DIExpression(), !4370)
    #dbg_declare(ptr poison, !4807, !DIExpression(), !4373)
    #dbg_declare(ptr poison, !4813, !DIExpression(), !4378)
    #dbg_value(i64 0, !4819, !DIExpression(), !4381)
    #dbg_value(ptr %.sroa.663.16.copyload, !4792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4382)
    #dbg_value(ptr %.sroa.663.16.copyload, !4788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4383)
    #dbg_value(ptr %.sroa.663.16.copyload, !4789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4384)
    #dbg_value(ptr %.sroa.663.16.copyload, !4785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4385)
    #dbg_value(ptr %.sroa.663.16.copyload, !4782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4386)
    #dbg_value(i64 %.sroa.8.16.copyload, !4792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4382)
    #dbg_value(i64 %.sroa.8.16.copyload, !4788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4383)
    #dbg_value(i64 %.sroa.8.16.copyload, !4789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4384)
    #dbg_value(i64 %.sroa.8.16.copyload, !4785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4385)
    #dbg_value(i64 %.sroa.8.16.copyload, !4782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4386)
    #dbg_value(ptr %.sroa.663.16.copyload, !4775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4387)
    #dbg_value(ptr %.sroa.663.16.copyload, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4388)
    #dbg_value(ptr %.sroa.663.16.copyload, !4768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4389)
    #dbg_value(ptr %.sroa.663.16.copyload, !4797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4390)
    #dbg_value(i64 %.sroa.8.16.copyload, !4775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4387)
    #dbg_value(i64 %.sroa.8.16.copyload, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4388)
    #dbg_value(i64 %.sroa.8.16.copyload, !4768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4389)
    #dbg_value(i64 %.sroa.8.16.copyload, !4797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4390)
    #dbg_value(i64 %.sroa.8.16.copyload, !4798, !DIExpression(), !4391)
    #dbg_value(i64 %.sroa.8.16.copyload, !4805, !DIExpression(), !4392)
    #dbg_value(i64 %.sroa.8.16.copyload, !4811, !DIExpression(), !4393)
    #dbg_value(i64 %.sroa.8.16.copyload, !4824, !DIExpression(), !4396)
    #dbg_value(i64 %.sroa.8.16.copyload, !4830, !DIExpression(), !4399)
    #dbg_value(i64 %.sroa.8.16.copyload, !4814, !DIExpression(), !4400)
    #dbg_value(i64 %.sroa.8.16.copyload, !4821, !DIExpression(), !4381)
    #dbg_value(i64 1, !4815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4400)
    #dbg_value(i64 1, !4822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4381)
    #dbg_value(i64 1, !4815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4400)
    #dbg_value(i64 1, !4822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4865, !noalias !4834
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.8.16.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.us.i.i.i.i.i unwind label %.loopexit.i.split.us.i.i.i.i.i, !dbg !4865, !noalias !4835

.noexc.i.us.i.i.i.i.i:                            ; preds = %.lr.ph.i.split.us.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.a, align 8, !dbg !4865, !range !1468, !noalias !4834, !noundef !1068
  %i.i = trunc nuw i64 %i.h to i1, !dbg !4866
  %i.j = load i64, ptr %i.g, align 8, !dbg !4867, !range !1469, !noalias !4834, !noundef !1068 ; 3 uses
  br i1 %i.i, label %.split.us.i.i.i.i.i, label %bb.c, !dbg !4866, !prof !1470

bb.c:                                             ; preds = %.noexc.i.us.i.i.i.i.i
  %i.k = load ptr, ptr %i.f, align 8, !dbg !4868, !noalias !4834, !nonnull !1068, !noundef !1068 ; 2 uses
    #dbg_value(i64 %i.j, !4816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4414)
    #dbg_value(ptr %i.k, !4816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
    #dbg_value(ptr poison, !4820, !DIExpression(), !4415)
  %i.l = icmp ule i64 %.sroa.8.16.copyload, %i.j, !dbg !4869
    #dbg_value(i1 true, !4836, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4418)
  call void @llvm.assume(i1 %i.l), !dbg !4870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4871, !noalias !4834
    #dbg_value(i64 %i.j, !4799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4419)
    #dbg_value(ptr %i.k, !4799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4419)
    #dbg_value(i64 0, !4799, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4419)
  %.not.i.i.i.i.i.us.i.i.i.i.i = icmp eq i64 %.sroa.8.16.copyload, 0, !dbg !4872
  br i1 %.not.i.i.i.i.i.us.i.i.i.i.i, label %bb.e, label %bb.d, !dbg !4872

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %.sroa.663.16.copyload, !4827, !DIExpression(), !4396)
    #dbg_value(ptr %.sroa.663.16.copyload, !4831, !DIExpression(), !4399)
    #dbg_value(ptr %i.k, !4828, !DIExpression(), !4396)
    #dbg_value(ptr %i.k, !4832, !DIExpression(), !4399)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.sroa.663.16.copyload, i64 %.sroa.8.16.copyload, i1 false), !dbg !4873, !noalias !4838
    #dbg_value(i64 %.sroa.8.16.copyload, !4799, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4419)
  br label %bb.e, !dbg !4874

.loopexit.i.split.us.i.i.i.i.i:                   ; preds = %.lr.ph.i.split.us.i.i.i.i.i
  %lpad.loopexit.i.us.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.split.us.i.i.i.i.i:                              ; preds = %.noexc.i.us.i.i.i.i.i
  %i.m = load i64, ptr %i.f, align 8, !dbg !4875, !noalias !4834
    #dbg_value(i64 %i.j, !4817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4420)
    #dbg_value(i64 %i.m, !4817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4420)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.m) #20
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !dbg !4876, !noalias !4835

.noexc9.i.i.i.i.i.i:                              ; preds = %.split.us.i.i.i.i.i
  unreachable, !dbg !4876

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.split.us.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.e:                                             ; preds = %bb.d, %bb.c
    #dbg_value(i64 %.sroa.8.16.copyload, !4799, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4419)
    #dbg_value(i64 %i.j, !4839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4423)
    #dbg_value(i64 %i.j, !4847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4426)
    #dbg_value(ptr %i.k, !4839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4423)
    #dbg_value(ptr %i.k, !4847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4426)
    #dbg_value(i64 %.sroa.8.16.copyload, !4839, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4423)
    #dbg_value(i64 %.sroa.8.16.copyload, !4847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4426)
    #dbg_value(ptr poison, !4842, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4427)
    #dbg_declare(ptr poison, !4843, !DIExpression(), !4428)
    #dbg_value(ptr poison, !4850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !4429)
    #dbg_value(ptr poison, !4851, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4429)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.pre.i.i, !dbg !4877 ; 3 uses
  store i64 %i.j, ptr %i.n, align 8, !dbg !4878, !noalias !4853
  %.sroa.44.0..sroa_idx.i.i.i.i.us.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !4878
  store ptr %i.k, ptr %.sroa.44.0..sroa_idx.i.i.i.i.us.i.i.i.i.i, align 8, !dbg !4878, !noalias !4853
  %.sroa.55.0..sroa_idx.i.i.i.i.us.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !4878
  store i64 %.sroa.8.16.copyload, ptr %.sroa.55.0..sroa_idx.i.i.i.i.us.i.i.i.i.i, align 8, !dbg !4878, !noalias !4853
  %i.o = add i64 %.pre.i.i, 1, !dbg !4879
    #dbg_value(ptr poison, !4580, !DIExpression(), !4441)
    #dbg_value(ptr poison, !4683, !DIExpression(), !4443)
    #dbg_value(ptr poison, !4690, !DIExpression(), !4445)
    #dbg_value(ptr poison, !4697, !DIExpression(), !4447)
    #dbg_value(ptr poison, !4704, !DIExpression(), !4449)
    #dbg_value(ptr poison, !4710, !DIExpression(), !4451)
    #dbg_value(ptr poison, !4716, !DIExpression(), !4453)
  store i64 %i.o, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !4880, !alias.scope !4719, !noalias !4720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 184, i1 false), !dbg !4881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4860
  ret void, !dbg !4882

bb.f:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !4883
  unreachable, !dbg !4883

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !4883
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcSNtNtB8_6string6StringE15from_iter_exactINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1u_5slice4iter4IterBI_EEECs96z5GJ9HwjO_5regex(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4893 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
    #dbg_declare(ptr %.sroa.4, !5051, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !5055)
    #dbg_declare(ptr %.sroa.4, !5042, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !5056)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !5033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5057)
    #dbg_value(ptr %1, !5033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5057)
    #dbg_value(i64 %2, !5034, !DIExpression(), !5057)
    #dbg_declare(ptr %i.d, !5039, !DIExpression(), !5058)
    #dbg_declare(ptr %i.c, !5040, !DIExpression(), !5059)
    #dbg_value(i64 %2, !5060, !DIExpression(), !4897)
    #dbg_value(i64 %2, !5065, !DIExpression(), !4904)
    #dbg_value(i64 8, !5082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4909)
    #dbg_value(i64 24, !5082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4909)
    #dbg_value(i64 %2, !5087, !DIExpression(), !4909)
    #dbg_value(i64 24, !5088, !DIExpression(), !4910)
    #dbg_value(i64 8, !5089, !DIExpression(), !4910)
  %i.e = icmp ugt i64 %2, 384307168202282325, !dbg !5246
    #dbg_value(i64 poison, !5092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4915)
    #dbg_value(i64 poison, !5092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4915)
    #dbg_declare(ptr %i.a, !5097, !DIExpression(), !4916)
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs96z5GJ9HwjO_5regex.exit.i, !dbg !5247, !prof !1470

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !dbg !5248
  unreachable, !dbg !5248

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs96z5GJ9HwjO_5regex.exit.i: ; preds = %bb.a
  %i.f = mul nuw nsw i64 %2, 24, !dbg !5246       ; 2 uses
    #dbg_value(ptr undef, !5060, !DIExpression(DW_OP_deref), !4897)
    #dbg_value(ptr undef, !5065, !DIExpression(DW_OP_deref), !4904)
    #dbg_value(i64 poison, !5099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4923)
    #dbg_value(i64 poison, !5099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4923)
    #dbg_declare(ptr poison, !5109, !DIExpression(), !4924)
    #dbg_value(ptr poison, !5110, !DIExpression(), !4923)
    #dbg_declare(ptr poison, !5114, !DIExpression(), !4930)
  %i.g = tail call { i64, i64 } @_RNvNtCs4wP2HXfJTCR_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 9) 8, i64 noundef %i.f), !dbg !5249 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0, !dbg !5249 ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1, !dbg !5249 ; 3 uses
    #dbg_value(i64 %i.h, !5111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4931)
    #dbg_value(i64 %i.i, !5111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4931)
    #dbg_declare(ptr poison, !5126, !DIExpression(), !4934)
    #dbg_value(i64 %i.h, !5129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4935)
    #dbg_value(i64 %i.h, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4938)
    #dbg_value(i64 %i.h, !5134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4941)
    #dbg_value(i64 %i.i, !5129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4935)
    #dbg_value(i64 %i.i, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4938)
    #dbg_value(i64 %i.i, !5134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4941)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5132, !DIExpression(), !4938)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !5135, !DIExpression(), !4941)
    #dbg_value(i8 0, !5136, !DIExpression(), !4941)
    #dbg_value(i64 %i.h, !1559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4943)
    #dbg_value(i64 %i.h, !1582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4945)
    #dbg_value(i64 %i.i, !1559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4943)
    #dbg_value(i64 %i.i, !1582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4945)
    #dbg_value(i1 false, !1563, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4943)
    #dbg_value(i64 0, !1588, !DIExpression(), !4947)
    #dbg_value(i64 0, !1595, !DIExpression(), !4949)
    #dbg_value(i64 %i.i, !1564, !DIExpression(), !4950)
    #dbg_value(i64 %i.i, !1593, !DIExpression(), !4952)
    #dbg_value(i64 %i.i, !1598, !DIExpression(), !4954)
  %i.j = icmp eq i64 %i.i, 0, !dbg !5250
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !5250

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs96z5GJ9HwjO_5regex.exit.i
    #dbg_value(i64 %i.h, !1592, !DIExpression(), !4947)
    #dbg_value(i64 %i.h, !1597, !DIExpression(), !4949)
    #dbg_value(i64 %i.h, !1601, !DIExpression(), !4956)
  %i.k = inttoptr i64 %i.h to ptr, !dbg !5251
  br label %_RNCNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0Cs96z5GJ9HwjO_5regex.exit.i.i, !dbg !5252

bb.d:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs96z5GJ9HwjO_5regex.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !5253
  %i.l = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.h) #23, !dbg !5254
    #dbg_value(ptr %i.l, !1606, !DIExpression(), !4958)
    #dbg_value(ptr %i.l, !1565, !DIExpression(), !4959)
  br label %_RNCNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0Cs96z5GJ9HwjO_5regex.exit.i.i, !dbg !5255

_RNCNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0Cs96z5GJ9HwjO_5regex.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.l, %bb.d ], !dbg !5256 ; 6 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4960)
    #dbg_value(i64 poison, !5122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4960)
    #dbg_value(ptr poison, !5123, !DIExpression(), !4961)
    #dbg_value(ptr poison, !5138, !DIExpression(), !4964)
  %i.m = icmp eq ptr %.sroa.0.0.i.i.i.i, null, !dbg !5257
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !5258, !prof !1470

bb.e:                                             ; preds = %_RNCNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0Cs96z5GJ9HwjO_5regex.exit.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef %i.h, i64 noundef %i.i) #20, !dbg !5259
  unreachable, !dbg !5259

bb.f:                                             ; preds = %_RNCNvMsq_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0Cs96z5GJ9HwjO_5regex.exit.i.i
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4965)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(i64 poison, !5112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4965)
    #dbg_value(i64 poison, !5142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %i.i, !5147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4971)
    #dbg_value(i64 %i.h, !5147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4971)
    #dbg_value(ptr poison, !5148, !DIExpression(), !4971)
    #dbg_value(ptr poison, !5156, !DIExpression(DW_OP_deref), !4974)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5159, !DIExpression(), !4974)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4975)
    #dbg_value(i64 poison, !5149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4975)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5161, !DIExpression(), !4978)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5164, !DIExpression(), !4981)
    #dbg_value(i64 1, !5162, !DIExpression(), !4978)
    #dbg_value(i64 1, !5162, !DIExpression(), !4983)
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8, !dbg !5260
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5161, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4983)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4985)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8, !dbg !5261
  store i64 1, ptr %i.n, align 8, !dbg !5261
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5167)
    #dbg_value(i64 %2, !5035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5167)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5036, !DIExpression(), !5168)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5174)
    #dbg_value(ptr %.sroa.0.0.i.i.i.i, !5175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5178)
    #dbg_value(i64 %2, !5169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5174)
    #dbg_value(i64 %2, !5175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5178)
  %i.o = add nuw i64 %i.f, 16, !dbg !5262
    #dbg_value(i64 8, !5037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5179)
    #dbg_value(i64 %i.o, !5037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5179)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16, !dbg !5263 ; 2 uses
    #dbg_value(ptr %i.p, !5038, !DIExpression(), !5180)
    #dbg_value(ptr %i.p, !5181, !DIExpression(), !5185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5264
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !5265
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.q, align 8, !dbg !5265
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !5265
  store ptr %i.p, ptr %i.r, align 8, !dbg !5265
  store i64 8, ptr %i.d, align 8, !dbg !5265
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !5265
  store i64 %i.o, ptr %i.s, align 8, !dbg !5265
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !5265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5266
  store ptr %0, ptr %i.c, align 8, !dbg !5266
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5266
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !5266
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5266 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !5266
  %.sroa.9.8..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g, !dbg !5267

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.u = phi i64 [ %i.aa, %bb.i ], [ 0, %bb.f ]   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5186), !dbg !5059
    #dbg_value(ptr %i.c, !5189, !DIExpression(), !5007)
    #dbg_declare(ptr poison, !5205, !DIExpression(), !5008)
    #dbg_declare(ptr %i.b, !5217, !DIExpression(), !5020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5268, !noalias !5243
  invoke void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.h, !dbg !5269

.noexc:                                           ; preds = %bb.g
end_hunk_0
