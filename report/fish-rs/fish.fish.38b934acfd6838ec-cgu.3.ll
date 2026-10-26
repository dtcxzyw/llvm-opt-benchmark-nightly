Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [10 x i8] c"\C0\C0\C3 \00\00i\02\00\00", align 1
@1 = private unnamed_addr constant [32 x i8] c"crates/printf/src/fmt_fp/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\9D\01\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\A2\01\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\A7\01\00\00\1C\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\AB\01\00\00\1C\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\B6\01\00\00\1C\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\B8\01\00\00\12\00\00\00" }>, align 8
@8 = private unnamed_addr constant [1 x i8] c" ", align 1
@9 = private unnamed_addr constant [1 x i8] c"+", align 1
@10 = private unnamed_addr constant [1 x i8] c"-", align 1
@11 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\C8\00\00\00\0E\00\00\00" }>, align 8
@13 = private unnamed_addr constant [3 x i8] c"INF", align 1
@14 = private unnamed_addr constant [3 x i8] c"inf", align 1
@15 = private unnamed_addr constant [3 x i8] c"NAN", align 1
@16 = private unnamed_addr constant [3 x i8] c"nan", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\F0\01\00\007\00\00\00" }>, align 8
@18 = private unnamed_addr constant [8 x i8] c"\D3 \00\00i\01\00\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs4RW8js5ES7g_4fish }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\F7\01\00\00\1B\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\F8\01\00\00\13\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\FE\01\00\00\17\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\002\02\00\00\0E\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\008\02\00\00*\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\009\02\00\00\19\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00%\02\00\00,\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\22\02\00\00.\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\06\01\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant [2 x i8] c"0X", align 1
@30 = private unnamed_addr constant [3 x i8] c" 0X", align 1
@31 = private unnamed_addr constant [3 x i8] c"+0X", align 1
@32 = private unnamed_addr constant [3 x i8] c"-0X", align 1
@33 = private unnamed_addr constant [2 x i8] c"0x", align 1
@34 = private unnamed_addr constant [3 x i8] c" 0x", align 1
@35 = private unnamed_addr constant [3 x i8] c"+0x", align 1
@36 = private unnamed_addr constant [3 x i8] c"-0x", align 1
@37 = private unnamed_addr constant [4 x i8] c"\C0\C0\C0\00", align 1
@38 = private unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 1
@39 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00<\01\00\00\13\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00c\01\00\00\11\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\D5\01\00\00-\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00F\00\00\00\09\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\DB\01\00\00!\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1F\00\00\00\00\00\00\00\DD\01\00\00\0D\00\00\00" }>, align 8
@46 = private unnamed_addr constant [36 x i8] c"crates/printf/src/fmt_fp/decimal.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00\B1\00\00\00!\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00\B1\00\00\00 \00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00\B1\00\00\00\09\00\00\00" }>, align 8
@switch.table._RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish = private unnamed_addr constant [17 x i8] c"\01\01\01\01\00\01\01\00\01\00\01\00\01\00\01\01\01", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 15 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !143, !noundef !5 ; 39 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.0.0.copyload = load i8, ptr %i.r, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 57
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 58
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.1128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 61
  %.sroa.1128.0.copyload = load i8, ptr %.sroa.1128.0..sroa_idx, align 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !144, !noundef !5 ; 6 uses
  %i.u = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 63
  %i.y = load i8, ptr %i.x, align 1, !range !145, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !143, !noundef !5 ; 10 uses
  %i.ab = tail call noundef i32 @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal8exponent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br i1 %3, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.ac = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ad = icmp slt i32 %i.ab, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.82 = select i1 %i.ac, i32 101, i32 69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sink = select i1 %i.ad, i32 45, i32 43
  %.sroa.047.0 = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 false)
  store i32 %.sink, ptr %i.j, align 4
  store i32 %.82, ptr %i.i, align 4
  store i32 %.sroa.047.0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.ae, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.af, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @0, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %.lr.ph117.i, %bb.am, %.noexc102, %.lr.ph.i.i.i.i.i91.i, %bb.as, %bb.bp, %bb.bs, %bb.bi, %bb.ax, %bb.ay, %.lr.ph.i.i.i.i.i.i113, %bb.bl, %bb.bm, %.lr.ph121.split.us.i, %.noexc92, %.lr.ph121.split.i, %.noexc95, %bb.m, %.invoke358, %.invoke, %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, %.loopexit13.i, %._crit_edge127.i, %bb.ak, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i, %._crit_edge122.thread.i, %.noexc90, %.lr.ph121.split.us.preheader.i, %.noexc88, %.lr.ph121.split.preheader.i, %bb.i, %bb.bu, %bb.u, %bb.o, %bb.c
  %lpad.loopexit.split-lp451 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.go, %bb.ae ], [ %lpad.loopexit.split-lp451, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #12
          to label %common.resume unwind label %bb.bz

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.k, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.562.0..sroa_idx, align 8
  %..i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %narrow = add nuw i32 %..i, 1
  %i.ag = zext i32 %narrow to i64                 ; 4 uses
  %i.ah = trunc nuw i8 %.sroa.1128.0.copyload to i1
  br i1 %i.ah, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ai = invoke noundef i64 @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale15separator_count(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.t, i64 noundef %i.ag)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.aj = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %.invoke358, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.b
  %.sroa.037.0 = phi i64 [ %i.ag, %bb.b ], [ 1, %.thread ], [ %i.aj, %bb.d ] ; 2 uses
  %i.al = icmp ne i64 %i.q, 0                     ; 2 uses
  %i.am = and i8 %.sroa.0.0.copyload, 1
  %i.an = zext nneg i8 %i.am to i64
  %.83 = select i1 %i.al, i64 1, i64 %i.an
  %i.ao = add i64 %.sroa.037.0, %.83              ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.037.0
  br i1 %i.ap, label %.invoke358, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i64 %i.ao, %i.q                     ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.invoke358, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %i.at, %i.aq                    ; 4 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  br i1 %i.aw, label %.invoke358, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = trunc nuw i8 %.sroa.10.0.copyload to i1 ; 2 uses
  %i.ay = trunc nuw i8 %.sroa.7.0.copyload to i1  ; 3 uses
  %or.cond4 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond4, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.p, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ba = lshr i64 %i.w, 2
  %i.bb = and i64 %i.w, 3
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  %i.bc = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.ba, %i.bc
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.not.i9.i.i.i.i.i = icmp samesign eq i64 %i.w, 0
  br i1 %.not.i9.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.bg = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !alias.scope !153, !noalias !154, !noundef !5 ; 5 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bi = and i8 %i.bg, 31
  %i.bj = zext nneg i8 %i.bi to i32               ; 3 uses
  %i.bk = icmp ne ptr %i.bf, %i.az
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32               ; 2 uses
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = icmp samesign ugt i8 %i.bg, -33
  br i1 %i.br, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = zext nneg i8 %i.bg to i32
  br label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i
  %i.bt = icmp ne ptr %i.bl, %i.az
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.bv = load i8, ptr %i.bl, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.bw = shl nuw nsw i32 %i.bp, 6
  %i.bx = and i8 %i.bv, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by            ; 2 uses
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = icmp samesign ugt i8 %i.bg, -17
  br i1 %i.cc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i, label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish:bb.a
  br i1 %.not.i.i.i.i.i.i78.i, label %.loopexit.i108, label %.lr.ph.i.i.i.i.i72.i

.invoke:                                          ; preds = %.split.i.i, %bb.ao, %bb.be, %.split.i, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i.i112, %bb.bc
  %i.oe = phi ptr [ %i.kg, %.split.i ], [ %i.kg, %.split.i.i112 ], [ %i.kg, %bb.bc ], [ %i.kg, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %.sroa.012.0.i, %bb.be ], [ %i.hq, %bb.ao ], [ %i.hq, %.split.i.i ]
  %i.of = phi i64 [ %i.kh, %.split.i ], [ %i.kh, %.split.i.i112 ], [ %i.kh, %bb.bc ], [ %i.kh, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %.sroa.9.0.i, %bb.be ], [ %i.hr, %bb.ao ], [ %i.hr, %.split.i.i ]
  %i.og = phi i64 [ 1, %.split.i ], [ 0, %.split.i.i112 ], [ 0, %bb.bc ], [ 1, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ 0, %bb.be ], [ 0, %bb.ao ], [ 0, %.split.i.i ]
  %i.oh = phi i64 [ %i.kh, %.split.i ], [ 1, %.split.i.i112 ], [ 1, %bb.bc ], [ %i.kh, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %..i63.i, %bb.be ], [ %..i.i, %bb.ao ], [ %..i.i, %.split.i.i ]
  %i.oi = phi ptr [ @21, %.split.i ], [ @20, %.split.i.i112 ], [ @20, %bb.bc ], [ @21, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ @22, %bb.be ], [ @25, %bb.ao ], [ @25, %.split.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oe, i64 noundef %i.of, i64 noundef %i.og, i64 noundef %i.oh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oi) #15
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.i108:                                   ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i, %.noexc131
  %i.oj = sub nuw i64 %.sroa.0.030.i, %..i63.i    ; 3 uses
  %i.ok = icmp eq i64 %i.oj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  %exitcond.not.i109 = icmp eq i32 %i.ka, %smax.i
  %or.cond = select i1 %i.ok, i1 true, i1 %exitcond.not.i109
  br i1 %or.cond, label %.loopexit13.i, label %bb.aw

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142, %.noexc146, %.noexc101
  %or.cond11 = select i1 %.not, i1 true, i1 %i.ay
  %.pre = add i64 %i.av, %i.w                     ; 4 uses
  br i1 %or.cond11, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge, label %bb.bt

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %.noexc123
  %i.ol = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.on = load i64, ptr %i.as, align 8, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.on ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.op = lshr i64 %i.on, 2
  %i.oq = and i64 %i.on, 3
  %.not.i.i.i.i134 = icmp ne i64 %i.oq, 0
  %i.or = zext i1 %.not.i.i.i.i134 to i64
  %.sroa.0.0.i.i.i.i135 = add nuw nsw i64 %i.op, %i.or
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i135)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %.not.i9.i.i.i.i.i136 = icmp samesign eq i64 %i.on, 0
  br i1 %.not.i9.i.i.i.i.i136, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i.i.i.i137

