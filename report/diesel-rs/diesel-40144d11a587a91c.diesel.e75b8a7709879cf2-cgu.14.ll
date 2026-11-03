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
          to label %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit
  %.sroa.079.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.480.0.copyload = load i64, ptr %.sroa.480.0..sroa_idx, align 8 ; 26 uses
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
  %i.l = icmp eq i64 %7, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %i.m = trunc nuw i64 %.sroa.079.0.copyload to i1
  %i.n = add nsw i64 %.sroa.1591.0.copyload, -1   ; 3 uses
  %.not.i20 = icmp eq i64 %6, 0                   ; 3 uses
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1288.0.copyload), "nonnull"(ptr %.sroa.1490.0.copyload) ]
  %i.o = sub i64 %.sroa.1591.0.copyload, %.sroa.682.0.copyload
  %umax49.i37.us = tail call i64 @llvm.umax.i64(i64 %.sroa.480.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.1591.0.copyload)
  %i.p = add i64 %.sroa.480.0.copyload, -1        ; 2 uses
  %.first_iter = icmp ult i64 %i.p, %.sroa.1591.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not112.us = icmp eq i64 %.sroa.480.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.480.0.copyload
  %exitcond.not.i39.us367.not = icmp ult i64 %.sroa.480.0.copyload, %.sroa.1591.0.copyload
  %invariant.op445 = sub i64 1, %.sroa.480.0.copyload
  %.not112.us370 = icmp eq i64 %.sroa.480.0.copyload, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %.lr.ph.split.us
  %.sroa.0.0175.us = phi i64 [ 0, %.lr.ph.split.us ], [ %.sroa.1194.1.us, %bb.x ] ; 7 uses
  %.sroa.18.0173.us = phi i64 [ %.sroa.884.0.copyload, %.lr.ph.split.us ], [ %.sroa.1194.1.us, %bb.x ] ; 3 uses
  %.sroa.3053.0172.us = phi i64 [ %.sroa.1086.0.copyload, %.lr.ph.split.us ], [ %.sroa.3053.1.us, %bb.x ] ; 2 uses
  %.sroa.43.0171.us = phi i64 [ %7, %.lr.ph.split.us ], [ %i.q, %bb.x ]
  %i.q = add i64 %.sroa.43.0171.us, -1            ; 2 uses
  %i.r = icmp eq i64 %.sroa.3053.0172.us, -1
  %i.s = add i64 %.sroa.18.0173.us, %i.n          ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.1389.0.copyload ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br i1 %i.t, label %.lr.ph.i26.us, label %.loopexit

.lr.ph.i26.us:                                    ; preds = %bb.d, %.sink.split.i.us
  %i.u = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3053.0172.us, %bb.d ] ; 3 uses
  %i.v = phi i64 [ %i.ay, %.sink.split.i.us ], [ %i.s, %bb.d ]
  %i.w = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0173.us, %bb.d ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !36, !noundef !4
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %.sroa.783.0.copyload
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i26.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.u, i64 %.sroa.480.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.1591.0.copyload)
  %exitcond.not.i.us361.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.1591.0.copyload
  br i1 %exitcond.not.i.us361.not, label %.lr.ph363, label %.preheader114.us.preheader

bb.f:                                             ; preds = %bb.g
  %i.ae = add nuw i64 %.sroa.02.0.i.us362, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ae, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader114.us.preheader, label %.lr.ph363

.preheader114.us.preheader:                       ; preds = %bb.f, %bb.e
  %i.af = icmp ult i64 %i.u, %.sroa.480.0.copyload
  br i1 %i.af, label %.lr.ph365, label %.loopexit.i.us

.lr.ph363:                                        ; preds = %bb.e, %bb.f
  %.sroa.02.0.i.us362 = phi i64 [ %i.ae, %bb.f ], [ %.sroa.0.0.i.i.us, %bb.e ] ; 4 uses
  %i.ag = add i64 %.sroa.02.0.i.us362, %i.w       ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.sroa.1389.0.copyload
  br i1 %i.ah, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph363
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %.sroa.02.0.i.us362
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !37, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !36, !noundef !4
  %.not21.i.us = icmp eq i8 %i.aj, %i.al
  br i1 %.not21.i.us, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.reass = add i64 %i.w, %invariant.op
  %i.am = add i64 %.reass.reass, %.sroa.02.0.i.us362
  br label %.sink.split.i.us

