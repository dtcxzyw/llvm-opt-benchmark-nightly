Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.14?download=true
inline.NumInlined: 221
inline.NumDeleted: 119
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@4 = private unnamed_addr constant [25 x i8] c"cannot sample empty range", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsb_NtNtCsloy3FhB6CEa_4rand5distr7uniformNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@6 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCscI6d9CVNmLh_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@8 = private unnamed_addr constant [29 x i8] c"Failed to parse JSONB integer", align 1
@9 = private unnamed_addr constant [21 x i8] c"Failed to parse JSONB", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @10, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsjRvGck33osM_6diesel, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsjRvGck33osM_6diesel, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsjRvGck33osM_6diesel, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjRvGck33osM_6diesel, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsjRvGck33osM_6diesel }>, align 8
@12 = private unnamed_addr constant [30 x i8] c"Invalid ASCII in JSONB integer", align 1
@13 = private unnamed_addr constant [40 x i8] c"\19Expected payload of size \C0\0A, but got \C0\00", align 1
@14 = private unnamed_addr constant [29 x i8] c"Invalid UTF-8 in JSONB string", align 1
@15 = private unnamed_addr constant [27 x i8] c"Array payload size mismatch", align 1
@16 = private unnamed_addr constant [32 x i8] c"diesel/src/sqlite/types/json.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\1F\00\00\00\00\00\00\00\0B\01\00\00>\00\00\00" }>, align 8
@18 = private unnamed_addr constant [28 x i8] c"Failed to parse JSONB number", align 1
@19 = private unnamed_addr constant [28 x i8] c"Invalid UTF-8 in JSONB float", align 1
@20 = private unnamed_addr constant [6 x i8] c"\01\22\C0\01\22\00", align 1
@21 = private unnamed_addr constant [42 x i8] c"Failed to parse JSON-escaped text in TEXTJ", align 1
@22 = private unnamed_addr constant [16 x i8] c"Empty JSONB data", align 1
@23 = private unnamed_addr constant [55 x i8] c"Invalid JSONB data: insufficient bytes for payload size", align 1
@24 = private unnamed_addr constant [21 x i8] c"INT5 is not supported", align 1
@25 = private unnamed_addr constant [23 x i8] c"FLOAT5 is not supported", align 1
@26 = private unnamed_addr constant [24 x i8] c"TEXTRAW is not supported", align 1
@27 = private unnamed_addr constant [22 x i8] c"TEXT5 is not supported", align 1
@28 = private unnamed_addr constant [39 x i8] c"$Unsupported or reserved JSONB type: \C0\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\1F\00\00\00\00\00\00\00\8E\00\00\00#\00\00\00" }>, align 8
@30 = private unnamed_addr constant [87 x i8] c"9Invalid JSONB data: insufficient bytes for value of type \C0\0B, expected \C0\0C bytes, got \C0\00", align 1
@31 = private unnamed_addr constant [28 x i8] c"Object payload size mismatch", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\1F\00\00\00\00\00\00\00)\01\00\00B\00\00\00" }>, align 8
@33 = private unnamed_addr constant [45 x i8] c"Invalid object key in JSONB, must be a string", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\1F\00\00\00\00\00\00\00!\01\00\00D\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\1F\00\00\00\00\00\00\00\D0\01\00\00-\00\00\00" }>, align 8
@36 = private unnamed_addr constant [36 x i8] c"Failed to serialize string for TEXTJ", align 1
@37 = private unnamed_addr constant [52 x i8] c"Payload size exceeds the maximum allowed size of 2GB", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCsjRvGck33osM_6diesel }>, align 8
@39 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@40 = private unnamed_addr constant [76 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/alloc/src/string.rs\00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"K\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@42 = private unnamed_addr constant [5 x i8] c"Error", align 1
@43 = private unnamed_addr constant [15 x i8] c" ON CONSTRAINT ", align 1
@44 = private unnamed_addr constant [10 x i8] c"EmptyRange", align 1
@45 = private unnamed_addr constant [9 x i8] c"NonFinite", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@47 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@48 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5395094624057330451 to ptr), ptr inttoptr (i64 -8304404071318327760 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCs40k4W9msRzi_5alloc3stre8replacenReECsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #18
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp samesign ugt i64 %i.g, 31
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 22 uses
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %bb.c

.loopexit117:                                     ; preds = %.loopexit117.split.loopexit, %.loopexit117.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit117.split.us, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit117.split.us ], [ %lpad.loopexit412, %.loopexit117.split.loopexit ], [ %lpad.loopexit.split-lp413, %.loopexit117.split.loopexit.split-lp ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.bl unwind label %bb.bk

bb.c:                                             ; preds = %bb.bf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit117

_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit
  %.sroa.079.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.480.0.copyload = load i64, ptr %.sroa.480.0..sroa_idx, align 8 ; 25 uses
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.682.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8 ; 5 uses
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8 ; 2 uses
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.1086.0.copyload = load i64, ptr %.sroa.1086.0..sroa_idx, align 8
  %.sroa.1288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1288.0.copyload = load ptr, ptr %.sroa.1288.0..sroa_idx, align 8 ; 17 uses
  %.sroa.1389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1389.0.copyload = load i64, ptr %.sroa.1389.0..sroa_idx, align 8 ; 42 uses
  %.sroa.1490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.1490.0.copyload = load ptr, ptr %.sroa.1490.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.1591.0.copyload = load i64, ptr %.sroa.1591.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = icmp eq i64 %7, 0
  br i1 %i.m, label %bb.bf, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %i.n = trunc nuw i64 %.sroa.079.0.copyload to i1
  %i.o = add nsw i64 %.sroa.1591.0.copyload, -1   ; 3 uses
  %.not.i20 = icmp eq i64 %6, 0                   ; 3 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1288.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1490.0.copyload) ]
  %i.p = sub i64 %.sroa.1591.0.copyload, %.sroa.682.0.copyload
  %umax49.i37.us = tail call i64 @llvm.umax.i64(i64 %.sroa.480.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.1591.0.copyload)
  %i.q = add i64 %.sroa.480.0.copyload, -1
  %.first_iter = icmp ult i64 %i.q, %.sroa.1591.0.copyload
  %invariant.op = sub i64 1, %.sroa.480.0.copyload
  %exitcond.not.i39.us381.not = icmp ult i64 %.sroa.480.0.copyload, %.sroa.1591.0.copyload
  %invariant.op455 = sub i64 1, %.sroa.480.0.copyload
  %.not112.us384 = icmp eq i64 %.sroa.480.0.copyload, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.split.us
  %.sroa.0.0175.us = phi i64 [ 0, %.lr.ph.split.us ], [ %.sroa.1194.1.us, %bb.y ] ; 7 uses
  %.sroa.18.0173.us = phi i64 [ %.sroa.884.0.copyload, %.lr.ph.split.us ], [ %.sroa.1194.1.us, %bb.y ] ; 3 uses
  %.sroa.3053.0172.us = phi i64 [ %.sroa.1086.0.copyload, %.lr.ph.split.us ], [ %.sroa.3053.1.us, %bb.y ] ; 2 uses
  %.sroa.43.0171.us = phi i64 [ %7, %.lr.ph.split.us ], [ %i.r, %bb.y ]
  %i.r = add i64 %.sroa.43.0171.us, -1            ; 2 uses
  %i.s = icmp eq i64 %.sroa.3053.0172.us, -1
  %i.t = add i64 %.sroa.18.0173.us, %i.o          ; 3 uses
  %i.u = icmp ult i64 %i.t, %.sroa.1389.0.copyload ; 2 uses
  br i1 %i.s, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  br i1 %i.u, label %.lr.ph.i26.us, label %bb.bf