.lr.ph.i.i.i.i.i137:                              ; preds = %.noexc146, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142
  %.sroa.0.010.i.i.i.i.i138 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i140, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 ], [ %i.om, %.noexc146 ] ; 5 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 1 ; 3 uses
  %i.ot = load i8, ptr %.sroa.0.010.i.i.i.i.i138, align 1, !alias.scope !221, !noalias !222, !noundef !5 ; 5 uses
  %i.ou = icmp sgt i8 %i.ot, -1
  br i1 %i.ou, label %bb.bq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i137
  %i.ov = and i8 %i.ot, 31
  %i.ow = zext nneg i8 %i.ov to i32               ; 3 uses
  %i.ox = icmp ne ptr %i.os, %i.oo
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 2 ; 3 uses
  %i.oz = load i8, ptr %i.os, align 1, !alias.scope !221, !noalias !222, !noundef !5
  %i.pa = shl nuw nsw i32 %i.ow, 6
  %i.pb = and i8 %i.oz, 63
  %i.pc = zext nneg i8 %i.pb to i32               ; 2 uses
  %i.pd = or disjoint i32 %i.pa, %i.pc
  %i.pe = icmp samesign ugt i8 %i.ot, -33
  br i1 %i.pe, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i137
  %i.pf = zext nneg i8 %i.ot to i32
  br label %bb.br

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139
  %i.pg = icmp ne ptr %i.oy, %i.oo
  call void @llvm.assume(i1 %i.pg)
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 3 ; 3 uses
  %i.pi = load i8, ptr %i.oy, align 1, !alias.scope !221, !noalias !222, !noundef !5
  %i.pj = shl nuw nsw i32 %i.pc, 6
  %i.pk = and i8 %i.pi, 63
  %i.pl = zext nneg i8 %i.pk to i32
  %i.pm = or disjoint i32 %i.pj, %i.pl            ; 2 uses
  %i.pn = shl nuw nsw i32 %i.ow, 12
  %i.po = or disjoint i32 %i.pm, %i.pn
  %i.pp = icmp samesign ugt i8 %i.ot, -17
  br i1 %i.pp, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145, label %bb.br

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144
  %i.pq = icmp ne ptr %i.ph, %i.oo
  call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 4
  %i.ps = load i8, ptr %i.ph, align 1, !alias.scope !221, !noalias !222, !noundef !5
  %i.pt = shl nuw nsw i32 %i.ow, 18
  %i.pu = and i32 %i.pt, 1835008
  %i.pv = shl nuw nsw i32 %i.pm, 6
  %i.pw = and i8 %i.ps, 63
  %i.px = zext nneg i8 %i.pw to i32
  %i.py = or disjoint i32 %i.pv, %i.px
  %i.pz = or disjoint i32 %i.py, %i.pu
  br label %bb.br