.preheader114.us:                                 ; preds = %bb.j
  %i.an = icmp ult i64 %i.u, %i.ao
  br i1 %i.an, label %.lr.ph365, label %.loopexit.i.us

.lr.ph365:                                        ; preds = %.preheader114.us.preheader, %.preheader114.us
  %.sroa.2.0.i.us364 = phi i64 [ %i.ao, %.preheader114.us ], [ %.sroa.480.0.copyload, %.preheader114.us.preheader ]
  %i.ao = add i64 %.sroa.2.0.i.us364, -1          ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.1591.0.copyload
  br i1 %i.ap, label %bb.i, label %.split195.us.invoke

bb.i:                                             ; preds = %.lr.ph365
  %i.aq = add i64 %i.ao, %i.w                     ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.1389.0.copyload
  br i1 %i.ar, label %bb.j, label %.split195.us.invoke

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !37, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !36, !noundef !4
  %.not.i27.us = icmp eq i8 %i.at, %i.av
  br i1 %.not.i27.us, label %.preheader114.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add i64 %i.w, %.sroa.682.0.copyload
  br label %.sink.split.i.us

bb.l:                                             ; preds = %.lr.ph.i26.us
  %i.ax = add i64 %i.w, %.sroa.1591.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i.us = phi i64 [ %i.o, %bb.k ], [ 0, %bb.h ], [ 0, %bb.l ]
  %.ph71.i.us = phi i64 [ %i.aw, %bb.k ], [ %i.am, %bb.h ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = add i64 %.ph71.i.us, %i.n               ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.1389.0.copyload
  br i1 %i.az, label %.lr.ph.i26.us, label %.loopexit

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  br i1 %i.t, label %.lr.ph.i34.us, label %.loopexit

.lr.ph.i34.us:                                    ; preds = %bb.m, %bb.t
  %i.ba = phi i64 [ %i.ca, %bb.t ], [ %i.s, %bb.m ]
  %i.bb = phi i64 [ %i.bz, %bb.t ], [ %.sroa.18.0173.us, %bb.m ] ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !38, !noundef !4
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %.sroa.783.0.copyload
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i39.us367.not, label %bb.p, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.q
  %i.bj = add nuw i64 %.sroa.02.0.i38.us376, 1    ; 2 uses
  %exitcond.not.i39.us = icmp eq i64 %i.bj, %umax49.i37.us
  br i1 %exitcond.not.i39.us, label %.preheader.us.preheader, label %bb.p

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph372

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not112.us370, label %.loopexit.i.us, label %.lr.ph369

.preheader.us.preheader.a:                        ; preds = %bb.n
  %.not112.us.us = icmp eq i64 %8, 0
  br i1 %.not112.us.us, label %.loopexit.i.us, label %.lr.ph369

.lr.ph369:                                        ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i38.us368 = phi i64 [ %8, %.preheader.us.preheader.a ], [ %.sroa.480.0.copyload, %.preheader.us.us.preheader ]
  %8 = add i64 %.sroa.02.0.i38.us368, -1          ; 4 uses
  %i.bk = add i64 %8, %i.bb                       ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.1389.0.copyload
  br i1 %i.bl, label %bb.n, label %.split195.us.invoke

bb.n:                                             ; preds = %.lr.ph369
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %8
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !39, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !38, !noundef !4
  %.not21.i41.us.a = icmp eq i8 %i.bn, %i.bp
  br i1 %.not21.i41.us.a, label %.preheader.us.preheader.a, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = add i64 %.sroa.682.0.copyload, %i.bb
  br label %bb.t

.lr.ph372:                                        ; preds = %.preheader.us.preheader
  br i1 %.not112.us, label %.loopexit.i.us, label %.split195.us.invoke

bb.p:                                             ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i38.us376 = phi i64 [ %i.bj, %.preheader ], [ %.sroa.480.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.br = add i64 %.sroa.02.0.i38.us376, %i.bb    ; 2 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.1389.0.copyload
  br i1 %i.bs, label %bb.q, label %.split195.us

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.1490.0.copyload, i64 %.sroa.02.0.i38.us376
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !39, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !38, !noundef !4
  %.not.i43.us = icmp eq i8 %i.bu, %i.bw
  br i1 %.not.i43.us, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass331.reass = add i64 %i.bb, %invariant.op445
  %i.bx = add i64 %.reass331.reass, %.sroa.02.0.i38.us376
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i34.us
  %i.by = add i64 %i.bb, %.sroa.1591.0.copyload
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.r
  %i.bz = phi i64 [ %i.bx, %bb.r ], [ %i.by, %bb.s ], [ %i.bq, %bb.o ] ; 2 uses
  %i.ca = add i64 %i.bz, %i.n                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.1389.0.copyload
  br i1 %i.cb, label %.lr.ph.i34.us, label %.loopexit

.loopexit.i.us:                                   ; preds = %.preheader114.us.preheader, %.preheader.us.us.preheader, %.preheader114.us, %.preheader.us.preheader.a, %.lr.ph372
  %.sroa.793.1.us = phi i64 [ %i.bb, %.preheader.us.preheader.a ], [ %i.bb, %.lr.ph372 ], [ %i.w, %.preheader114.us ], [ %i.bb, %.preheader.us.us.preheader ], [ %i.w, %.preheader114.us.preheader ] ; 3 uses
  %.sroa.3053.1.us = phi i64 [ -1, %.preheader.us.preheader.a ], [ -1, %.lr.ph372 ], [ 0, %.preheader114.us ], [ -1, %.preheader.us.us.preheader ], [ 0, %.preheader114.us.preheader ]
  %.sroa.1194.1.us = add i64 %.sroa.793.1.us, %.sroa.1591.0.copyload ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0175.us
  %gepdiff.us = sub nuw nsw i64 %.sroa.793.1.us, %.sroa.0.0175.us ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us)
          to label %.noexc18.us unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc18.us:                                      ; preds = %.loopexit.i.us
  %i.cd = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40, !noundef !4 ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  %.not.i16.us = icmp eq i64 %.sroa.793.1.us, %.sroa.0.0175.us
  br i1 %.not.i16.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc18.us
  %i.cf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !40, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.cc, i64 %gepdiff.us, i1 false)
  %.pre.i17.us = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc18.us
  %i.ch = phi i64 [ %.pre.i17.us, %bb.u ], [ %i.cd, %.noexc18.us ]
  %i.ci = add i64 %i.ch, %gepdiff.us
  store i64 %i.ci, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc22.us unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc22.us:                                      ; preds = %bb.v
  %i.cj = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41, !noundef !4 ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  call void @llvm.assume(i1 %i.ck)
  br i1 %.not.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc22.us
  %i.cl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i21.us = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc22.us
  %i.cn = phi i64 [ %.pre.i21.us, %bb.w ], [ %i.cj, %.noexc22.us ]
  %i.co = add i64 %i.cn, %6
  store i64 %i.co, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  %i.cp = icmp eq i64 %i.q, 0
  br i1 %i.cp, label %.loopexit, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cq = and i64 %.sroa.682.0.copyload, 65536
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.lr.ph.split.split, label %.loopexit

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1288.0.copyload) ]
  %i.cr = trunc i64 %.sroa.682.0.copyload to i1   ; 2 uses
  %i.cs = add i64 %7, -1                          ; 2 uses
  %i.ct = icmp eq i64 %.sroa.480.0.copyload, 0
  br i1 %i.ct, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.z, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.y
  %i.cu = icmp eq i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %i.cu, label %bb.aa, label %.loopexit257

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.480.0.copyload
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !42, !noalias !43, !noundef !4
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %bb.aa, label %.loopexit257