.lr.ph.i26.us:                                    ; preds = %bb.e, %.sink.split.i.us
  %i.v = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3053.0172.us, %bb.e ] ; 3 uses
  %i.w = phi i64 [ %i.az, %.sink.split.i.us ], [ %i.t, %bb.e ]
  %i.x = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0173.us, %bb.e ] ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.w
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !40, !noalias !42, !noundef !4
  %i.aa = and i8 %i.z, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %.sroa.783.0.copyload
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i26.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.v, i64 %.sroa.480.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.1591.0.copyload)
  %exitcond.not.i.us375.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.1591.0.copyload
  br i1 %exitcond.not.i.us375.not, label %.lr.ph377, label %.preheader114.us.preheader

bb.g:                                             ; preds = %bb.h
  %i.af = add i64 %.sroa.02.0.i.us376, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.af, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader114.us.preheader, label %.lr.ph377

.preheader114.us.preheader:                       ; preds = %bb.g, %bb.f
  %i.ag = icmp ult i64 %i.v, %.sroa.480.0.copyload
  br i1 %i.ag, label %.lr.ph379, label %.loopexit.i.us

.lr.ph377:                                        ; preds = %bb.f, %bb.g
  %.sroa.02.0.i.us376 = phi i64 [ %i.af, %bb.g ], [ %.sroa.0.0.i.i.us, %bb.f ] ; 4 uses
  %i.ah = add i64 %.sroa.02.0.i.us376, %i.x       ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.1389.0.copyload
  br i1 %i.ai, label %bb.h, label %bb.be

bb.h:                                             ; preds = %.lr.ph377
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %.sroa.02.0.i.us376
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !41, !noalias !43, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.ah
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !40, !noalias !42, !noundef !4
  %.not21.i.us = icmp eq i8 %i.ak, %i.am
  br i1 %.not21.i.us, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i64 %i.x, %invariant.op
  %i.an = add i64 %.reass.reass, %.sroa.02.0.i.us376
  br label %.sink.split.i.us

.preheader114.us:                                 ; preds = %bb.k
  %i.ao = icmp ult i64 %i.v, %i.ap
  br i1 %i.ao, label %.lr.ph379, label %.loopexit.i.us

.lr.ph379:                                        ; preds = %.preheader114.us.preheader, %.preheader114.us
  %.sroa.2.0.i.us378 = phi i64 [ %i.ap, %.preheader114.us ], [ %.sroa.480.0.copyload, %.preheader114.us.preheader ]
  %i.ap = add i64 %.sroa.2.0.i.us378, -1          ; 6 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.1591.0.copyload
  br i1 %i.aq, label %bb.j, label %.noexc18.us216

bb.j:                                             ; preds = %.lr.ph379
  %i.ar = add i64 %i.ap, %i.x                     ; 3 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.1389.0.copyload
  br i1 %i.as, label %bb.k, label %.noexc18.us216

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !41, !noalias !43, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.ar
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !40, !noalias !42, !noundef !4
  %.not.i27.us = icmp eq i8 %i.au, %i.aw
  br i1 %.not.i27.us, label %.preheader114.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = add i64 %i.x, %.sroa.682.0.copyload
  br label %.sink.split.i.us

bb.m:                                             ; preds = %.lr.ph.i26.us
  %i.ay = add i64 %i.x, %.sroa.1591.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us = phi i64 [ %i.p, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph71.i.us = phi i64 [ %i.ax, %bb.l ], [ %i.an, %bb.i ], [ %i.ay, %bb.m ] ; 2 uses
  %i.az = add i64 %.ph71.i.us, %i.o               ; 2 uses
  %i.ba = icmp ult i64 %i.az, %.sroa.1389.0.copyload
  br i1 %i.ba, label %.lr.ph.i26.us, label %bb.bf

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  br i1 %i.u, label %.lr.ph.i34.us, label %bb.bf

.lr.ph.i34.us:                                    ; preds = %bb.n, %bb.u
  %i.bb = phi i64 [ %i.cc, %bb.u ], [ %i.t, %bb.n ]
  %i.bc = phi i64 [ %i.cb, %bb.u ], [ %.sroa.18.0173.us, %bb.n ] ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !44, !noalias !46, !noundef !4
  %i.bf = and i8 %i.be, 63
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bh, %.sroa.783.0.copyload
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i39.us381.not, label %.lr.ph383, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.o
  %i.bk = add i64 %.sroa.02.0.i38.us382, 1        ; 2 uses
  %exitcond.not.i39.us = icmp eq i64 %i.bk, %umax49.i37.us
  br i1 %exitcond.not.i39.us, label %.preheader.us.preheader, label %.lr.ph383

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not112.us384, label %.loopexit.i.us, label %.lr.ph386

.lr.ph383:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i38.us382 = phi i64 [ %i.bk, %.preheader ], [ %.sroa.480.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bl = add i64 %.sroa.02.0.i38.us382, %i.bc    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.sroa.1389.0.copyload
  br i1 %i.bm, label %bb.o, label %.loopexit.i.us211

bb.o:                                             ; preds = %.lr.ph383
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %.sroa.02.0.i38.us382
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !45, !noalias !47, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.bl
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !44, !noalias !46, !noundef !4
  %.not21.i41.us = icmp eq i8 %i.bo, %i.bq
  br i1 %.not21.i41.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass342.reass = add i64 %i.bc, %invariant.op455
  %i.br = add i64 %.reass342.reass, %.sroa.02.0.i38.us382
  br label %bb.u

.preheader.us:                                    ; preds = %bb.r
  %.not112.us = icmp eq i64 %i.bs, 0
  br i1 %.not112.us, label %.loopexit.i.us, label %.lr.ph386

.lr.ph386:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i42.us385 = phi i64 [ %i.bs, %.preheader.us ], [ %.sroa.480.0.copyload, %.preheader.us.preheader ]
  %i.bs = add i64 %.sroa.2.0.i42.us385, -1        ; 5 uses
  br i1 %.first_iter, label %bb.q, label %.noexc18.us216

bb.q:                                             ; preds = %.lr.ph386
  %i.bt = add i64 %i.bs, %i.bc                    ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %.sroa.1389.0.copyload
  br i1 %i.bu, label %bb.r, label %.noexc18.us216

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !45, !noalias !47, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.bt
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !44, !noalias !46, !noundef !4
  %.not.i43.us = icmp eq i8 %i.bw, %i.by
  br i1 %.not.i43.us, label %.preheader.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = add i64 %.sroa.682.0.copyload, %i.bc
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i34.us
  %i.ca = add i64 %i.bc, %.sroa.1591.0.copyload
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.cb = phi i64 [ %i.br, %bb.p ], [ %i.ca, %bb.t ], [ %i.bz, %bb.s ] ; 2 uses
  %i.cc = add i64 %i.cb, %i.o                     ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.1389.0.copyload
  br i1 %i.cd, label %.lr.ph.i34.us, label %bb.bf

.loopexit.i.us:                                   ; preds = %.preheader114.us.preheader, %.preheader.us.preheader, %.preheader114.us, %.preheader.us
  %.sroa.793.1.us = phi i64 [ %i.bc, %.preheader.us ], [ %i.x, %.preheader114.us ], [ %i.bc, %.preheader.us.preheader ], [ %i.x, %.preheader114.us.preheader ] ; 3 uses
  %.sroa.3053.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader114.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader114.us.preheader ]
  %.sroa.1194.1.us = add i64 %.sroa.793.1.us, %.sroa.1591.0.copyload ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0175.us
  %gepdiff.us = sub nuw nsw i64 %.sroa.793.1.us, %.sroa.0.0175.us ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us)
          to label %.noexc18.us unwind label %.loopexit117.split.us