bb.br:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144, %bb.bq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139
  %.sroa.0.1.ph.i.i.i.i.i140 = phi ptr [ %i.oy, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.ph, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.pr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.os, %bb.bq ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i141 = phi i32 [ %i.pd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.po, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.pz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.pf, %bb.bq ]
  %i.qa = load i64, ptr %i.jx, align 8, !alias.scope !223, !noundef !5 ; 3 uses
  %i.qb = load i64, ptr %i.m, align 8, !range !6, !alias.scope !223, !noundef !5
  %i.qc = icmp eq i64 %i.qa, %i.qb
  br i1 %i.qc, label %bb.bs, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #13
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142: ; preds = %bb.bs, %bb.br
  %i.qd = load ptr, ptr %i.jy, align 8, !alias.scope !223, !nonnull !5, !noundef !5
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qa
  store i32 %spec.select.i.ph.i.i.i.i.i141, ptr %i.qe, align 4, !noalias !221
  %i.qf = add i64 %i.qa, 1
  store i64 %i.qf, ptr %i.jx, align 8, !alias.scope !223
  %.not.i.i.i.i.i.i143 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i140, %i.oo
  br i1 %.not.i.i.i.i.i.i143, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i.i.i.i137

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge: ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, %bb.bv
  %i.qg = icmp ult i64 %.pre, %i.w
  br i1 %i.qg, label %.invoke358, label %bb.bw

bb.bt:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  %i.qh = icmp ult i64 %.pre, %i.w
  br i1 %i.qh, label %.invoke358, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qi = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 32, i64 noundef %i.o, i64 noundef %.pre)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.qi, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge

.invoke358:                                       ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge, %bb.bt, %bb.t, %bb.n, %bb.g, %bb.f, %bb.e, %bb.d
  %i.qj = phi ptr [ @6, %bb.bt ], [ @5, %bb.t ], [ @4, %bb.n ], [ @3, %bb.g ], [ @3, %bb.f ], [ @3, %bb.e ], [ @2, %bb.d ], [ @7, %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qj) #16
          to label %.cont359 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont359:                                         ; preds = %.invoke358
  unreachable

bb.bw:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge
  %..i149 = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 %i.o)
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i149, ptr %i.qk, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ql = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.bw, %select.unfold
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.bz:                                            ; preds = %.body
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, double noundef %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 %5, i48 %6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i8 noundef range(i8 0, 17) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 20 uses
  %i.g = alloca [64 x i8], align 8                ; 16 uses
  %.sroa.010.0.extract.trunc = trunc i48 %6 to i24
  %.sroa.010.3.extract.shift = lshr i48 %6, 24    ; 3 uses
  %.sroa.010.3.extract.trunc = trunc i48 %.sroa.010.3.extract.shift to i8
  %.sroa.010.4.extract.shift = lshr i48 %6, 32    ; 3 uses
  %.sroa.010.4.extract.trunc = trunc i48 %.sroa.010.4.extract.shift to i8
  %.sroa.010.5.extract.shift = lshr i48 %6, 40
  %.sroa.010.5.extract.trunc = trunc nuw i48 %.sroa.010.5.extract.shift to i8
  %i.h = bitcast double %2 to i64                 ; 2 uses
  %.not = icmp sgt i64 %i.h, -1
  %i.i = trunc i48 %.sroa.010.3.extract.shift to i1 ; 5 uses
  br i1 %.not, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i48 %.sroa.010.4.extract.shift to i1
  br i1 %i.j, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.mask = and i48 %.sroa.010.3.extract.shift, 1
  %. = zext nneg i48 %.mask to i64
  %.37 = select i1 %i.i, ptr @8, ptr inttoptr (i64 1 to ptr)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 6 uses
  %.sroa.011.0 = phi ptr [ @9, %bb.b ], [ %.37, %bb.c ], [ @10, %bb.a ] ; 5 uses
  %10 = trunc nuw i64 %4 to i1                    ; 4 uses
  %.38 = select i1 %10, i64 %5, i64 6             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %11 = zext nneg i8 %8 to i64                    ; 3 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish, i64 %11
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store i64 %.38, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 62
  %i.o = trunc nuw nsw i64 %4 to i8
  store i8 %i.o, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i24 %.sroa.010.0.extract.trunc, ptr %i.p, align 8
  %.sroa.23.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 59
  store i8 %.sroa.010.3.extract.trunc, ptr %.sroa.23.0..sroa_idx4, align 1
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i8 %.sroa.010.4.extract.trunc, ptr %.sroa.3.0..sroa_idx6, align 4
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 61
  store i8 %.sroa.010.5.extract.trunc, ptr %.sroa.4.0..sroa_idx8, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %7, ptr %i.q, align 8
  store ptr %.sroa.011.0, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  store i8 %switch.load, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %9, ptr %i.t, align 8
  %i.u = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.v = fcmp ueq double %i.u, +inf
  %i.w = lshr i48 %6, 8                           ; 2 uses
  %i.x = trunc i48 %i.w to i8
  %i.y = lshr i48 %6, 16                          ; 3 uses
  %i.z = trunc i48 %i.y to i8
  br i1 %i.v, label %bb.d, label %bb.y

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %12 = shl nuw nsw i64 1, %11
  %13 = and i64 %12, 120175
  %.not146 = icmp eq i64 %13, 0                   ; 2 uses
  %i.aa = fcmp uno double %2, 0.000000e+00
  %..i = select i1 %.not146, ptr @13, ptr @14
  %.3.i = select i1 %.not146, ptr @15, ptr @16
  %.sroa.0.0.i = select i1 %i.aa, ptr %.3.i, ptr %..i ; 8 uses
  %i.ab = add nuw nsw i64 %.sroa.5.0, 3           ; 3 uses
  %i.ac = trunc i48 %i.y to i1
  br i1 %i.ac, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ab), !noalias !367
  br i1 %i.ad, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.5.0, 0     ; 2 uses
  %i.af = zext i1 %.not.i.i.i.i.i to i64
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.af), !noalias !373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.aj = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !376, !noalias !377, !noundef !5 ; 5 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.al = and i8 %i.aj, 31
  %i.am = zext nneg i8 %i.al to i32               ; 3 uses
  %i.an = icmp ne ptr %i.ai, %i.ae
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.ap = load i8, ptr %i.ai, align 1, !alias.scope !376, !noalias !377, !noundef !5
  %i.aq = shl nuw nsw i32 %i.am, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32               ; 2 uses
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = icmp samesign ugt i8 %i.aj, -33
  br i1 %i.au, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext nneg i8 %i.aj to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %i.aw = icmp ne ptr %i.ao, %i.ae
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.ay = load i8, ptr %i.ao, align 1, !alias.scope !376, !noalias !377, !noundef !5
  %i.az = shl nuw nsw i32 %i.as, 6
  %i.ba = and i8 %i.ay, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  %i.bd = shl nuw nsw i32 %i.am, 12
  %i.be = or disjoint i32 %i.bc, %i.bd
  %i.bf = icmp samesign ugt i8 %i.aj, -17
  br i1 %i.bf, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i
  %i.bg = icmp ne ptr %i.ax, %i.ae
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4
  %i.bi = load i8, ptr %i.ax, align 1, !alias.scope !376, !noalias !377, !noundef !5
  %i.bj = shl nuw nsw i32 %i.am, 18
  %i.bk = and i32 %i.bj, 1835008
  %i.bl = shl nuw nsw i32 %i.bc, 6
  %i.bm = and i8 %i.bi, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = or disjoint i32 %i.bo, %i.bk
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i = phi ptr [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.ax, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.av, %bb.h ]
  %i.bq = load i64, ptr %i.ag, align 8, !alias.scope !378, !noalias !367, !noundef !5 ; 3 uses
  %i.br = load i64, ptr %1, align 8, !range !6, !alias.scope !378, !noalias !367, !noundef !5
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13, !noalias !373
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bt = load ptr, ptr %i.ah, align 8, !alias.scope !378, !noalias !367, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.bu, align 4, !noalias !373
  %i.bv = add i64 %i.bq, 1
  store i64 %i.bv, ptr %i.ag, align 8, !alias.scope !378, !noalias !367
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i, %i.ae
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %bb.g

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %.sroa.0.010.i.i.i.i.i5.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i ], [ %.sroa.0.1.ph.i.i.i.i.i7.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i5.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.idx.i
  %.sroa.0.010.i.i.i.i.i5.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 1 ; 3 uses
  %i.by = load i8, ptr %.sroa.0.010.i.i.i.i.i5.ptr.i, align 1, !alias.scope !387, !noalias !388, !noundef !5 ; 5 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i: ; preds = %bb.k
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add.i
  %i.ca = and i8 %i.by, 31
  %i.cb = zext nneg i8 %i.ca to i32               ; 3 uses
  %i.cc = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.add.i, 3
  tail call void @llvm.assume(i1 %i.cc)
  %.sroa.0.010.i.i.i.i.i5.add39.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 2 ; 3 uses
  %i.cd = load i8, ptr %.ptr.i, align 1, !alias.scope !387, !noalias !388, !noundef !5
  %i.ce = shl nuw nsw i32 %i.cb, 6
  %i.cf = and i8 %i.cd, 63
  %i.cg = zext nneg i8 %i.cf to i32               ; 2 uses
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = icmp samesign ugt i8 %i.by, -33
  br i1 %i.ci, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = zext nneg i8 %i.by to i32
  br label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i
  %.ptr42.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add39.i
  %i.ck = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i5.add39.i, 3
  tail call void @llvm.assume(i1 %i.ck)
  %.sroa.0.010.i.i.i.i.i5.add38.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 3 ; 2 uses
  %i.cl = load i8, ptr %.ptr42.i, align 1, !alias.scope !387, !noalias !388, !noundef !5
  %i.cm = shl nuw nsw i32 %i.cg, 6
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co            ; 2 uses
  %i.cq = shl nuw nsw i32 %i.cb, 12
  %i.cr = or disjoint i32 %i.cp, %i.cq
  %i.cs = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cs, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i, label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i
  %.ptr41.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add38.i
  %i.ct = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 0
  tail call void @llvm.assume(i1 %i.ct)
  %.sroa.0.010.i.i.i.i.i5.add37.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 4
  %i.cu = load i8, ptr %.ptr41.i, align 1, !alias.scope !387, !noalias !388, !noundef !5
  %i.cv = shl nuw nsw i32 %i.cb, 18
  %i.cw = and i32 %i.cv, 1835008
  %i.cx = shl nuw nsw i32 %i.cp, 6
  %i.cy = and i8 %i.cu, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = or disjoint i32 %i.da, %i.cw
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i, %bb.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i
  %.sroa.0.1.ph.i.i.i.i.i7.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i5.add39.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %.sroa.0.010.i.i.i.i.i5.add38.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %.sroa.0.010.i.i.i.i.i5.add37.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %.sroa.0.010.i.i.i.i.i5.add.i, %bb.l ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i8.i = phi i32 [ %i.ch, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %i.cr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %i.db, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %i.cj, %bb.l ]
  %i.dc = load i64, ptr %i.bw, align 8, !alias.scope !389, !noalias !367, !noundef !5 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !range !6, !alias.scope !389, !noalias !367, !noundef !5
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.n, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13, !noalias !384
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i: ; preds = %bb.n, %bb.m
  %i.df = load ptr, ptr %i.bx, align 8, !alias.scope !389, !noalias !367, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  store i32 %spec.select.i.ph.i.i.i.i.i8.i, ptr %i.dg, align 4, !noalias !384
  %i.dh = add i64 %i.dc, 1
  store i64 %i.dh, ptr %i.bw, align 8, !alias.scope !389, !noalias !367
  %.not.i.i.i.i.i.i10.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i7.idx.i, 3
  br i1 %.not.i.i.i.i.i.i10.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, label %bb.k

bb.o:                                             ; preds = %bb.e
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.di, align 1, !alias.scope !366
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ab, i64 %3)
end_hunk_1
begin_hunk_2_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish:bb.a