bb.aa:                                            ; preds = %bb.z, %.split.i.i.i.peel.peel, %.lr.ph.split.split
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.480.0.copyload ; 4 uses
  %i.cz = icmp samesign eq i64 %.sroa.480.0.copyload, %.sroa.1389.0.copyload
  br i1 %i.cz, label %.loopexit258.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load i8, ptr %i.cy, align 1, !noalias !44, !noundef !4 ; 5 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.ac, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel.peel: ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dd = and i8 %i.da, 31
  %i.de = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.df = add nuw nsw i64 %.sroa.480.0.copyload, 1
  %i.dg = icmp samesign ne i64 %i.df, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.dc, align 1, !noalias !44, !noundef !4
  %i.di = shl nuw nsw i32 %i.de, 6
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i32               ; 2 uses
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = icmp samesign ugt i8 %i.da, -33
  br i1 %i.dm, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel.peel, label %bb.ad

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel.peel
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.do = add nuw nsw i64 %.sroa.480.0.copyload, 2
  %i.dp = icmp samesign ne i64 %i.do, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = load i8, ptr %i.dn, align 1, !noalias !44, !noundef !4
  %i.dr = shl nuw nsw i32 %i.dk, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt            ; 2 uses
  %i.dv = shl nuw nsw i32 %i.de, 12
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = icmp samesign ugt i8 %i.da, -17
  br i1 %i.dx, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel.peel, label %bb.ad

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel.peel
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  %i.dz = add nuw nsw i64 %.sroa.480.0.copyload, 3
  %i.ea = icmp samesign ne i64 %i.dz, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dy, align 1, !noalias !44, !noundef !4
  %i.ec = shl nuw nsw i32 %i.de, 18
  %i.ed = and i32 %i.ec, 1835008
  %i.ee = shl nuw nsw i32 %i.du, 6
  %i.ef = and i8 %i.eb, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = or disjoint i32 %i.eh, %i.ed
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = zext nneg i8 %i.da to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel.peel
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.dw, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel.peel ], [ %i.ei, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel.peel ], [ %i.dl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel.peel ], [ %i.ej, %bb.ac ] ; 4 uses
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112
  tail call void @llvm.assume(i1 %i.ek)
  br i1 %i.cr, label %.loopexit.i.peel, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128
  br i1 %i.el, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048
  br i1 %i.em, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536
  %..i.i.peel.peel = select i1 %i.en, i64 3, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.af ], [ %..i.i.peel.peel, %bb.ag ], [ 1, %bb.ae ]
  %i.eo = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.480.0.copyload ; 15 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i.peel414 = icmp ult i64 %i.eo, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.peel414, label %bb.aj, label %.split.i.i.i.peel415