.noexc18.us:                                      ; preds = %.loopexit.i.us
  %i.cf = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48, !noundef !4 ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %.not.i16.us = icmp eq i64 %.sroa.793.1.us, %.sroa.0.0175.us
  br i1 %.not.i16.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc18.us
  %i.ch = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull readonly align 1 %i.ce, i64 %gepdiff.us, i1 false)
  %.pre.i17.us = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc18.us
  %i.cj = phi i64 [ %.pre.i17.us, %bb.v ], [ %i.cf, %.noexc18.us ]
  %i.ck = add i64 %i.cj, %gepdiff.us
  store i64 %i.ck, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc22.us unwind label %.loopexit117.split.us

.noexc22.us:                                      ; preds = %bb.w
  %i.cl = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49, !noundef !4 ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  br i1 %.not.i20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc22.us
  %i.cn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i21.us = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc22.us
  %i.cp = phi i64 [ %.pre.i21.us, %bb.x ], [ %i.cl, %.noexc22.us ]
  %i.cq = add i64 %i.cp, %6
  store i64 %i.cq, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  %i.cr = icmp eq i64 %i.r, 0
  br i1 %i.cr, label %bb.bf, label %bb.d

.loopexit117.split.us:                            ; preds = %bb.w, %.loopexit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit117

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cs = and i64 %.sroa.682.0.copyload, 65536
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %.lr.ph.split.split.us, label %bb.bf

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1288.0.copyload) ]
  %i.ct = trunc i64 %.sroa.682.0.copyload to i1   ; 2 uses
  %i.cu = add i64 %7, -1                          ; 2 uses
  %i.cv = icmp eq i64 %.sroa.480.0.copyload, 0
  br i1 %i.cv, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %.not.i.i.i.us.peel.peel = icmp ult i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.us.peel.peel, label %bb.aa, label %.split.i.i.i.us.peel.peel

.split.i.i.i.us.peel.peel:                        ; preds = %bb.z
  %i.cw = icmp eq i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %i.cw, label %bb.ab, label %.loopexit255

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.480.0.copyload
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.cz = icmp sgt i8 %i.cy, -65
  br i1 %i.cz, label %bb.ab, label %.loopexit255

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.us.peel.peel, %.lr.ph.split.split.us
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.480.0.copyload ; 4 uses
  %i.db = icmp samesign eq i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %i.db, label %.loopexit275.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i8, ptr %i.da, align 1, !noalias !52, !noundef !4 ; 5 uses
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %bb.ad, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel.peel: ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.df = and i8 %i.dc, 31
  %i.dg = zext nneg i8 %i.df to i32               ; 3 uses
  %i.dh = add nuw nsw i64 %.sroa.480.0.copyload, 1
  %i.di = icmp samesign ne i64 %i.dh, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = load i8, ptr %i.de, align 1, !noalias !52, !noundef !4
  %i.dk = shl nuw nsw i32 %i.dg, 6
  %i.dl = and i8 %i.dj, 63
  %i.dm = zext nneg i8 %i.dl to i32               ; 2 uses
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = icmp samesign ugt i8 %i.dc, -33
  br i1 %i.do, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel.peel, label %bb.ae

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel.peel
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dq = add nuw nsw i64 %.sroa.480.0.copyload, 2
  %i.dr = icmp samesign ne i64 %i.dq, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = load i8, ptr %i.dp, align 1, !noalias !52, !noundef !4
  %i.dt = shl nuw nsw i32 %i.dm, 6
  %i.du = and i8 %i.ds, 63
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = or disjoint i32 %i.dt, %i.dv            ; 2 uses
  %i.dx = shl nuw nsw i32 %i.dg, 12
  %i.dy = or disjoint i32 %i.dw, %i.dx
  %i.dz = icmp samesign ugt i8 %i.dc, -17
  br i1 %i.dz, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel.peel, label %bb.ae

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel.peel
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  %i.eb = add nuw nsw i64 %.sroa.480.0.copyload, 3
  %i.ec = icmp samesign ne i64 %i.eb, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = load i8, ptr %i.ea, align 1, !noalias !52, !noundef !4
  %i.ee = shl nuw nsw i32 %i.dg, 18
  %i.ef = and i32 %i.ee, 1835008
  %i.eg = shl nuw nsw i32 %i.dw, 6
  %i.eh = and i8 %i.ed, 63
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = or disjoint i32 %i.ej, %i.ef
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.el = zext nneg i8 %i.dc to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel.peel
  %.sroa.4.0.i.ph.i.i.us.peel.peel = phi i32 [ %i.dy, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel.peel ], [ %i.ek, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel.peel ], [ %i.dn, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel.peel ], [ %i.el, %bb.ad ] ; 4 uses
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 1114112
  tail call void @llvm.assume(i1 %i.em)
  br i1 %i.ct, label %.loopexit.i.us211.peel, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 128
  br i1 %i.en, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 2048
  br i1 %i.eo, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 65536
  %..i.i.us.peel.peel = select i1 %i.ep, i64 3, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.01.0.i.i.us.peel.peel = phi i64 [ 2, %bb.ag ], [ %..i.i.us.peel.peel, %bb.ah ], [ 1, %bb.af ]
  %i.eq = add i64 %.sroa.01.0.i.i.us.peel.peel, %.sroa.480.0.copyload ; 15 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.us.peel425 = icmp ult i64 %i.eq, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.us.peel425, label %bb.ak, label %.split.i.i.i.us.peel426