.lr.ph.i.i.i.i.i17.i:                             ; preds = %.critedge.i
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i17.i
  %.sroa.0.010.i.i.i.i.i18.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i17.i ], [ %.sroa.0.1.ph.i.i.i.i.i20.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 1 ; 3 uses
  %i.dp = load i8, ptr %.sroa.0.010.i.i.i.i.i18.i, align 1, !alias.scope !398, !noalias !399, !noundef !5 ; 5 uses
  %i.dq = icmp sgt i8 %i.dp, -1
  br i1 %i.dq, label %bb.q, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i: ; preds = %bb.p
  %i.dr = and i8 %i.dp, 31
  %i.ds = zext nneg i8 %i.dr to i32               ; 3 uses
  %i.dt = icmp ne ptr %i.do, %i.dk
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 2 ; 3 uses
  %i.dv = load i8, ptr %i.do, align 1, !alias.scope !398, !noalias !399, !noundef !5
  %i.dw = shl nuw nsw i32 %i.ds, 6
  %i.dx = and i8 %i.dv, 63
  %i.dy = zext nneg i8 %i.dx to i32               ; 2 uses
  %i.dz = or disjoint i32 %i.dw, %i.dy
  %i.ea = icmp samesign ugt i8 %i.dp, -33
  br i1 %i.ea, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eb = zext nneg i8 %i.dp to i32
  br label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i
  %i.ec = icmp ne ptr %i.du, %i.dk
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 3 ; 3 uses
  %i.ee = load i8, ptr %i.du, align 1, !alias.scope !398, !noalias !399, !noundef !5
  %i.ef = shl nuw nsw i32 %i.dy, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i32 %i.ds, 12
  %i.ek = or disjoint i32 %i.ei, %i.ej
  %i.el = icmp samesign ugt i8 %i.dp, -17
  br i1 %i.el, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i
  %i.em = icmp ne ptr %i.ed, %i.dk
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 4
  %i.eo = load i8, ptr %i.ed, align 1, !alias.scope !398, !noalias !399, !noundef !5
  %i.ep = shl nuw nsw i32 %i.ds, 18
  %i.eq = and i32 %i.ep, 1835008
  %i.er = shl nuw nsw i32 %i.ei, 6
  %i.es = and i8 %i.eo, 63
  %i.et = zext nneg i8 %i.es to i32
  %i.eu = or disjoint i32 %i.er, %i.et
  %i.ev = or disjoint i32 %i.eu, %i.eq
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i, %bb.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i
  %.sroa.0.1.ph.i.i.i.i.i20.i = phi ptr [ %i.du, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.ed, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.en, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.do, %bb.q ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i21.i = phi i32 [ %i.dz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.ek, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.ev, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.eb, %bb.q ]
  %i.ew = load i64, ptr %i.dm, align 8, !alias.scope !400, !noalias !367, !noundef !5 ; 3 uses
  %i.ex = load i64, ptr %1, align 8, !range !6, !alias.scope !400, !noalias !367, !noundef !5
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.s, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13, !noalias !395
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i: ; preds = %bb.s, %bb.r
  %i.ez = load ptr, ptr %i.dn, align 8, !alias.scope !400, !noalias !367, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew
  store i32 %spec.select.i.ph.i.i.i.i.i21.i, ptr %i.fa, align 4, !noalias !395
  %i.fb = add i64 %i.ew, 1
  store i64 %i.fb, ptr %i.dm, align 8, !alias.scope !400, !noalias !367
  %.not.i.i.i.i.i.i23.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i20.i, %i.dk
  br i1 %.not.i.i.i.i.i.i23.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i, label %bb.p

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i, %.critedge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.t

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i
  %.sroa.0.010.i.i.i.i.i28.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i ], [ %.sroa.0.1.ph.i.i.i.i.i30.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i28.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.idx.i
  %.sroa.0.010.i.i.i.i.i28.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 1 ; 3 uses
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i.i.i28.ptr.i, align 1, !alias.scope !409, !noalias !410, !noundef !5 ; 5 uses
  %i.ff = icmp sgt i8 %i.fe, -1
  br i1 %i.ff, label %bb.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i: ; preds = %bb.t
  %.ptr46.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add.i
  %i.fg = and i8 %i.fe, 31
  %i.fh = zext nneg i8 %i.fg to i32               ; 3 uses
  %i.fi = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.add.i, 3
  tail call void @llvm.assume(i1 %i.fi)
  %.sroa.0.010.i.i.i.i.i28.add45.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 2 ; 3 uses
  %i.fj = load i8, ptr %.ptr46.i, align 1, !alias.scope !409, !noalias !410, !noundef !5
  %i.fk = shl nuw nsw i32 %i.fh, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = icmp samesign ugt i8 %i.fe, -33
  br i1 %i.fo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fp = zext nneg i8 %i.fe to i32
  br label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i
  %.ptr49.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add45.i
  %i.fq = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i28.add45.i, 3
  tail call void @llvm.assume(i1 %i.fq)
  %.sroa.0.010.i.i.i.i.i28.add44.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 3 ; 2 uses
  %i.fr = load i8, ptr %.ptr49.i, align 1, !alias.scope !409, !noalias !410, !noundef !5
  %i.fs = shl nuw nsw i32 %i.fm, 6
  %i.ft = and i8 %i.fr, 63
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fs, %i.fu            ; 2 uses
  %i.fw = shl nuw nsw i32 %i.fh, 12
  %i.fx = or disjoint i32 %i.fv, %i.fw
  %i.fy = icmp samesign ugt i8 %i.fe, -17
  br i1 %i.fy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i, label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i
  %.ptr48.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add44.i
  %i.fz = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 0
  tail call void @llvm.assume(i1 %i.fz)
  %.sroa.0.010.i.i.i.i.i28.add43.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 4
  %i.ga = load i8, ptr %.ptr48.i, align 1, !alias.scope !409, !noalias !410, !noundef !5
  %i.gb = shl nuw nsw i32 %i.fh, 18
  %i.gc = and i32 %i.gb, 1835008
  %i.gd = shl nuw nsw i32 %i.fv, 6
  %i.ge = and i8 %i.ga, 63
  %i.gf = zext nneg i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  %i.gh = or disjoint i32 %i.gg, %i.gc
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i, %bb.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i
  %.sroa.0.1.ph.i.i.i.i.i30.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i28.add45.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %.sroa.0.010.i.i.i.i.i28.add44.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %.sroa.0.010.i.i.i.i.i28.add43.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %.sroa.0.010.i.i.i.i.i28.add.i, %bb.u ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i31.i = phi i32 [ %i.fn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %i.fx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %i.gh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %i.fp, %bb.u ]
  %i.gi = load i64, ptr %i.fc, align 8, !alias.scope !411, !noalias !367, !noundef !5 ; 3 uses
  %i.gj = load i64, ptr %1, align 8, !range !6, !alias.scope !411, !noalias !367, !noundef !5
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.w, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13, !noalias !406
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i: ; preds = %bb.w, %bb.v
  %i.gl = load ptr, ptr %i.fd, align 8, !alias.scope !411, !noalias !367, !nonnull !5, !noundef !5
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gi
  store i32 %spec.select.i.ph.i.i.i.i.i31.i, ptr %i.gm, align 4, !noalias !406
  %i.gn = add i64 %i.gi, 1
  store i64 %i.gn, ptr %i.fc, align 8, !alias.scope !411, !noalias !367
  %.not.i.i.i.i.i.i33.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i30.idx.i, 3
  br i1 %.not.i.i.i.i.i.i33.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i, label %bb.t

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i
  %i.go = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ab), !noalias !367
  br i1 %i.go, label %bb.x, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i

bb.x:                                             ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gp, align 1, !alias.scope !366
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.o, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, %bb.x
  %.sink.i = phi i8 [ 1, %bb.o ], [ 1, %bb.x ], [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !366
  br label %bb.du

bb.y:                                             ; preds = %switch.lookup
  switch i8 %8, label %bb.co [
    i8 6, label %bb.z
    i8 7, label %bb.z
    i8 10, label %bb.cn
    i8 11, label %bb.cn
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %.not76.i = icmp slt i64 %i.h, 0                ; 4 uses
  %i.gq = trunc i48 %6 to i1                      ; 2 uses
  %i.gr = trunc i48 %i.w to i1
  %i.gs = trunc i48 %i.y to i1                    ; 3 uses
  %i.gt = trunc i48 %.sroa.010.4.extract.shift to i1
  %14 = shl nuw nsw i64 1, %11
  %15 = and i64 %14, 120175
  %.not145 = icmp eq i64 %15, 0                   ; 3 uses
  %i.gu = tail call { double, i32 } @_RNvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp5frexp(double noundef %i.u), !noalias !413 ; 2 uses
  %i.gv = extractvalue { double, i32 } %i.gu, 0   ; 3 uses
  %i.gw = extractvalue { double, i32 } %i.gu, 1   ; 2 uses
  %i.gx = fcmp une double %i.gv, 0.000000e+00
  br i1 %i.gx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gy = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gw, i32 -1) ; 2 uses
  %i.gz = extractvalue { i32, i1 } %i.gy, 1
  br i1 %i.gz, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.018.0.i = phi i32 [ %i.ha, %bb.ac ], [ %i.gw, %bb.z ] ; 2 uses
  %.sroa.06.0.i = phi double [ %i.hb, %bb.ac ], [ %i.gv, %bb.z ] ; 3 uses
  %brmerge84.i = or i1 %.not76.i, %i.gt           ; 2 uses
  br i1 %.not145, label %bb.ae, label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ha = extractvalue { i32, i1 } %i.gy, 0
  %i.hb = fmul double %i.gv, 2.000000e+00
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #15, !noalias !413
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %.mux.i = select i1 %.not76.i, ptr @32, ptr @31
  br i1 %brmerge84.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %.mux85.i = select i1 %.not76.i, ptr @36, ptr @35
  br i1 %brmerge84.i, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %..i39 = select i1 %i.i, i64 3, i64 2
  %.78.i = select i1 %i.i, ptr @30, ptr @29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag, %bb.af, %bb.ae
  %.sroa.10.0.i = phi i64 [ 3, %bb.ae ], [ %.79.i, %bb.ai ], [ 3, %bb.af ], [ %..i39, %bb.ag ] ; 3 uses
  %.sroa.023.0.i = phi ptr [ %.mux.i, %bb.ae ], [ %.80.i, %bb.ai ], [ %.mux85.i, %bb.af ], [ %.78.i, %bb.ag ] ; 2 uses
  %i.hc = icmp ult i64 %.38, 13
  %or.cond.i = and i1 %i.hc, %10
  br i1 %or.cond.i, label %bb.aj, label %.split.i

bb.ai:                                            ; preds = %bb.af
  %.79.i = select i1 %i.i, i64 3, i64 2
  %.80.i = select i1 %i.i, ptr @34, ptr @33
  br label %bb.ah

.split.i:                                         ; preds = %bb.al, %bb.ak, %bb.ah
  %.sroa.06.1.i = phi double [ %i.il, %bb.al ], [ %i.ih, %bb.ak ], [ %.sroa.06.0.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !413
  %.81.i = select i1 %.not145, i32 80, i32 112
  store i32 %.81.i, ptr %i.d, align 4, !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !413
  %i.hd = icmp slt i32 %.sroa.018.0.i, 0
  %storemerge77.i = select i1 %i.hd, i32 45, i32 43
  store i32 %storemerge77.i, ptr %i.c, align 4, !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !413
  %.sroa.048.0.i = tail call i32 @llvm.abs.i32(i32 %.sroa.018.0.i, i1 false)
  store i32 %.sroa.048.0.i, ptr %i.b, align 4, !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store ptr %i.d, ptr %i.a, align 8, !noalias !413
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !413
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.he, align 8, !noalias !413
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !413
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.hf, align 8, !noalias !413
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx.i, align 8, !noalias !413
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @37, ptr noundef nonnull %i.a), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !413
  %.sroa.026.0.i = select i1 %.not145, ptr @38, ptr @39
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.hi = icmp ne i64 %.38, 0                     ; 2 uses
  %brmerge.i = or i1 %i.hi, %i.gq
  %i.hj = load i32, ptr %7, align 4, !range !7    ; 7 uses
  %i.hk = icmp samesign ult i32 %i.hj, 128
  %i.hl = icmp samesign ult i32 %i.hj, 2048       ; 2 uses
  %i.hm = icmp samesign ult i32 %i.hj, 65536      ; 2 uses
  %..i.i54 = select i1 %i.hm, i64 3, i64 4
  %.sroa.0.0.ph.i.i = select i1 %i.hl, i64 2, i64 %..i.i54
  %i.hn = trunc i32 %i.hj to i8                   ; 2 uses
  %i.ho = and i8 %i.hn, 63
  %i.hp = or disjoint i8 %i.ho, -128              ; 3 uses
  %i.hq = lshr i32 %i.hj, 6
  %i.hr = trunc i32 %i.hq to i8                   ; 2 uses
  %i.hs = and i8 %i.hr, 63
  %i.ht = or disjoint i8 %i.hs, -128              ; 2 uses
  %i.hu = lshr i32 %i.hj, 12
  %i.hv = trunc i32 %i.hu to i8                   ; 2 uses
  %i.hw = and i8 %i.hv, 63
  %i.hx = or disjoint i8 %i.hw, -128
  %i.hy = lshr i32 %i.hj, 18
  %i.hz = trunc nuw nsw i32 %i.hy to i8
  %i.ia = or disjoint i8 %i.hz, -16
  %i.ib = or disjoint i8 %i.hv, -32
  %i.ic = or disjoint i8 %i.hr, -64
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %.tr.i = trunc nuw nsw i64 %5 to i32
  %i.id = shl nuw nsw i32 %.tr.i, 2
  %i.ie = sub nuw nsw i32 52, %i.id
  %i.if = tail call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %i.ie) ; 4 uses
  br i1 %.not76.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ig = fadd double %i.if, %.sroa.06.0.i
  %i.ih = fsub double %i.ig, %i.if
  br label %.split.i

bb.al:                                            ; preds = %bb.aj
  %i.ii = fneg double %.sroa.06.0.i
  %i.ij = fsub double %i.ii, %i.if
  %i.ik = fadd double %i.if, %i.ij
  %i.il = fneg double %i.ik
  br label %.split.i

bb.am:                                            ; preds = %bb.be, %.split.i
  %.sroa.06.2.i = phi double [ %.sroa.06.1.i, %.split.i ], [ %i.jf, %bb.be ] ; 2 uses
  %i.im = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.06.2.i) ; 3 uses
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = icmp ult i32 %i.im, 16
  br i1 %i.io, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 %i.in
  %i.iq = load i8, ptr %i.ip, align 1, !noalias !413, !noundef !5 ; 4 uses
  %i.ir = load i64, ptr %i.hg, align 8, !alias.scope !414, !noalias !413, !noundef !5 ; 4 uses
  %i.is = icmp sgt i64 %i.ir, -1
  call void @llvm.assume(i1 %i.is)
  %i.it = icmp sgt i8 %i.iq, -1
  br i1 %i.it, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc.i:                                         ; preds = %bb.ao
  %i.iu = load ptr, ptr %i.hh, align 8, !alias.scope !414, !noalias !413, !nonnull !5, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ir ; 2 uses
  %i.iw = and i8 %i.iq, -65
  %i.ix = lshr i8 %i.iq, 6
  %i.iy = or disjoint i8 %i.ix, -64
  store i8 %i.iy, ptr %i.iv, align 1, !noalias !413
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  store i8 %i.iw, ptr %i.iz, align 1, !noalias !413
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %.noexc87.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc87.i:                                       ; preds = %bb.ap
  %i.ja = load ptr, ptr %i.hh, align 8, !alias.scope !414, !noalias !413, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ir
  store i8 %i.iq, ptr %i.jb, align 1, !noalias !413
  br label %bb.as