.split.i.i.i.peel415:                             ; preds = %bb.ai
  %i.eq = icmp eq i64 %i.eo, %.sroa.1389.0.copyload
  br i1 %i.eq, label %bb.ak, label %.loopexit257

bb.aj:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.eo
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !42, !noalias !43, !noundef !4
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %bb.ak, label %.loopexit257

bb.ak:                                            ; preds = %bb.aj, %.split.i.i.i.peel415, %bb.ah
  %i.eu = icmp samesign eq i64 %i.eo, %.sroa.1389.0.copyload
  br i1 %i.eu, label %.loopexit.i.peel, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.eo
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !44, !noundef !4 ; 3 uses
  %i.ex = icmp sgt i8 %i.ew, -1
  br i1 %i.ex, label %.loopexit.i.peel, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel416

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel416: ; preds = %bb.al
  %i.ey = add nuw nsw i64 %i.eo, 1
  %i.ez = icmp samesign ne i64 %i.ey, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i8 %i.ew, -33
  br i1 %i.fa, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel417, label %.loopexit.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel417: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel416
  %i.fb = add nuw nsw i64 %i.eo, 2
  %i.fc = icmp samesign ne i64 %i.fb, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp samesign ugt i8 %i.ew, -17
  br i1 %i.fd, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel418, label %.loopexit.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel418: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel417
  %i.fe = add nuw nsw i64 %i.eo, 3
  %i.ff = icmp samesign ne i64 %i.fe, %.sroa.1389.0.copyload
  tail call void @llvm.assume(i1 %i.ff)
  br label %.loopexit.i.peel