.split.i.i.i.us.peel426:                          ; preds = %bb.aj
  %i.es = icmp eq i64 %i.eq, %.sroa.1389.0.copyload
  br i1 %i.es, label %bb.al, label %.loopexit255

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.ev = icmp sgt i8 %i.eu, -65
  br i1 %i.ev, label %bb.al, label %.loopexit255

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.us.peel426, %bb.ai
  %i.ew = icmp samesign eq i64 %i.eq, %.sroa.1389.0.copyload
  br i1 %i.ew, label %.loopexit.i.us211.peel, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.eq
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !52, !noundef !4 ; 3 uses
  %i.ez = icmp sgt i8 %i.ey, -1
  br i1 %i.ez, label %.loopexit.i.us211.peel, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel427

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel427: ; preds = %bb.am
  %i.fa = add nuw nsw i64 %i.eq, 1
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp samesign ugt i8 %i.ey, -33
  br i1 %i.fc, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel428, label %.loopexit.i.us211.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel428: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel427
  %i.fd = add nuw nsw i64 %i.eq, 2
  %i.fe = icmp samesign ne i64 %i.fd, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp samesign ugt i8 %i.ey, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel429, label %.loopexit.i.us211.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel429: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel428
  %i.fg = add nuw nsw i64 %i.eq, 3
  %i.fh = icmp samesign ne i64 %i.fg, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.fh)
  br label %.loopexit.i.us211.peel

.loopexit275.peel:                                ; preds = %bb.ab
  br i1 %i.ct, label %.loopexit.i.us211.peel, label %bb.bf

.loopexit.i.us211.peel:                           ; preds = %.loopexit275.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel429, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel428, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel427, %bb.am, %bb.al, %bb.ae
  %.sroa.4.1.us273.peel = phi i64 [ %.sroa.1389.0.copyload, %.loopexit275.peel ], [ %.sroa.1389.0.copyload, %bb.al ], [ %.sroa.480.0.copyload, %bb.ae ], [ %i.eq, %bb.am ], [ %i.eq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel427 ], [ %i.eq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel428 ], [ %i.eq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel429 ] ; 6 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.4.1.us273.peel)
          to label %.noexc18.us216.peel unwind label %.loopexit117.split.loopexit.split-lp

.noexc18.us216.peel:                              ; preds = %.loopexit.i.us211.peel
  %i.fi = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48, !noundef !4 ; 3 uses
  %i.fj = icmp sgt i64 %i.fi, -1
  call void @llvm.assume(i1 %i.fj)
  %.not.i16.us217.peel = icmp eq i64 %.sroa.4.1.us273.peel, 0
  br i1 %.not.i16.us217.peel, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc18.us216.peel
  %i.fk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull readonly align 1 %1, i64 %.sroa.4.1.us273.peel, i1 false)
  %.pre.i17.us218.peel = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.noexc18.us216.peel
  %i.fm = phi i64 [ %.pre.i17.us218.peel, %bb.an ], [ %i.fi, %.noexc18.us216.peel ]
  %i.fn = add i64 %i.fm, %.sroa.4.1.us273.peel
  store i64 %i.fn, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc22.us219.peel unwind label %.loopexit117.split.loopexit.split-lp

.noexc22.us219.peel:                              ; preds = %bb.ao
  %i.fo = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49, !noundef !4 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  br i1 %.not.i20, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc22.us219.peel
  %i.fq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i21.us220.peel = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.noexc22.us219.peel
  %i.fs = phi i64 [ %.pre.i21.us220.peel, %bb.ap ], [ %i.fo, %.noexc22.us219.peel ]
  %i.ft = add i64 %i.fs, %6
  store i64 %i.ft, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  %i.fu = icmp eq i64 %i.cu, 0
  br i1 %i.fu, label %bb.bf, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.aq, %bb.bj
  %.sroa.4.0174.us208 = phi i64 [ %.sroa.4.1253, %bb.bj ], [ %.sroa.4.1.us273.peel, %bb.aq ] ; 16 uses
  %.sroa.43.0171.us209 = phi i64 [ %i.fv, %bb.bj ], [ %i.cu, %bb.aq ]
  %i.fv = add i64 %.sroa.43.0171.us209, -1        ; 2 uses
  %i.fw = icmp eq i64 %.sroa.4.0174.us208, 0
  br i1 %i.fw, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.preheader.i.us
  %.not.i.i.i.us.peel = icmp ult i64 %.sroa.4.0174.us208, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.us.peel, label %bb.as, label %.split.i.i.i.us.peel

.split.i.i.i.us.peel:                             ; preds = %bb.ar
  %i.fx = icmp eq i64 %.sroa.4.0174.us208, %.sroa.1389.0.copyload
  br i1 %i.fx, label %bb.at, label %.loopexit255

bb.as:                                            ; preds = %bb.ar
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.4.0174.us208
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.ga = icmp sgt i8 %i.fz, -65
  br i1 %i.ga, label %bb.at, label %.loopexit255

