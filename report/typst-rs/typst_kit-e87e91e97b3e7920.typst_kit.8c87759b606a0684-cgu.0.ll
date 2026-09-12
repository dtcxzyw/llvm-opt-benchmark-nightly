Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsc4241EHy6Do_9typst_kit8datetimeNtB2_4Time5fixed:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sink83
  %i.t = load i8, ptr %i.s, align 2, !noundef !17 ; 2 uses
  %i.u = icmp ult i8 %i.t, 24
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sink81
  %i.w = load i8, ptr %i.v, align 1, !noundef !17 ; 2 uses
  %i.x = icmp ult i8 %i.w, 60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sink79
  %i.z = load i8, ptr %i.y, align 4, !noundef !17 ; 2 uses
  %i.aa = icmp ult i8 %i.z, 60
  tail call void @llvm.assume(i1 %i.aa)
  %.in = zext nneg i8 %i.t to i32
  %i.ab = mul nuw nsw i32 %.in, 3600
  %.sroa.033.1 = zext nneg i8 %i.w to i32
  %i.ac = zext nneg i8 %i.z to i32
  %i.ad = mul nuw nsw i32 %.sroa.033.1, 60
  %i.ae = add nuw nsw i32 %i.ab, %i.ac
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.j
  %.sroa.623.8.insert.ext = phi i32 [ %i.af, %bb.j ], [ 0, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ag, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.623.8.insert.ext, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit, %bb.m, %.thread
  %.sink = phi i32 [ 1, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit ], [ 1, %bb.m ], [ 0, %.thread ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %common.resume unwind label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8datetimeNtB2_4Time5reset(ptr noalias nofree noundef align 4 captures(none) dereferenceable(20) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !28, !noundef !17
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB2_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBX_6offset3utc3UtcEE15initialized_mutCsc4241EHy6Do_9typst_kit.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !noundef !17
  switch i32 %.val, label %bb.c [
    i32 3, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB2_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBX_6offset3utc3UtcEE15initialized_mutCsc4241EHy6Do_9typst_kit.exit
    i32 2, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB2_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBX_6offset3utc3UtcEE15initialized_mutCsc4241EHy6Do_9typst_kit.exit
    i32 0, label %bb.d
  ], !prof !6041

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #49
  unreachable

_RNvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB2_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBX_6offset3utc3UtcEE15initialized_mutCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %bb.b, %bb.d, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  store i32 3, ptr %i.c, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB2_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBX_6offset3utc3UtcEE15initialized_mutCsc4241EHy6Do_9typst_kit.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8datetimeNtB2_4Time5today(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 4 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.025 = alloca [12 x i8], align 4          ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.0 = alloca [12 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.f = load i32, ptr %1, align 4, !range !28, !noundef !17
  %i.g = trunc nuw i32 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i32, ptr %i.h acquire, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE15get_or_try_initNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE10initializeNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 4 %i.h)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE15get_or_try_initNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE15get_or_try_initNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !range !6046, !noundef !17
  %.not = icmp eq i32 %i.l, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i, i64 12, i1 false)
  br i1 %.not, label %.thread, label %.thread33

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !range !6046
  %i.m = icmp eq i32 %.pre, -1
  br i1 %i.m, label %bb.e, label %.thread33

.thread:                                          ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE15get_or_try_initNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit.exit
  %i.n = tail call noundef i32 @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6offset5localNtB4_5LocalNtB6_8TimeZone24offset_from_utc_datetime(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.0.0.i)
  br label %bb.e

.thread33:                                        ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCseKXfNLkF2r6_6chrono8datetime8DateTimeNtNtNtBY_6offset3utc3UtcEE15get_or_try_initNCINvB2_11get_or_initNvMB1D_B1B_3nowE0zECsc4241EHy6Do_9typst_kit.exit, %bb.d
  %i.o = load i64, ptr %2, align 8, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !noundef !17 ; 3 uses
  %i.r = sitofp i64 %i.o to double
  %i.s = icmp sgt i32 %i.q, -1000000000
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp slt i32 %i.q, 1000000000
  tail call void @llvm.assume(i1 %i.t)
  %i.u = sitofp i32 %i.q to double
  %i.v = fdiv double %i.u, 1.000000e+09
  %i.w = fadd double %i.v, %i.r
  %i.x = tail call double @llvm.trunc.f64(double %i.w) ; 4 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ueq double %i.y, +inf
  %i.aa = fcmp olt double %i.x, f0xC1E0000000000000
  %or.cond = or i1 %i.aa, %i.z
  %i.ab = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond1 = or i1 %i.ab, %or.cond
  br i1 %or.cond1, label %bb.j, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread, %bb.h
  %.sroa.8.027 = phi i32 [ %i.aw, %bb.h ], [ %i.n, %.thread ], [ 0, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.025, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %.sroa.025, i32 noundef %.sroa.8.027)
  %i.ac = load i32, ptr %i.e, align 4, !range !74, !noundef !17
  %i.ad = ashr i32 %i.ac, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.025, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %.sroa.8.027), !noalias !6047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6047
  %i.ae = load i32, ptr %i.d, align 4, !range !74, !noalias !6047, !noundef !17
  %i.af = lshr i32 %i.ae, 3
  %i.ag = and i32 %i.af, 1023                     ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ag, 733
  br i1 %i.ai, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike5monthCsc4241EHy6Do_9typst_kit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #49, !noalias !6047
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike5monthCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr @381, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !6047, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.025, i64 12, i1 false)
  call void @_RNvMNtNtCseKXfNLkF2r6_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %.sroa.8.027), !noalias !6048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6048
  %i.al = load i32, ptr %i.b, align 4, !range !74, !noalias !6048, !noundef !17
  %i.am = lshr i32 %i.al, 3                       ; 2 uses
  %i.an = and i32 %i.am, 1023                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = icmp samesign ult i32 %i.an, 733
  br i1 %i.ap, label %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike3dayCsc4241EHy6Do_9typst_kit.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike5monthCsc4241EHy6Do_9typst_kit.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #49, !noalias !6048
  unreachable