bb.aq:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.in, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #16
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bu, %bb.cd, %bb.az, %bb.ay, %bb.ap, %bb.ao, %bb.ce, %bb.ca, %.invoke.i, %bb.by, %bb.bv, %bb.br, %bb.bp, %bb.bk, %bb.aq
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #12
          to label %common.resume unwind label %bb.cm, !noalias !413

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %.noexc87.i, %.noexc.i
  %.sroa.0.03.i.i = phi i64 [ 1, %.noexc87.i ], [ 2, %.noexc.i ]
  %i.jc = add nuw i64 %.sroa.0.03.i.i, %i.ir      ; 4 uses
  store i64 %i.jc, ptr %i.hg, align 8, !alias.scope !414, !noalias !413
  %i.jd = uitofp nneg i32 %i.im to double
  %i.je = fsub double %.sroa.06.2.i, %i.jd
  %i.jf = fmul double %i.je, 1.600000e+01         ; 3 uses
  %i.jg = icmp sgt i64 %i.jc, -1
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jc, 1
  br i1 %i.jh, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.ji = fcmp une double %i.jf, 0.000000e+00
  br i1 %i.ji, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %10, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.gq, label %bb.ax, label %bb.be

bb.aw:                                            ; preds = %bb.au
  br i1 %brmerge.i, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  br i1 %i.hk, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.sroa.0.0.ph.i.i)
          to label %.noexc89.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc89.i:                                       ; preds = %bb.ay
  %i.jj = load ptr, ptr %i.hh, align 8, !alias.scope !415, !noalias !413, !nonnull !5, !noundef !5 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1 ; 3 uses
  br i1 %i.hl, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc90.i:                                       ; preds = %bb.az
  %i.jl = load ptr, ptr %i.hh, align 8, !alias.scope !415, !noalias !413, !nonnull !5, !noundef !5
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %i.hn, ptr %i.jm, align 1, !noalias !413
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.ba:                                            ; preds = %.noexc89.i
  store i8 %i.ic, ptr %i.jk, align 1, !noalias !413
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  store i8 %i.hp, ptr %i.jn, align 1, !noalias !413
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.bb:                                            ; preds = %.noexc89.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 3 ; 2 uses
  br i1 %i.hm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i8 %i.ib, ptr %i.jk, align 1, !noalias !413
  store i8 %i.ht, ptr %i.jo, align 1, !noalias !413
  store i8 %i.hp, ptr %i.jp, align 1, !noalias !413
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.bd:                                            ; preds = %bb.bb
  store i8 %i.ia, ptr %i.jk, align 1, !noalias !413
  store i8 %i.hx, ptr %i.jo, align 1, !noalias !413
  store i8 %i.ht, ptr %i.jp, align 1, !noalias !413
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i8 %i.hp, ptr %i.jq, align 1, !noalias !413
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i: ; preds = %bb.bd, %bb.bc, %bb.ba, %.noexc90.i
  %.sroa.0.03.i88.i = phi i64 [ 2, %.noexc90.i ], [ 3, %bb.ba ], [ 4, %bb.bc ], [ 5, %bb.bd ] ; 2 uses
  store i64 %.sroa.0.03.i88.i, ptr %i.hg, align 8, !alias.scope !415, !noalias !413
  br label %bb.be