bb.at:                                            ; preds = %bb.as, %.split.i.i.i.us.peel, %.preheader.i.us
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.4.0174.us208 ; 4 uses
  %i.gc = icmp samesign eq i64 %.sroa.4.0174.us208, %.sroa.1389.0.copyload
  br i1 %i.gc, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gd = load i8, ptr %i.gb, align 1, !noalias !52, !noundef !4 ; 5 uses
  %i.ge = icmp sgt i8 %i.gd, -1
  br i1 %i.ge, label %bb.av, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel: ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gg = and i8 %i.gd, 31
  %i.gh = zext nneg i8 %i.gg to i32               ; 3 uses
  %i.gi = add nuw nsw i64 %.sroa.4.0174.us208, 1
  %i.gj = icmp samesign ne i64 %i.gi, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i8, ptr %i.gf, align 1, !noalias !52, !noundef !4
  %i.gl = shl nuw nsw i32 %i.gh, 6
  %i.gm = and i8 %i.gk, 63
  %i.gn = zext nneg i8 %i.gm to i32               ; 2 uses
  %i.go = or disjoint i32 %i.gl, %i.gn
  %i.gp = icmp samesign ugt i8 %i.gd, -33
  br i1 %i.gp, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel, label %bb.aw

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gr = add nuw nsw i64 %.sroa.4.0174.us208, 2
  %i.gs = icmp samesign ne i64 %i.gr, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.gs)
  %i.gt = load i8, ptr %i.gq, align 1, !noalias !52, !noundef !4
  %i.gu = shl nuw nsw i32 %i.gn, 6
  %i.gv = and i8 %i.gt, 63
  %i.gw = zext nneg i8 %i.gv to i32
  %i.gx = or disjoint i32 %i.gu, %i.gw            ; 2 uses
  %i.gy = shl nuw nsw i32 %i.gh, 12
  %i.gz = or disjoint i32 %i.gx, %i.gy
  %i.ha = icmp samesign ugt i8 %i.gd, -17
  br i1 %i.ha, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel, label %bb.aw

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 3
  %i.hc = add nuw nsw i64 %.sroa.4.0174.us208, 3
  %i.hd = icmp samesign ne i64 %i.hc, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.hd)
  %i.he = load i8, ptr %i.hb, align 1, !noalias !52, !noundef !4
  %i.hf = shl nuw nsw i32 %i.gh, 18
  %i.hg = and i32 %i.hf, 1835008
  %i.hh = shl nuw nsw i32 %i.gx, 6
  %i.hi = and i8 %i.he, 63
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj
  %i.hl = or disjoint i32 %i.hk, %i.hg
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hm = zext nneg i8 %i.gd to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel
  %.sroa.4.0.i.ph.i.i.us.peel = phi i32 [ %i.gz, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us.peel ], [ %i.hl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us.peel ], [ %i.go, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us.peel ], [ %i.hm, %bb.av ] ; 4 uses
  %i.hn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 1114112
  call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 128
  br i1 %i.ho, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 2048
  br i1 %i.hp, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 65536
  %..i.i.us.peel = select i1 %i.hq, i64 3, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %.sroa.01.0.i.i.us.peel = phi i64 [ 2, %bb.ax ], [ %..i.i.us.peel, %bb.ay ], [ 1, %bb.aw ]
  %i.hr = add i64 %.sroa.01.0.i.i.us.peel, %.sroa.4.0174.us208 ; 15 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.us = icmp ult i64 %i.hr, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.us, label %bb.bb, label %.split.i.i.i.us

.split.i.i.i.us:                                  ; preds = %bb.ba
  %i.ht = icmp eq i64 %i.hr, %.sroa.1389.0.copyload
  br i1 %i.ht, label %bb.bc, label %.loopexit255

bb.bb:                                            ; preds = %bb.ba
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.hr
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.hw = icmp sgt i8 %i.hv, -65
  br i1 %i.hw, label %bb.bc, label %.loopexit255

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.us, %bb.az
  %i.hx = icmp samesign eq i64 %i.hr, %.sroa.1389.0.copyload
  br i1 %i.hx, label %.split195.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.hr
  %i.hz = load i8, ptr %i.hy, align 1, !noalias !52, !noundef !4 ; 3 uses
  %i.ia = icmp sgt i8 %i.hz, -1
  br i1 %i.ia, label %.split195.us, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us: ; preds = %bb.bd
  %i.ib = add nuw nsw i64 %i.hr, 1
  %i.ic = icmp samesign ne i64 %i.ib, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp samesign ugt i8 %i.hz, -33
  br i1 %i.id, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us, label %.split195.us

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us
  %i.ie = add nuw nsw i64 %i.hr, 2
  %i.if = icmp samesign ne i64 %i.ie, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.if)
  %i.ig = icmp samesign ugt i8 %i.hz, -17
  br i1 %i.ig, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us, label %.split195.us

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us
  %i.ih = add nuw nsw i64 %i.hr, 3
  %i.ii = icmp samesign ne i64 %i.ih, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.ii)
  br label %.split195.us

.loopexit255:                                     ; preds = %bb.as, %.split.i.i.i.us.peel, %bb.bb, %.split.i.i.i.us, %bb.ak, %.split.i.i.i.us.peel426, %bb.aa, %.split.i.i.i.us.peel.peel
  %.sroa.4.1.lcssa = phi i64 [ %.sroa.480.0.copyload, %.split.i.i.i.us.peel.peel ], [ %.sroa.480.0.copyload, %bb.aa ], [ %i.eq, %.split.i.i.i.us.peel426 ], [ %i.eq, %bb.ak ], [ %.sroa.4.0174.us208, %bb.as ], [ %.sroa.4.0174.us208, %.split.i.i.i.us.peel ], [ %i.hr, %.split.i.i.i.us ], [ %i.hr, %bb.bb ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1288.0.copyload, i64 noundef %.sroa.1389.0.copyload, i64 noundef %.sroa.4.1.lcssa, i64 noundef %.sroa.1389.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit255
  unreachable

.loopexit.i.us211:                                ; preds = %.lr.ph383
  %8 = add i64 %i.bc, %.sroa.480.0.copyload
  %umax.i40 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1389.0.copyload, i64 %8)
  br label %.noexc18.us216

.noexc18.us216:                                   ; preds = %bb.j, %.lr.ph379, %bb.q, %.lr.ph386, %.loopexit.i.us211, %bb.be
  %9 = phi i64 [ %umax.i40, %.loopexit.i.us211 ], [ %i.bt, %bb.q ], [ %umax.i, %bb.be ], [ %i.bs, %.lr.ph386 ], [ %i.ar, %bb.j ], [ %i.ap, %.lr.ph379 ]
  %10 = phi i64 [ %.sroa.1389.0.copyload, %.loopexit.i.us211 ], [ %.sroa.1389.0.copyload, %bb.q ], [ %.sroa.1389.0.copyload, %bb.be ], [ %.sroa.1591.0.copyload, %.lr.ph386 ], [ %.sroa.1389.0.copyload, %bb.j ], [ %.sroa.1591.0.copyload, %.lr.ph379 ]
  %11 = phi ptr [ @3, %.loopexit.i.us211 ], [ @2, %bb.q ], [ @3, %bb.be ], [ @1, %.lr.ph386 ], [ @2, %bb.j ], [ @1, %.lr.ph379 ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef range(i64 0, -9223372036854775808) %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #18
          to label %.split187.us.cont unwind label %.loopexit.split-lp

.split187.us.cont:                                ; preds = %.noexc18.us216
  unreachable

bb.be:                                            ; preds = %.lr.ph377
  %12 = add i64 %i.x, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1389.0.copyload, i64 %12)
  br label %.noexc18.us216

.loopexit117.split.loopexit:                      ; preds = %.loopexit, %.split195.us
  %lpad.loopexit412 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit117

.loopexit117.split.loopexit.split-lp:             ; preds = %.loopexit.i.us211.peel, %bb.ao
  %lpad.loopexit.split-lp413 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit117

.loopexit.split-lp:                               ; preds = %.noexc18.us216, %.loopexit255
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit117

