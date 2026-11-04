Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_logging-0e7aacd3cc7f2772.opendal_layer_logging.14be8a2f3581f8dd-cgu.0?download=true
inline.NumInlined: 26
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"opendal::services", align 1, !guid !4
@_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@1 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1, !guid !4
@2 = private unnamed_addr constant [30 x i8] c"\08service=\C0\06 name=\C0\C0\02: \C0\01 \C0\01 \C0\00", align 1, !guid !4
@3 = private unnamed_addr constant [26 x i8] c"layers/logging/src/lib.rs\00", align 1, !guid !4
@4 = private unnamed_addr constant [21 x i8] c"opendal_layer_logging", align 1, !guid !4
@5 = private unnamed_addr constant [27 x i8] c"\08service=\C0\06 name=\C0\C0\02: \C0\01 \C0\00", align 1, !guid !4
@6 = private unnamed_addr constant [7 x i8] c"\01 \C0\01=\C0\00", align 1, !guid !4

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_5Debug3fmtCs1Mq7REybyjN_21opendal_layer_logging(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !12
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs1Mq7REybyjN_21opendal_layer_loggingNtB5_25DefaultLoggingInterceptorNtB5_18LoggingInterceptor3log(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i8 noundef range(i8 0, 12) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 288230376151711744) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %7) unnamed_addr #0 personality ptr @rust_eh_personality !guid !38 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 15 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  store i8 %2, ptr %i.s, align 1
  store ptr %5, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %6, ptr %i.t, align 8
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %7, ptr %i.q, align 8, !captures !39
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 81 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !40, !noundef !5
  %i.w = icmp eq i8 %i.v, 0
  %. = select i1 %i.w, i64 1, i64 2               ; 2 uses
  %i.x = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 6
  tail call void @llvm.assume(i1 %i.y)
  %.not59 = icmp samesign ugt i64 %., %i.x
  br i1 %.not59, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit75, %bb.a
  %i.z = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 6
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ugt i64 %i.z, 3
  br i1 %i.ab, label %bb.p, label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ac = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  store ptr %i.ac, ptr %i.p, align 8, !captures !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  store ptr %i.ah, ptr %i.o, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.al, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %3, ptr %i.n, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %4, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ao = load i8, ptr %i.u, align 1, !range !40, !noundef !5
  %.not60 = icmp eq i8 %i.ao, 0
  br i1 %.not60, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.q, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_5Debug3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @1, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.q, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @1, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit71 unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.be, %bb.l ], [ %i.be, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ap = load ptr, ptr %i.o, align 8, !alias.scope !43, !nonnull !5, !noundef !5
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !43
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #10
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.k:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit71, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.p, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.417.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.o, ptr %i.at, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsV_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.421.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.n, ptr %i.au, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs3_Cs1Mq7REybyjN_21opendal_layer_loggingNtB5_14LoggingContextNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.s, ptr %i.av, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_RNvXs_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB4_9OperationNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.r, ptr %i.aw, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.m, ptr %i.ax, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %., ptr %i.ay, align 8, !noalias !44
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @0, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 17, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @2, ptr %i.az, align 8, !noalias !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.h, ptr %i.ba, align 8, !noalias !44
  store i64 0, ptr %i.c, align 8, !noalias !44
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @4, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 21, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.bb, align 8, !noalias !44
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @3, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 25, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.bc, align 8, !noalias !44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 198, ptr %i.bd, align 4, !noalias !44
  invoke void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.m unwind label %bb.l

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1Mq7REybyjN_21opendal_layer_logging.exit71: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val69 = load i64, ptr %i.m, align 8           ; 2 uses
  %i.bf = icmp eq i64 %.val69, 0
  br i1 %i.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val70 = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70, i64 noundef %.val69, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val67 = load i64, ptr %i.m, align 8           ; 2 uses
  %i.bh = icmp eq i64 %.val67, 0
  br i1 %i.bh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit74, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i73

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i73: ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val68 = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.val67, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit74

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit74: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.bj = load ptr, ptr %i.o, align 8, !alias.scope !47, !nonnull !5, !noundef !5
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !47
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit75

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit74
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #10
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit75

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit75: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit74, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.c

bb.o:                                             ; preds = %bb.u, %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit: ; preds = %bb.t, %bb.u, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit, %bb.i
  %.pn62 = phi { ptr, i32 } [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs1Mq7REybyjN_21opendal_layer_logging.exit ], [ %.pn, %bb.i ], [ %i.cj, %bb.u ], [ %i.cj, %bb.t ]
  resume { ptr, i32 } %.pn62

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  store ptr %i.bn, ptr %i.g, align 8, !captures !39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.bp, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit86
  ret void

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  store ptr %i.bs, ptr %i.f, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %3, ptr %i.e, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %4, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.441.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.bz, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsV_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.445.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.ca, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs3_Cs1Mq7REybyjN_21opendal_layer_loggingNtB5_14LoggingContextNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.s, ptr %i.cb, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB4_9OperationNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.r, ptr %i.cc, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.457.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.cd, align 8, !noalias !48
  %.sroa.422.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @0, ptr %.sroa.422.0..sroa_idx.i.i76, align 8, !noalias !48
  %.sroa.523.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 17, ptr %.sroa.523.0..sroa_idx.i.i77, align 8, !noalias !48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @5, ptr %i.ce, align 8, !noalias !48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.d, ptr %i.cf, align 8, !noalias !48
  store i64 0, ptr %i.b, align 8, !noalias !48
  %.sroa.428.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %.sroa.428.0..sroa_idx.i.i78, align 8, !noalias !48
  %.sroa.529.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 21, ptr %.sroa.529.0..sroa_idx.i.i79, align 8, !noalias !48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cg, align 8, !noalias !48
  %.sroa.434.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @3, ptr %.sroa.434.0..sroa_idx.i.i80, align 8, !noalias !48
  %.sroa.535.0..sroa_idx.i.i81 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 25, ptr %.sroa.535.0..sroa_idx.i.i81, align 8, !noalias !48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ch, align 8, !noalias !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 215, ptr %i.ci, align 4, !noalias !48
  invoke void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ck = load ptr, ptr %i.f, align 8, !alias.scope !51, !nonnull !5, !noundef !5
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !51
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #10
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit unwind label %bb.o

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.cn = load ptr, ptr %i.f, align 8, !alias.scope !54, !nonnull !5, !noundef !5
  %i.co = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !54
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit86

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #10
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit86

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging.exit86: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_Cs1Mq7REybyjN_21opendal_layer_loggingNtB5_14LoggingContextNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !55 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.01.024 = phi ptr [ %i.d, %.lr.ph ], [ %i.n, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.01.024, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 16
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.47.0..sroa_idx, align 8
  store ptr %i.b, ptr %i.h, align 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging, ptr %.sroa.411.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not25 = icmp eq ptr %i.n, %i.g
  br i1 %.not25, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %i.o = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtCsgxBkk5gSRhY_4core3fmt7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !56 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !57 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB4_9OperationNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{i64 -1534900416271455054}
!5 = !{}
!6 = !{i64 8}
!7 = !{i64 -3197756641340181515}
!8 = !{i64 8721606950230718084}
!9 = distinct !{!9, i1 true, !"_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging"}
!10 = distinct !{!10, !9, !"_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!11 = !{i64 8096793876801400987}
!12 = !{!10}
!13 = !{i64 -5411824691528129897}
!14 = distinct !{!14, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging"}
!15 = distinct !{!15, !14, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging"}
!17 = distinct !{!17, !16, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging"}
!19 = distinct !{!19, !18, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging"}
!21 = distinct !{!21, !20, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging"}
!23 = distinct !{!23, !22, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging"}
!25 = distinct !{!25, !24, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging"}
!27 = distinct !{!27, !26, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging"}
!29 = distinct !{!29, !28, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging"}
!31 = distinct !{!31, !30, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging"}
!33 = distinct !{!33, !32, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging"}
!35 = distinct !{!35, !34, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging"}
!37 = distinct !{!37, !36, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1Mq7REybyjN_21opendal_layer_logging: argument 0"}
!38 = !{i64 5749455314161893878}
!39 = !{!"address", !"read_provenance"}
!40 = !{i8 0, i8 13}
!41 = !{!15}
!42 = !{!17}
!43 = !{!17, !15}
!44 = !{!21, !19}
!45 = !{!23}
!46 = !{!25}
!47 = !{!25, !23}
!48 = !{!29, !27}
!49 = !{!31}
!50 = !{!33}
!51 = !{!33, !31}
!52 = !{!35}
!53 = !{!37}
!54 = !{!37, !35}
!55 = !{i64 -1308960541312509775}
!56 = !{i64 5963833472685519001}
!57 = !{i64 2315983034321820976}
end_hunk_0