bb.be:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i, %bb.aw, %bb.av, %bb.as
  %i.jr = phi i64 [ %.sroa.0.03.i88.i, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i ], [ 1, %bb.aw ], [ %i.jc, %bb.as ], [ 1, %bb.av ]
  %i.js = fcmp oeq double %i.jf, 0.000000e+00
  br i1 %i.js, label %bb.bf, label %bb.am

bb.bf:                                            ; preds = %bb.be
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !413, !noundef !5 ; 3 uses
  %i.jv = icmp sgt i64 %i.ju, -1
  call void @llvm.assume(i1 %i.jv)
  %i.jw = add nuw i64 %i.ju, %i.jr                ; 2 uses
  %or.cond1.i = and i1 %i.hi, %10
  br i1 %or.cond1.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.034.0.i = phi i64 [ %i.jw, %bb.bf ], [ %..i92.i, %bb.bi ] ; 3 uses
  %i.jx = add i64 %.sroa.034.0.i, %.sroa.10.0.i   ; 5 uses
  %i.jy = icmp ult i64 %i.jx, %.sroa.10.0.i
  br i1 %i.jy, label %bb.cj, label %bb.bj, !prof !416

bb.bh:                                            ; preds = %bb.bf
  %i.jz = add i64 %5, 2
  %i.ka = add i64 %i.jz, %i.ju                    ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %5
  br i1 %i.kb, label %bb.cj, label %bb.bi, !prof !416