bb.bf:                                            ; preds = %.loopexit275.peel, %bb.aq, %bb.at, %bb.bj, %bb.e, %bb.n, %bb.y, %.sink.split.i.us, %bb.u, %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit, %.lr.ph.split
  %.sroa.0.0158 = phi i64 [ %.sroa.0.0175.us, %bb.e ], [ %.sroa.0.0175.us, %.sink.split.i.us ], [ 0, %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.0.0175.us, %bb.u ], [ 0, %.lr.ph.split ], [ %.sroa.0.0175.us, %bb.n ], [ %.sroa.1194.1.us, %bb.y ], [ 0, %.loopexit275.peel ], [ %.sroa.4.1.us273.peel, %bb.aq ], [ %.sroa.4.1253, %bb.bj ], [ %.sroa.4.0174.us208, %bb.at ] ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0158
  %gepdiff113 = sub nuw nsw i64 %2, %.sroa.0.0158 ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff113)
          to label %.noexc22.us219 unwind label %bb.c

.noexc22.us219:                                   ; preds = %bb.bf
  %i.ij = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !53, !noundef !4 ; 3 uses
  %i.ik = icmp sgt i64 %i.ij, -1
  call void @llvm.assume(i1 %i.ik)
  %.not.i = icmp eq i64 %2, %.sroa.0.0158
  br i1 %.not.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.noexc22.us219
  %i.il = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !53, !nonnull !4, !noundef !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr nonnull readonly align 1 %13, i64 %gepdiff113, i1 false)
  %.pre.i21.us220 = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !53
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.noexc22.us219
  %i.in = phi i64 [ %.pre.i21.us220, %bb.bg ], [ %i.ij, %.noexc22.us219 ]
  %i.io = add i64 %i.in, %gepdiff113
  store i64 %i.io, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.split195.us:                                     ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us, %bb.bd, %bb.bc
  %.sroa.4.1253 = phi i64 [ %i.hr, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.us ], [ %.sroa.1389.0.copyload, %bb.bc ], [ %i.hr, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.us ], [ %i.hr, %bb.bd ], [ %i.hr, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.us ] ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.4.0174.us208
  %gepdiff = sub nuw nsw i64 %.sroa.4.1253, %.sroa.4.0174.us208 ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.split187.us.invoke unwind label %.loopexit117.split.loopexit

.split187.us.invoke:                              ; preds = %.split195.us
  %15 = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48, !noundef !4 ; 3 uses
  %16 = icmp sgt i64 %15, -1
  call void @llvm.assume(i1 %16)
  %.not.i16 = icmp eq i64 %.sroa.4.1253, %.sroa.4.0174.us208
  br i1 %.not.i16, label %.loopexit, label %.split.us

.split.us:                                        ; preds = %.split187.us.invoke
  %17 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull readonly align 1 %14, i64 %gepdiff, i1 false)
  %.pre.i17 = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  br label %.loopexit

.loopexit:                                        ; preds = %.split187.us.invoke, %.split.us
  %19 = phi i64 [ %.pre.i17, %.split.us ], [ %15, %.split187.us.invoke ]
  %20 = add i64 %19, %gepdiff
  store i64 %20, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !48
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc15 unwind label %.loopexit117.split.loopexit

.noexc15:                                         ; preds = %.loopexit
  %i.ip = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49, !noundef !4 ; 3 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  call void @llvm.assume(i1 %i.iq)
  br i1 %.not.i20, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.noexc15
  %i.ir = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.noexc15
  %i.it = phi i64 [ %.pre.i, %bb.bi ], [ %i.ip, %.noexc15 ]
  %i.iu = add i64 %i.it, %6
  store i64 %i.iu, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !49
  %21 = icmp eq i64 %i.fv, 0
  br i1 %21, label %bb.bf, label %.preheader.i.us, !llvm.loop !39