end_hunk_0
begin_hunk_1_@_RINvMs3_NtCs40k4W9msRzi_5alloc3stre8replacenReECsjRvGck33osM_6diesel:bb.a
.loopexit.i.peel:                                 ; preds = %.loopexit258.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel418, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel417, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel416, %bb.al, %bb.ak, %bb.ad
  %.sroa.4.1255.peel = phi i64 [ %.sroa.1389.0.copyload, %.loopexit258.peel ], [ %.sroa.1389.0.copyload, %bb.ak ], [ %.sroa.480.0.copyload, %bb.ad ], [ %i.eo, %bb.al ], [ %i.eo, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel416 ], [ %i.eo, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel417 ], [ %i.eo, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel418 ] ; 6 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.4.1255.peel)
          to label %.noexc18.peel unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc18.peel:                                    ; preds = %.loopexit.i.peel
  %i.fg = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40, !noundef !4 ; 3 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fh)
  %.not.i16.peel = icmp eq i64 %.sroa.4.1255.peel, 0
  br i1 %.not.i16.peel, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc18.peel
  %i.fi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !40, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 1 %1, i64 %.sroa.4.1255.peel, i1 false)
  %.pre.i17.peel = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc18.peel
  %i.fk = phi i64 [ %.pre.i17.peel, %bb.am ], [ %i.fg, %.noexc18.peel ]
  %i.fl = add i64 %i.fk, %.sroa.4.1255.peel
  store i64 %i.fl, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc22.peel unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc22.peel:                                    ; preds = %bb.an
  %i.fm = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41, !noundef !4 ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  call void @llvm.assume(i1 %i.fn)
  br i1 %.not.i20, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc22.peel
  %i.fo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41, !nonnull !4, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i21.peel = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc22.peel
  %i.fq = phi i64 [ %.pre.i21.peel, %bb.ao ], [ %i.fm, %.noexc22.peel ]
  %i.fr = add i64 %i.fq, %6
  store i64 %i.fr, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  %i.fs = icmp eq i64 %i.cs, 0
  br i1 %i.fs, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ap, %bb.bi
  %.sroa.4.0174 = phi i64 [ %.sroa.4.1255, %bb.bi ], [ %.sroa.4.1255.peel, %bb.ap ] ; 16 uses
  %.sroa.43.0171 = phi i64 [ %i.ft, %bb.bi ], [ %i.cs, %bb.ap ]
  %i.ft = add i64 %.sroa.43.0171, -1              ; 2 uses
  %i.fu = icmp eq i64 %.sroa.4.0174, 0
  br i1 %i.fu, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.4.0174, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.ar, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.aq
  %i.fv = icmp eq i64 %.sroa.4.0174, %.sroa.1389.0.copyload
  br i1 %i.fv, label %bb.as, label %.loopexit257

bb.ar:                                            ; preds = %bb.aq
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.4.0174
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !42, !noalias !43, !noundef !4
  %i.fy = icmp sgt i8 %i.fx, -65
  br i1 %i.fy, label %bb.as, label %.loopexit257

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel, %.preheader.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %.sroa.4.0174 ; 4 uses
  %i.ga = icmp samesign eq i64 %.sroa.4.0174, %.sroa.1389.0.copyload
  br i1 %i.ga, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gb = load i8, ptr %i.fz, align 1, !noalias !44, !noundef !4 ; 5 uses
  %i.gc = icmp sgt i8 %i.gb, -1
  br i1 %i.gc, label %bb.au, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel: ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.ge = and i8 %i.gb, 31
  %i.gf = zext nneg i8 %i.ge to i32               ; 3 uses
  %i.gg = add nuw nsw i64 %.sroa.4.0174, 1
  %i.gh = icmp samesign ne i64 %i.gg, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.gh)
  %i.gi = load i8, ptr %i.gd, align 1, !noalias !44, !noundef !4
  %i.gj = shl nuw nsw i32 %i.gf, 6
  %i.gk = and i8 %i.gi, 63
  %i.gl = zext nneg i8 %i.gk to i32               ; 2 uses
  %i.gm = or disjoint i32 %i.gj, %i.gl
  %i.gn = icmp samesign ugt i8 %i.gb, -33
  br i1 %i.gn, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel, label %bb.av

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gp = add nuw nsw i64 %.sroa.4.0174, 2
  %i.gq = icmp samesign ne i64 %i.gp, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.gq)
  %i.gr = load i8, ptr %i.go, align 1, !noalias !44, !noundef !4
  %i.gs = shl nuw nsw i32 %i.gl, 6
  %i.gt = and i8 %i.gr, 63
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gs, %i.gu            ; 2 uses
  %i.gw = shl nuw nsw i32 %i.gf, 12
  %i.gx = or disjoint i32 %i.gv, %i.gw
  %i.gy = icmp samesign ugt i8 %i.gb, -17
  br i1 %i.gy, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel, label %bb.av

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.ha = add nuw nsw i64 %.sroa.4.0174, 3
  %i.hb = icmp samesign ne i64 %i.ha, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.hb)
  %i.hc = load i8, ptr %i.gz, align 1, !noalias !44, !noundef !4
  %i.hd = shl nuw nsw i32 %i.gf, 18
  %i.he = and i32 %i.hd, 1835008
  %i.hf = shl nuw nsw i32 %i.gv, 6
  %i.hg = and i8 %i.hc, 63
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or disjoint i32 %i.hf, %i.hh
  %i.hj = or disjoint i32 %i.hi, %i.he
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hk = zext nneg i8 %i.gb to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.gx, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i.peel ], [ %i.hj, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i.peel ], [ %i.gm, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i.peel ], [ %i.hk, %bb.au ] ; 4 uses
  %i.hl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.hm, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.hn, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.ho, i64 3, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.aw ], [ %..i.i.peel, %bb.ax ], [ 1, %bb.av ]
  %i.hp = add i64 %.sroa.01.0.i.i.peel, %.sroa.4.0174 ; 15 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i = icmp ult i64 %i.hp, %.sroa.1389.0.copyload
  br i1 %.not.i.i.i, label %bb.ba, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.az
  %i.hr = icmp eq i64 %i.hp, %.sroa.1389.0.copyload
  br i1 %i.hr, label %bb.bb, label %.loopexit257