bb.bi:                                            ; preds = %bb.bh
  %..i92.i = call noundef i64 @llvm.umax.i64(i64 %i.ka, i64 %i.jw)
  br label %bb.bg

bb.bj:                                            ; preds = %bb.bg
  %i.kc = icmp ne i8 %i.z, %i.x
  %brmerge2.i = or i1 %i.kc, %i.gs
  br i1 %brmerge2.i, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bq, %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i, i64 %.sroa.10.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %.noexc93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc93.i:                                       ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.bl

bb.bl:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44, %.noexc93.i
  %.sroa.0.010.i.i.i.i.i.i40 = phi ptr [ %.sroa.023.0.i, %.noexc93.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i42, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44 ] ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i40, i64 1 ; 3 uses
  %i.kh = load i8, ptr %.sroa.0.010.i.i.i.i.i.i40, align 1, !alias.scope !424, !noalias !425, !noundef !5 ; 5 uses
  %i.ki = icmp sgt i8 %i.kh, -1
  br i1 %i.ki, label %bb.bm, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41: ; preds = %bb.bl
  %i.kj = and i8 %i.kh, 31
  %i.kk = zext nneg i8 %i.kj to i32               ; 3 uses
  %i.kl = icmp ne ptr %i.kg, %i.kd
  call void @llvm.assume(i1 %i.kl)
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i40, i64 2 ; 3 uses
  %i.kn = load i8, ptr %i.kg, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.ko = shl nuw nsw i32 %i.kk, 6
  %i.kp = and i8 %i.kn, 63
  %i.kq = zext nneg i8 %i.kp to i32               ; 2 uses
  %i.kr = or disjoint i32 %i.ko, %i.kq
  %i.ks = icmp samesign ugt i8 %i.kh, -33
  br i1 %i.ks, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kt = zext nneg i8 %i.kh to i32
  br label %bb.bn

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41
  %i.ku = icmp ne ptr %i.km, %i.kd
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i40, i64 3 ; 3 uses
  %i.kw = load i8, ptr %i.km, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.kx = shl nuw nsw i32 %i.kq, 6
  %i.ky = and i8 %i.kw, 63
  %i.kz = zext nneg i8 %i.ky to i32
  %i.la = or disjoint i32 %i.kx, %i.kz            ; 2 uses
  %i.lb = shl nuw nsw i32 %i.kk, 12
  %i.lc = or disjoint i32 %i.la, %i.lb
  %i.ld = icmp samesign ugt i8 %i.kh, -17
  br i1 %i.ld, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i53, label %bb.bn

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i53: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52
  %i.le = icmp ne ptr %i.kv, %i.kd
  call void @llvm.assume(i1 %i.le)
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i40, i64 4
  %i.lg = load i8, ptr %i.kv, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.lh = shl nuw nsw i32 %i.kk, 18
  %i.li = and i32 %i.lh, 1835008
  %i.lj = shl nuw nsw i32 %i.la, 6
  %i.lk = and i8 %i.lg, 63
  %i.ll = zext nneg i8 %i.lk to i32
  %i.lm = or disjoint i32 %i.lj, %i.ll
  %i.ln = or disjoint i32 %i.lm, %i.li
  br label %bb.bn