bb.bk:                                            ; preds = %.loopexit117
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bl:                                            ; preds = %.loopexit117
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsjRvGck33osM_6diesel.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsjRvGck33osM_6diesel(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = load i64, ptr %.0.val, align 8, !range !61, !alias.scope !62, !noundef !4
  switch i64 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !62, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #21, !noalias !62
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = ptrtoint ptr %.val2.i.i.i to i64         ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit
    i64 1, label %bb.f
  ], !prof !63

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %.val2.i.i.i, inttoptr (i64 180388626432 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.val2.i.i.i, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !62 ; 5 uses
  %i.l = getelementptr i8, ptr %.val2.i.i.i, i64 7
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !62, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !62 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i)
          to label %bb.h unwind label %bb.j, !noalias !62

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !4, !noalias !62 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsjRvGck33osM_6diesel.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !64, !invariant.load !4, !noalias !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #21, !noalias !62
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsjRvGck33osM_6diesel.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !4, !noalias !62 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !64, !invariant.load !4, !noalias !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #21, !noalias !62
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 24, i64 noundef 8) #21, !noalias !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #21
  resume { ptr, i32 } %i.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsjRvGck33osM_6diesel.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 24, i64 noundef 8) #21, !noalias !62
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.d, %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsjRvGck33osM_6diesel.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #21
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5value5ValueECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB16_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitE32forget_allocation_drop_remainingB16_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5h_4TakepEB3N_8try_fold5checksB4u_INtNtBc_6result6ResultB4u_zENCINvNtB12_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB63_B4u_EEB1V_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias noundef align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i16, i16 } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB1N_42gen_vec_of_appropriate_length_valid_digits0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3N_4find5checksNCINvNvXs0_NtB8_10skip_whileINtB53_9SkipWhileppEB3N_4next5checksNCB2X_s_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowsEEB1V_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef dereferenceable(1), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsc61CYD6Y1ak_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE6insertCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsc61CYD6Y1ak_10serde_json5value5ValueENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_2pg7backend2PgE15push_identifierB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noreturn }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{i64 0, i64 2}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775807}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i8 0, i8 6}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i8 -1, i8 6}
!13 = distinct !{!13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel"}
!14 = distinct !{!14, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 2"}
!15 = distinct !{!15, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 3"}
!16 = distinct !{!16, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 1"}
!17 = distinct !{!17, !13, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 0"}
!18 = distinct !{!18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel"}
!19 = distinct !{!19, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 2"}
!20 = distinct !{!20, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 3"}
!21 = distinct !{!21, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 1"}
!22 = distinct !{!22, !18, !"_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjRvGck33osM_6diesel: argument 0"}
!23 = distinct !{!23, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!24 = distinct !{!24, !23, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!25 = distinct !{!25, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!26 = distinct !{!26, !25, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!27 = distinct !{!27, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!28 = distinct !{!28, !27, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!29 = distinct !{!29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!30 = distinct !{!30, !29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!31 = distinct !{!31, !29, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!32 = distinct !{!32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!33 = distinct !{!33, !32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!35 = distinct !{!35, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjRvGck33osM_6diesel"}
!36 = distinct !{!36, !35, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjRvGck33osM_6diesel: argument 0"}
!37 = distinct !{!37, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!38 = distinct !{!38, !37, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!39 = distinct !{!39, !54}
!40 = !{!14}
!41 = !{!15}
!42 = !{!17, !16, !15}
!43 = !{!17, !16, !14}
!44 = !{!19}
!45 = !{!20}
!46 = !{!22, !21, !20}
!47 = !{!22, !21, !19}
!48 = !{!24}
!49 = !{!26}
!50 = !{!28}
!51 = !{!34, !33, !31, !30}
!52 = !{!36, !34, !33, !31, !30}
!53 = !{!38}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = distinct !{!55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplECsjRvGck33osM_6diesel"}
!56 = distinct !{!56, !55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplECsjRvGck33osM_6diesel: argument 0"}
!57 = distinct !{!57, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsjRvGck33osM_6diesel"}
!58 = distinct !{!58, !57, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsjRvGck33osM_6diesel: argument 0"}
!59 = !{!56}
!60 = !{!58}
!61 = !{i64 0, i64 25}
!62 = !{!58, !56}
!63 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!64 = !{i64 1, i64 536870913}
!65 = distinct !{!65, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtBU_10skip_while9SkipWhileINtNtBU_3map3MapINtNtB7_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2S_42gen_vec_of_appropriate_length_valid_digits0ENCB42_s_0EEINtB5_18SpecInPlaceCollectsBP_E16collect_in_placeB30_"}
!66 = distinct !{!66, !65, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec16in_place_collectINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtBU_10skip_while9SkipWhileINtNtBU_3map3MapINtNtB7_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2S_42gen_vec_of_appropriate_length_valid_digits0ENCB42_s_0EEINtB5_18SpecInPlaceCollectsBP_E16collect_in_placeB30_: argument 0"}
!67 = distinct !{!67, !"_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB5_4TakeINtNtB7_10skip_while9SkipWhileINtNtB7_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2y_42gen_vec_of_appropriate_length_valid_digits0ENCB3I_s_0EENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB1N_13in_place_drop11InPlaceDropsENCINvNtB1N_16in_place_collect24write_in_place_with_dropsE0INtNtBb_6result6ResultB5q_zEEB2G_"}
!68 = distinct !{!68, !67, !"_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB5_4TakeINtNtB7_10skip_while9SkipWhileINtNtB7_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2y_42gen_vec_of_appropriate_length_valid_digits0ENCB3I_s_0EENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB1N_13in_place_drop11InPlaceDropsENCINvNtB1N_16in_place_collect24write_in_place_with_dropsE0INtNtBb_6result6ResultB5q_zEEB2G_: argument 0"}
!69 = distinct !{!69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_"}
!70 = distinct !{!70, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 1"}
!71 = distinct !{!71, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 2"}
!72 = distinct !{!72, !69, !"_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10skip_whileINtB6_9SkipWhileINtNtB8_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB2h_42gen_vec_of_appropriate_length_valid_digits0ENCB3r_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropsENCINvNvXs_NtB8_4takeINtB5V_4TakepEB4r_8try_fold5checksB58_INtNtBc_6result6ResultB58_zENCINvNtB1w_16in_place_collect24write_in_place_with_dropsE0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_B58_EEB2p_: argument 0"}
!73 = distinct !{!73, !"_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checksINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropsEINtNtBf_6result6ResultB1S_zENCINvNtB1X_16in_place_collect24write_in_place_with_dropsE0E0CsjRvGck33osM_6diesel"}
!74 = distinct !{!74, !73, !"_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checksINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropsEINtNtBf_6result6ResultB1S_zENCINvNtB1X_16in_place_collect24write_in_place_with_dropsE0E0CsjRvGck33osM_6diesel: argument 0"}
!75 = !{!66}
!76 = !{!68}
!77 = !{!68, !66}
!78 = !{!70}
!79 = !{!71}
!80 = !{!70, !68, !66}
!81 = !{!72, !71}
!82 = !{!71, !68, !66}
!83 = !{!74, !72, !70}
!84 = !{!74, !72, !70, !71, !68, !66}
!85 = distinct !{!85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!86 = distinct !{!86, !85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 1"}
!87 = distinct !{!87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel"}
!88 = distinct !{!88, !87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel: argument 1"}
!89 = distinct !{!89, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel"}
!90 = distinct !{!90, !89, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel: argument 0"}
!91 = distinct !{!91, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel"}
!92 = distinct !{!92, !91, !"_RINvXst_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngmmECsjRvGck33osM_6diesel: argument 0"}
!93 = distinct !{!93, !85, !"_RINvXs6_NtNtCsloy3FhB6CEa_4rand5distr7uniformINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!94 = distinct !{!94, !87, !"_RINvXs_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs5small8SmallRngjjECsjRvGck33osM_6diesel: argument 0"}
!95 = distinct !{!95, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randommECsjRvGck33osM_6diesel"}
!96 = distinct !{!96, !95, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randommECsjRvGck33osM_6diesel: argument 0"}
!97 = distinct !{!97, !"_RINvXs0_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!98 = distinct !{!98, !97, !"_RINvXs0_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!99 = distinct !{!99, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u32CsjRvGck33osM_6diesel"}
!100 = distinct !{!100, !99, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u32CsjRvGck33osM_6diesel: argument 0"}
!101 = distinct !{!101, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u32"}
!102 = distinct !{!102, !101, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u32: argument 0"}
!103 = distinct !{!103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel"}
!104 = distinct !{!104, !103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 1"}
!105 = distinct !{!105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel"}
!106 = distinct !{!106, !105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 1"}
!107 = distinct !{!107, !103, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 0"}
!108 = distinct !{!108, !105, !"_RINvXsw_NtNtNtCsloy3FhB6CEa_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs5small8SmallRngyyECsjRvGck33osM_6diesel: argument 0"}
!109 = distinct !{!109, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randomyECsjRvGck33osM_6diesel"}
!110 = distinct !{!110, !109, !"_RINvYNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt6randomyECsjRvGck33osM_6diesel: argument 0"}
!111 = distinct !{!111, !"_RINvXs1_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel"}
!112 = distinct !{!112, !111, !"_RINvXs1_NtNtCsloy3FhB6CEa_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs5small8SmallRngECsjRvGck33osM_6diesel: argument 0"}
!113 = distinct !{!113, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u64CsjRvGck33osM_6diesel"}
!114 = distinct !{!114, !113, !"_RNvXCs2kTapb1bg6j_9rand_coreNtNtNtCsloy3FhB6CEa_4rand4rngs5small8SmallRngNtB2_3Rng8next_u64CsjRvGck33osM_6diesel: argument 0"}
!115 = distinct !{!115, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u64"}
!116 = distinct !{!116, !115, !"_RNvXs_NtNtCsloy3FhB6CEa_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtCs2kTapb1bg6j_9rand_core6TryRng12try_next_u64: argument 0"}
!117 = distinct !{!117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel"}
!118 = distinct !{!118, !117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel: argument 1"}
!119 = distinct !{!119, !117, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsloy3FhB6CEa_4rand5distr7uniform5ErrorE6unwrapCsjRvGck33osM_6diesel: argument 0"}
!120 = !{!92, !90, !88, !86}
!121 = !{!94, !93}
!122 = !{!102, !100, !98, !96, !92, !90, !88, !86}
!123 = !{!106, !104, !88, !86}
!124 = !{!108, !107, !94, !93}
!125 = !{!116, !114, !112, !110, !106, !104, !88, !86}
!126 = !{!119, !118}
!127 = !{!119}
!128 = distinct !{!128, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!129 = distinct !{!129, !128, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!130 = distinct !{!130, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!131 = distinct !{!131, !130, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!132 = distinct !{!132, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!133 = distinct !{!133, !132, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!134 = !{!129}
!135 = !{!131}
!136 = !{!133}
!137 = distinct !{!137, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!138 = distinct !{!138, !137, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!139 = distinct !{!139, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!140 = distinct !{!140, !139, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!141 = !{!138}
!142 = !{!140}
!143 = distinct !{!143, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!144 = distinct !{!144, !143, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!145 = distinct !{!145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel"}
!146 = distinct !{!146, !145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel: argument 0"}
!147 = distinct !{!147, !145, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsc61CYD6Y1ak_10serde_json5value5ValueE8push_mutCsjRvGck33osM_6diesel: argument 1"}
!148 = !{!144}
!149 = !{!146}
!150 = !{!147}
!151 = distinct !{!151, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!152 = distinct !{!152, !151, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!153 = distinct !{!153, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!154 = distinct !{!154, !153, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!155 = distinct !{!155, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!156 = distinct !{!156, !155, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!157 = !{!152}
!158 = !{!154}
!159 = !{!156}
!160 = distinct !{!160, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!161 = distinct !{!161, !160, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!162 = distinct !{!162, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!163 = distinct !{!163, !162, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!164 = distinct !{!164, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!165 = distinct !{!165, !164, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!166 = !{!161}
!167 = !{!163}
!168 = !{!165}
!169 = distinct !{!169, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!170 = distinct !{!170, !169, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!171 = distinct !{!171, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!172 = distinct !{!172, !171, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!173 = distinct !{!173, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!174 = distinct !{!174, !173, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!175 = distinct !{!175, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!176 = distinct !{!176, !175, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!177 = distinct !{!177, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!178 = distinct !{!178, !177, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!179 = distinct !{!179, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!180 = distinct !{!180, !179, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!181 = distinct !{!181, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!182 = distinct !{!182, !181, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!183 = distinct !{!183, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!184 = distinct !{!184, !183, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!185 = distinct !{!185, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!186 = distinct !{!186, !185, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!187 = distinct !{!187, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!188 = distinct !{!188, !187, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!189 = distinct !{!189, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!190 = distinct !{!190, !189, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!191 = !{!170}
!192 = !{!172}
!193 = !{!174}
!194 = !{!176}
!195 = !{!178}
!196 = !{!"branch_weights", i32 4001, i32 4000000}
!197 = !{!180}
!198 = !{!182}
!199 = !{!184}
!200 = !{!186}
!201 = !{!188}
!202 = !{!190}
!203 = distinct !{!203, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!204 = distinct !{!204, !203, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!205 = distinct !{!205, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel"}
!206 = distinct !{!206, !205, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsc61CYD6Y1ak_10serde_json5value5ValueEECsjRvGck33osM_6diesel: argument 0"}
!207 = distinct !{!207, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel"}
!208 = distinct !{!208, !207, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel: argument 0"}
!209 = !{!204}
!210 = !{!206}
!211 = !{!208}
!212 = distinct !{!212, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_null"}
!213 = distinct !{!213, !212, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_null: argument 0"}
!214 = distinct !{!214, !212, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_null: argument 1"}
!215 = distinct !{!215, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header"}
!216 = distinct !{!216, !215, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 1"}
!217 = distinct !{!217, !215, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 0"}
!218 = distinct !{!218, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header"}
!219 = distinct !{!219, !218, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header: argument 0"}
!220 = distinct !{!220, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_bool"}
!221 = distinct !{!221, !220, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_bool: argument 0"}
!222 = distinct !{!222, !220, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb16write_jsonb_bool: argument 1"}
!223 = distinct !{!223, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header"}
!224 = distinct !{!224, !223, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 1"}
!225 = distinct !{!225, !223, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 0"}
!226 = distinct !{!226, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header"}
!227 = distinct !{!227, !226, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header: argument 0"}
!228 = distinct !{!228, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header"}
!229 = distinct !{!229, !228, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 1"}
!230 = distinct !{!230, !228, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header: argument 0"}
!231 = distinct !{!231, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header"}
!232 = distinct !{!232, !231, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb19create_jsonb_header: argument 0"}
!233 = distinct !{!233, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_number"}
!234 = distinct !{!234, !233, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_number: argument 0"}
!235 = distinct !{!235, !233, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_number: argument 1"}
!236 = distinct !{!236, !233, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_number: argument 2"}
!237 = distinct !{!237, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb15write_jsonb_int"}
!238 = distinct !{!238, !237, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb15write_jsonb_int: argument 1:thread"}
!239 = distinct !{!239, !237, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb15write_jsonb_int: argument 0:thread"}
!240 = distinct !{!240, !"_RNvXs1M_NtCs40k4W9msRzi_5alloc6stringxNtB6_12SpecToString14spec_to_string"}
!241 = distinct !{!241, !240, !"_RNvXs1M_NtCs40k4W9msRzi_5alloc6stringxNtB6_12SpecToString14spec_to_string: argument 0"}
!242 = distinct !{!242, !237, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb15write_jsonb_int: argument 0"}
!243 = distinct !{!243, !237, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb15write_jsonb_int: argument 1"}
!244 = distinct !{!244, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push"}
!245 = distinct !{!245, !244, !"_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push: argument 0"}
!246 = distinct !{!246, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!247 = distinct !{!247, !246, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!248 = distinct !{!248, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel"}
!249 = distinct !{!249, !248, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel: argument 0"}
!250 = distinct !{!250, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_float"}
!251 = distinct !{!251, !250, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_float: argument 0"}
!252 = distinct !{!252, !250, !"_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_float: argument 1"}
!253 = distinct !{!253, !"_RNvXsC_NtCs40k4W9msRzi_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsjRvGck33osM_6diesel"}
!254 = distinct !{!254, !253, !"_RNvXsC_NtCs40k4W9msRzi_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsjRvGck33osM_6diesel: argument 1"}
end_hunk_1