bb.ba:                                            ; preds = %bb.az
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.hp
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !42, !noalias !43, !noundef !4
  %i.hu = icmp sgt i8 %i.ht, -65
  br i1 %i.hu, label %bb.bb, label %.loopexit257

bb.bb:                                            ; preds = %bb.ba, %.split.i.i.i, %bb.ay
  %i.hv = icmp samesign eq i64 %i.hp, %.sroa.1389.0.copyload
  br i1 %i.hv, label %.loopexit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.1288.0.copyload, i64 %i.hp
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !44, !noundef !4 ; 3 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %.loopexit.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i: ; preds = %bb.bc
  %i.hz = add nuw nsw i64 %i.hp, 1
  %i.ia = icmp samesign ne i64 %i.hz, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp samesign ugt i8 %i.hx, -33
  br i1 %i.ib, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i
  %i.ic = add nuw nsw i64 %i.hp, 2
  %i.id = icmp samesign ne i64 %i.ic, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp samesign ugt i8 %i.hx, -17
  br i1 %i.ie, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i
  %i.if = add nuw nsw i64 %i.hp, 3
  %i.ig = icmp samesign ne i64 %i.if, %.sroa.1389.0.copyload
  call void @llvm.assume(i1 %i.ig)
  br label %.loopexit.i

.loopexit257:                                     ; preds = %bb.ar, %.split.i.i.i.peel, %bb.ba, %.split.i.i.i, %bb.aj, %.split.i.i.i.peel415, %bb.z, %.split.i.i.i.peel.peel
  %.sroa.4.1.lcssa = phi i64 [ %.sroa.480.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.480.0.copyload, %bb.z ], [ %i.eo, %.split.i.i.i.peel415 ], [ %i.eo, %bb.aj ], [ %.sroa.4.0174, %bb.ar ], [ %.sroa.4.0174, %.split.i.i.i.peel ], [ %i.hp, %.split.i.i.i ], [ %i.hp, %bb.ba ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1288.0.copyload, i64 noundef %.sroa.1389.0.copyload, i64 noundef %.sroa.4.1.lcssa, i64 noundef %.sroa.1389.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #18
          to label %.noexc unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit257
  unreachable

.split195.us:                                     ; preds = %bb.p
  %i.ih = add i64 %i.bb, %.sroa.480.0.copyload
  %umax.i40 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1389.0.copyload, i64 %i.ih)
  br label %.split195.us.invoke

.split195.us.invoke:                              ; preds = %.lr.ph372, %bb.i, %.lr.ph365, %.lr.ph369, %.split.us, %.split195.us
  %i.ii = phi i64 [ %umax.i40, %.split195.us ], [ %i.bk, %.lr.ph369 ], [ %i.aq, %bb.i ], [ %umax.i, %.split.us ], [ %i.ao, %.lr.ph365 ], [ %i.p, %.lr.ph372 ]
  %i.ij = phi i64 [ %.sroa.1389.0.copyload, %.split195.us ], [ %.sroa.1389.0.copyload, %.lr.ph369 ], [ %.sroa.1389.0.copyload, %bb.i ], [ %.sroa.1389.0.copyload, %.split.us ], [ %.sroa.1591.0.copyload, %.lr.ph365 ], [ %.sroa.1591.0.copyload, %.lr.ph372 ]
  %i.ik = phi ptr [ @3, %.split195.us ], [ @2, %.lr.ph369 ], [ @2, %bb.i ], [ @3, %.split.us ], [ @1, %.lr.ph365 ], [ @1, %.lr.ph372 ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef range(i64 0, -9223372036854775808) %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #18
          to label %.split195.us.cont unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split195.us.cont:                                ; preds = %.split195.us.invoke
  unreachable

.split.us:                                        ; preds = %.lr.ph363
  %i.il = add i64 %i.w, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1389.0.copyload, i64 %i.il)
  br label %.split195.us.invoke