bb.bn:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i53, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52, %bb.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41
  %.sroa.0.1.ph.i.i.i.i.i.i42 = phi ptr [ %i.km, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41 ], [ %i.kv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52 ], [ %i.lf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i53 ], [ %i.kg, %bb.bm ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i43 = phi i32 [ %i.kr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i41 ], [ %i.lc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i52 ], [ %i.ln, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i53 ], [ %i.kt, %bb.bm ]
  %i.lo = load i64, ptr %i.ke, align 8, !alias.scope !426, !noalias !413, !noundef !5 ; 3 uses
  %i.lp = load i64, ptr %1, align 8, !range !6, !alias.scope !426, !noalias !413, !noundef !5
  %i.lq = icmp eq i64 %i.lo, %i.lp
  br i1 %i.lq, label %bb.bo, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44: ; preds = %bb.bo, %bb.bn
  %i.lr = load ptr, ptr %i.kf, align 8, !alias.scope !426, !noalias !413, !nonnull !5, !noundef !5
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lo
  store i32 %spec.select.i.ph.i.i.i.i.i.i43, ptr %i.ls, align 4, !noalias !427
  %i.lt = add i64 %i.lo, 1
  store i64 %i.lt, ptr %i.ke, align 8, !alias.scope !426, !noalias !413
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i42, %i.kd
  br i1 %.not.i.i.i.i.i.i.i45, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i46, label %bb.bl

bb.bp:                                            ; preds = %bb.bj
  %i.lu = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.jx)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.lu, label %bb.cj, label %bb.bk

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i46: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i44
  %.not.i = xor i1 %i.gr, true
  %brmerge3.i = select i1 %i.gs, i1 true, i1 %.not.i
  br i1 %brmerge3.i, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bw, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i46
  %i.lv = load ptr, ptr %i.hh, align 8, !noalias !413, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = load i64, ptr %i.hg, align 8, !noalias !413, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.ly = lshr i64 %i.lw, 2
  %i.lz = and i64 %i.lw, 3
  %.not.i.i.i.i.i47 = icmp ne i64 %i.lz, 0
  %i.ma = zext i1 %.not.i.i.i.i.i47 to i64
  %.sroa.0.0.i.i.i.i.i48 = add nuw nsw i64 %i.ly, %i.ma
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i.i48)
          to label %.noexc103.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !413

.noexc103.i:                                      ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %.not.i9.i.i.i.i.i.i49 = icmp samesign eq i64 %i.lw, 0
  br i1 %.not.i9.i.i.i.i.i.i49, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit105.i, label %.lr.ph.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i50:                             ; preds = %.noexc103.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i99.i
  %.sroa.0.010.i.i.i.i.i95.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i97.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i99.i ], [ %i.lv, %.noexc103.i ] ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i95.i, i64 1 ; 3 uses
  %i.mc = load i8, ptr %.sroa.0.010.i.i.i.i.i95.i, align 1, !alias.scope !435, !noalias !436, !noundef !5 ; 5 uses
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %bb.bs, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i96.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i96.i: ; preds = %.lr.ph.i.i.i.i.i.i50
  %i.me = and i8 %i.mc, 31
  %i.mf = zext nneg i8 %i.me to i32               ; 3 uses
  %i.mg = icmp ne ptr %i.mb, %i.lx
  call void @llvm.assume(i1 %i.mg)
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i95.i, i64 2 ; 3 uses
  %i.mi = load i8, ptr %i.mb, align 1, !alias.scope !435, !noalias !436, !noundef !5
  %i.mj = shl nuw nsw i32 %i.mf, 6
  %i.mk = and i8 %i.mi, 63
  %i.ml = zext nneg i8 %i.mk to i32               ; 2 uses
  %i.mm = or disjoint i32 %i.mj, %i.ml
  %i.mn = icmp samesign ugt i8 %i.mc, -33
  br i1 %i.mn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i101.i, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i50
  %i.mo = zext nneg i8 %i.mc to i32
  br label %bb.bt

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i101.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i96.i
  %i.mp = icmp ne ptr %i.mh, %i.lx
  call void @llvm.assume(i1 %i.mp)
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i95.i, i64 3 ; 3 uses
  %i.mr = load i8, ptr %i.mh, align 1, !alias.scope !435, !noalias !436, !noundef !5
  %i.ms = shl nuw nsw i32 %i.ml, 6
  %i.mt = and i8 %i.mr, 63
  %i.mu = zext nneg i8 %i.mt to i32
  %i.mv = or disjoint i32 %i.ms, %i.mu            ; 2 uses
  %i.mw = shl nuw nsw i32 %i.mf, 12
  %i.mx = or disjoint i32 %i.mv, %i.mw
  %i.my = icmp samesign ugt i8 %i.mc, -17
  br i1 %i.my, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i102.i, label %bb.bt

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i102.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i101.i
  %i.mz = icmp ne ptr %i.mq, %i.lx
  call void @llvm.assume(i1 %i.mz)
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i95.i, i64 4
  %i.nb = load i8, ptr %i.mq, align 1, !alias.scope !435, !noalias !436, !noundef !5
  %i.nc = shl nuw nsw i32 %i.mf, 18
  %i.nd = and i32 %i.nc, 1835008
  %i.ne = shl nuw nsw i32 %i.mv, 6
  %i.nf = and i8 %i.nb, 63
  %i.ng = zext nneg i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %i.ni = or disjoint i32 %i.nh, %i.nd
end_hunk_2