_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike3dayCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike5monthCsc4241EHy6Do_9typst_kit.exit
  %i.aq = zext i8 %i.ak to i32
  %i.ar = add nuw nsw i32 %i.ag, %i.aq
  %i.as = lshr i32 %i.ar, 6
  %i.at = getelementptr inbounds nuw i8, ptr @381, i64 %i.ao
  %i.au = load i8, ptr %i.at, align 1, !noalias !6048, !noundef !17
  %3 = zext i8 %i.au to i32
  %4 = add nuw nsw i32 %i.am, %3
  %5 = lshr i32 %4, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6048
  %6 = trunc nuw nsw i32 %i.as to i8
  %7 = trunc i32 %5 to i8
  %i.av = and i8 %7, 31
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime8from_ymd(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef %i.ad, i8 noundef %6, i8 noundef %i.av)
  br label %bb.i

bb.h:                                             ; preds = %.thread33
  %i.aw = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.x) ; 2 uses
  %i.ax = add i32 %i.aw, 86399
  %or.cond2 = icmp ult i32 %i.ax, 172799
  br i1 %or.cond2, label %bb.e, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike3dayCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.j:                                             ; preds = %bb.h, %.thread33
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %i.ay, align 1
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB2_14SystemPackages14latest_version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !6055, !noundef !17 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.d, -1                ; 2 uses
  %i.e = and i8 %i.d, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6055
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.f
  %i.i = icmp eq i64 %.sroa.3.0.i.i, 7
  br i1 %i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !alias.scope !6055, !nonnull !17
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.j, ptr %2 ; 2 uses
  %i.k = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.l = xor i32 %i.k, 1986359920
  %i.m = getelementptr i8, ptr %.sroa.0.0.i.i, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 2003134838
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.a, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !22, !noundef !17
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  tail call void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages14latest_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.j

bb.c:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages14latest_version(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.v = load i32, ptr %i.b, align 4, !range !28, !noundef !17
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !6056
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !6056
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 34)
          to label %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit unwind label %bb.e, !noalias !6056

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %bb.g unwind label %bb.f, !noalias !6056

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6056
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6056
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit
  %storemerge = phi i32 [ 0, %bb.h ], [ 1, %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB2_14SystemPackages6obtain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 4                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.040 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.410.sroa.0 = alloca [20 x i8], align 4   ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.aa = alloca [256 x i8], align 8              ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !22, !noundef !17
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages6obtain(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.af = load i64, ptr %i.ac, align 8, !range !22, !noundef !17
  %.not19 = icmp eq i64 %i.af, -1
  br i1 %.not19, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !22, !noundef !17
  %.not20 = icmp eq i64 %i.ah, -1
  br i1 %.not20, label %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge, label %bb.g

._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !alias.scope !6174, !noalias !6175
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.c

bb.f:                                             ; preds = %bb.p, %bb.cr, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages6obtain(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.aj = load i64, ptr %i.ab, align 8, !range !22, !noundef !17
  %.not21 = icmp eq i64 %i.aj, -1
  br i1 %.not21, label %bb.q, label %bb.p

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge, %bb.q, %bb.cn, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.ak = phi i8 [ %.pre, %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge ], [ %i.bi, %bb.q ], [ %i.bi, %bb.cn ], [ %i.bi, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.040)
  call void @llvm.experimental.noalias.scope.decl(metadata !6174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6176
  %.not.i = icmp sgt i8 %i.ak, -1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val46.i = load ptr, ptr %2, align 8, !alias.scope !6174, !noalias !6175 ; 5 uses
  %.val47.i = load i64, ptr %i.al, align 8, !alias.scope !6174, !noalias !6175
  br i1 %.not.i, label %bb.h, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i
end_hunk_0