.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.v, %.loopexit.i.us, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjRvGck33osM_6diesel.exit, %.loopexit257, %.loopexit, %.split195.us.invoke, %.loopexit.i, %bb.bg, %.loopexit.i.peel, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.bk unwind label %bb.bj

.loopexit:                                        ; preds = %.loopexit258.peel, %bb.ap, %bb.as, %bb.bi, %bb.d, %bb.m, %bb.x, %.sink.split.i.us, %bb.t, %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit, %.lr.ph.split
  %.sroa.0.0158 = phi i64 [ %.sroa.0.0175.us, %bb.d ], [ %.sroa.0.0175.us, %.sink.split.i.us ], [ 0, %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.0.0175.us, %bb.t ], [ 0, %.lr.ph.split ], [ %.sroa.0.0175.us, %bb.m ], [ %.sroa.1194.1.us, %bb.x ], [ 0, %.loopexit258.peel ], [ %.sroa.4.1255.peel, %bb.ap ], [ %.sroa.4.1255, %bb.bi ], [ %.sroa.4.0174, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0158
  %gepdiff113 = sub nuw nsw i64 %2, %.sroa.0.0158 ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff113)
          to label %.noexc15 unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc15:                                         ; preds = %.loopexit
  %i.in = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !45, !noundef !4 ; 3 uses
  %i.io = icmp sgt i64 %i.in, -1
  call void @llvm.assume(i1 %i.io)
  %.not.i = icmp eq i64 %2, %.sroa.0.0158
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc15
  %i.ip = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull readonly align 1 %i.im, i64 %gepdiff113, i1 false)
  %.pre.i = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !45
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.noexc15
  %i.ir = phi i64 [ %.pre.i, %bb.bd ], [ %i.in, %.noexc15 ]
  %i.is = add i64 %i.ir, %gepdiff113
  store i64 %i.is, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i, %bb.bc, %bb.bb
  %.sroa.4.1255 = phi i64 [ %i.hp, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i ], [ %.sroa.1389.0.copyload, %bb.bb ], [ %i.hp, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i ], [ %i.hp, %bb.bc ], [ %i.hp, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.4.0174
  %gepdiff = sub nuw nsw i64 %.sroa.4.1255, %.sroa.4.0174 ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.noexc18 unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc18:                                         ; preds = %.loopexit.i
  %i.iu = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40, !noundef !4 ; 3 uses
  %i.iv = icmp sgt i64 %i.iu, -1
  call void @llvm.assume(i1 %i.iv)
  %.not.i16 = icmp eq i64 %.sroa.4.1255, %.sroa.4.0174
  br i1 %.not.i16, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.noexc18
  %i.iw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !40, !nonnull !4, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr nonnull readonly align 1 %i.it, i64 %gepdiff, i1 false)
  %.pre.i17 = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc18, %bb.bf
  %i.iy = phi i64 [ %.pre.i17, %bb.bf ], [ %i.iu, %.noexc18 ]
  %i.iz = add i64 %i.iy, %gepdiff
  store i64 %i.iz, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !40
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %6)
          to label %.noexc22 unwind label %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc22:                                         ; preds = %bb.bg
  %i.ja = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41, !noundef !4 ; 3 uses
  %i.jb = icmp sgt i64 %i.ja, -1
  call void @llvm.assume(i1 %i.jb)
  br i1 %.not.i20, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.noexc22
  %i.jc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41, !nonnull !4, !noundef !4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jd, ptr nonnull readonly align 1 %5, i64 %6, i1 false)
  %.pre.i21 = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.noexc22
  %i.je = phi i64 [ %.pre.i21, %bb.bh ], [ %i.ja, %.noexc22 ]
  %i.jf = add i64 %i.je, %6
  store i64 %i.jf, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !41
  %i.jg = icmp eq i64 %i.ft, 0
  br i1 %i.jg, label %.loopexit, label %.preheader.i, !llvm.loop !35

bb.bj:                                            ; preds = %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bk:                                            ; preds = %.loopexit117.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.a = load i64, ptr %.0.val, align 8, !range !53, !alias.scope !54, !noundef !4
  switch i64 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !54, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorImplEECsjRvGck33osM_6diesel.exit, label %bb.c

end_hunk_1
