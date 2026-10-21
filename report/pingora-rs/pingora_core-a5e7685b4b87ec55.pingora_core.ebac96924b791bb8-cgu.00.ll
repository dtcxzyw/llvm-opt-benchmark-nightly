Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.00?download=true
inline.NumInlined: 1653
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameECskeugdADtBsi_12pingora_core:_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2y_4SyncEL_EE4intoCskeugdADtBsi_12pingora_core.exit
.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #27
          to label %.body unwind label %bb.f, !noalias !629

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !629
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2y_4SyncEL_EE4intoCskeugdADtBsi_12pingora_core.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECskeugdADtBsi_12pingora_core(ptr nonnull %i.d, ptr nonnull %i.e) #27
          to label %.body unwind label %bb.h, !noalias !629

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !629
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !629
  ret ptr %i.r

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core8services21ServiceWithDependentsEL_EE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECskeugdADtBsi_12pingora_core(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECskeugdADtBsi_12pingora_core(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader10set_statusNtNtCs84JG9zk80ZV_4http6status10StatusCodeECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(232) %0, i16 noundef range(i16 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 13, ptr %i.a, align 8
  call void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs84JG9zk80ZV_4http6status10StatusCodezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2z_14ResponseHeader10set_statusB1b_E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i16 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i16, ptr %i.b, align 8, !range !23, !noundef !13
  %i.d = trunc nuw i16 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !align !18, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !range !24, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtNtB1d_5value11HeaderValueECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  %i.d = alloca [104 x i8], align 8               ; 15 uses
  %i.e = alloca [104 x i8], align 8               ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [23 x i8], align 1          ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 18 uses
  %i.h = alloca [32 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i16 13, ptr %i.m, align 8
  call void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValuezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2I_14ResponseHeader13append_headerRNtNtB1f_4name10HeaderNameB1b_E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i8, ptr %i.o, align 8, !range !21, !noundef !13 ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  %i.r = load ptr, ptr %i.n, align 8              ; 21 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i8 1, ptr %0, align 8
  br label %_RINvCskspKcFIsYcD_12pingora_http19append_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueRNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 12 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %.sroa.6.sroa.0.0.copyload = load i56, ptr %.sroa.6.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.u = load i64, ptr %i.t, align 8, !range !22, !noundef !13
  %.not = icmp eq i64 %i.u, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !951
  invoke void @_RNvXs4_NtCskspKcFIsYcD_12pingora_http16case_header_nameRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %.split.thread.i, !noalias !951

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i: ; preds = %bb.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i
  %.sroa.014.0.i = phi i1 [ %.sroa.014.2130.i, %bb.dw ], [ %.sroa.014.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ]
  %.pn34.i = phi { ptr, i32 } [ %.pn131.i, %bb.dw ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  br i1 %.sroa.014.0.i, label %bb.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i

.split.thread.i:                                  ; preds = %bb.dv, %bb.c
  %lpad.thr_comm223.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !951
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !951, !noundef !13 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !951, !noundef !13 ; 14 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.e unwind label %.thread.i, !noalias !952

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.dt, %.body.thread.i, %.body.i, %bb.bj, %.thread.i.i, %bb.az, %bb.ay, %bb.av, %bb.v, %bb.u, %bb.r
  %.sroa.014.2.i = phi i1 [ false, %.body.i ], [ true, %.body.thread.i ], [ true, %bb.dt ], [ false, %bb.r ], [ false, %bb.bj ], [ false, %.thread.i.i ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.v ], [ false, %bb.u ] ; 2 uses
  %.sroa.011.0.i = phi i8 [ %.sroa.011.1.i, %.body.i ], [ %.sroa.011.2.lpad-body136.i, %.body.thread.i ], [ %.sroa.011.2.lpad-body136.i, %bb.dt ], [ %.sroa.011.1.i, %bb.r ], [ %.sroa.011.1.i, %bb.bj ], [ %.sroa.011.1.i, %.thread.i.i ], [ %.sroa.011.1.i, %bb.az ], [ %.sroa.011.1.i, %bb.ay ], [ %.sroa.011.1.i, %bb.av ], [ %.sroa.011.1.i, %bb.v ], [ %.sroa.011.1.i, %bb.u ]
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body137.i, %.body.thread.i ], [ %eh.lpad-body137.i, %bb.dt ], [ %i.bw, %bb.r ], [ %.pn128.i.i, %bb.bj ], [ %.pn128.i.i, %.thread.i.i ], [ %i.fl, %bb.az ], [ %i.fl, %bb.ay ], [ %i.fh, %bb.av ], [ %i.ce, %bb.v ], [ %i.ce, %bb.u ] ; 2 uses
  %i.z = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.z, label %bb.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i

.thread.i:                                        ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !951
  store i16 13, ptr %i.i, align 8, !noalias !951
  %i.ab = load i64, ptr %i.j, align 8, !range !14, !noalias !951, !noundef !13
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke fastcc noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.dv unwind label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.015.0.copyload.i = load ptr, ptr %i.ae, align 8, !noalias !951 ; 3 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, i64 24, i1 false), !noalias !951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !951
  store ptr %.sroa.015.0.copyload.i, ptr %i.k, align 8, !noalias !951
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !951
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.not32.i = icmp eq ptr %.sroa.015.0.copyload.i, null
  br i1 %.not32.i, label %bb.bl, label %bb.bk

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i, %bb.g
  %.sroa.011.1.i = phi i8 [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i ], [ 1, %bb.g ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !951
  %.sroa.16.32.insert.ext = zext i56 %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.16.32.insert.shift = shl nuw i64 %.sroa.16.32.insert.ext, 8
  %.sroa.14.32.insert.ext = zext nneg i8 %i.p to i64
  %.sroa.14.32.insert.insert = or disjoint i64 %.sroa.16.32.insert.shift, %.sroa.14.32.insert.ext ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.af = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %bb.bh, !noalias !955

bb.j:                                             ; preds = %bb.i
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !956, !nonnull !13, !noundef !13
  invoke void %i.ah(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.bf, !noalias !955, !inline_history !5

bb.l:                                             ; preds = %bb.j
  %i.ai = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g), !noalias !957 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !958, !noundef !13 ; 3 uses
  %i.al = and i16 %i.ak, %i.ai
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !958, !noundef !13 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !alias.scope !958, !nonnull !13
  %i.ar = zext i16 %i.ak to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !958 ; 14 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !958, !nonnull !13 ; 3 uses
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !954, !noalias !951 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null                 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !15, !alias.scope !954, !noalias !951
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !954, !noalias !951 ; 9 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !alias.scope !954, !noalias !951 ; 8 uses
  %.not169 = icmp eq i64 %i.ap, 0
  br label %.outer129

.outer129:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.l
  %.sroa.09.0.i.i.ph = phi i64 [ %i.cs, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.ct, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.am, %bb.l ] ; 2 uses
  %i.bd = icmp ult i64 %.sroa.01.0.i.i.ph, %i.ap  ; 2 uses
  %.not169.not = xor i1 %.not169, true
  %brmerge = or i1 %i.bd, %.not169.not
  %.sroa.01.0.i.i.ph.mux = select i1 %i.bd, i64 %.sroa.01.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit162, label %infloop

.loopexit162:                                     ; preds = %.outer129
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !955, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bf, -1
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.af
  unreachable

bb.n:                                             ; preds = %.loopexit162
  %i.bg = zext i16 %i.bf to i64                   ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !noalias !955, !noundef !13 ; 2 uses
  %i.bj = and i16 %i.bi, %i.ak
  %i.bk = zext i16 %i.bj to i64
  %i.bl = sub i64 %.sroa.01.0.i.i.ph.mux, %i.bk
  %i.bm = and i64 %i.bl, %i.ar
  %i.bn = icmp samesign ult i64 %i.bm, %.sroa.09.0.i.i.ph
  br i1 %i.bn, label %bb.as, label %bb.aa

bb.o:                                             ; preds = %.loopexit162
  %i.bo = icmp ult i64 %i.at, 88686269585142076
  call void @llvm.assume(i1 %i.bo)
  %.sroa.699.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.699.0.copyload.i.i = load ptr, ptr %.sroa.699.0..sroa_idx.i.i, align 8, !alias.scope !954, !noalias !951 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.bp = icmp samesign ugt i64 %i.at, 32767
  br i1 %i.bp, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !960
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i16 %i.ai, ptr %i.br, align 8, !noalias !960
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.aw, ptr %i.bs, align 8, !noalias !961
  %.sroa.684.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bc, ptr %.sroa.684.0..sroa_idx85.i.i, align 8, !noalias !961
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.bb, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !noalias !961
  %.sroa.1092.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.699.0.copyload.i.i, ptr %.sroa.1092.0..sroa_idx93.i.i, align 8, !noalias !961
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.r, ptr %i.bt, align 8, !noalias !962
  %.sroa.5102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.4.sroa.0.0.copyload, ptr %.sroa.5102.0..sroa_idx103.i.i, align 8, !noalias !962
  %.sroa.6105.0..sroa_idx106.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.4.sroa.4.0.copyload, ptr %.sroa.6105.0..sroa_idx106.i.i, align 8, !noalias !962
  %.sroa.7108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %.sroa.7108.0..sroa_idx109.i.i, align 8, !noalias !962
  %.sroa.8111.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.8111.0..sroa_idx112.i.i, align 8, !noalias !962
  store i64 0, ptr %i.e, align 8, !noalias !960
  %i.bu = load i64, ptr %i.bq, align 8, !range !19, !alias.scope !963, !noundef !13
  %i.bv = icmp eq i64 %i.at, %i.bu
  br i1 %i.bv, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %._crit_edge172.i.i unwind label %bb.r, !noalias !964

._crit_edge172.i.i:                               ; preds = %bb.q
  %.pre173.i.i = load ptr, ptr %i.au, align 8, !alias.scope !963
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.e) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.s, !noalias !965

bb.s:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !964
  unreachable
end_hunk_0
begin_hunk_1_@_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtNtB1d_5value11HeaderValueECskeugdADtBsi_12pingora_core:bb.a
.outer:                                           ; preds = %bb.bc, %bb.bb
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.gb, %bb.bc ], [ %i.ai, %bb.bb ] ; 2 uses
  %.sroa.09.0.i.i.i.ph = phi i16 [ %i.fx, %bb.bc ], [ %i.fu, %bb.bb ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i64 [ %i.ga, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.gc, %bb.bc ], [ %.sroa.01.0.i.i.ph.mux, %bb.bb ] ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.ft ; 2 uses
  %.not170.not = xor i1 %.not170, true
  %brmerge195 = or i1 %i.fv, %.not170.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.fv, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge195, label %.loopexit166, label %infloop194

.loopexit166:                                     ; preds = %.outer
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.ph.mux ; 4 uses
  %i.fx = load i16, ptr %i.fw, align 2, !noalias !998, !noundef !13 ; 2 uses
  %i.fy = icmp eq i16 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 3 uses
  br i1 %i.fy, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit166
  %i.ga = add i64 %.sroa.07.0.i.i.i.ph, 1
  %i.gb = load i16, ptr %i.fz, align 2, !noalias !998, !noundef !13
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.fw, align 2, !noalias !998
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.fz, align 2, !noalias !998
  %i.gc = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.bd:                                            ; preds = %.loopexit166
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.fw, align 2, !noalias !998
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.fz, align 2, !noalias !998
  %i.gd = icmp ugt i64 %.sroa.07.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.016.0.i.i, i1 true, i1 %i.gd
  %i.ge = load i64, ptr %1, align 8, !range !20, !alias.scope !997
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond3.i.i.i, label %bb.be, label %bb.dr

bb.be:                                            ; preds = %bb.bd
  store i64 1, ptr %1, align 8, !alias.scope !997
  br label %bb.dr

bb.bf:                                            ; preds = %bb.aq, %bb.k
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.k
  %i.gh = load ptr, ptr %i.g, align 8, !alias.scope !999, !noalias !951, !noundef !13 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.dq, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !1000, !noalias !951, !noundef !13
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !1000, !noalias !951, !noundef !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !1000, !noalias !951, !noundef !13
  br label %.invoke248.i

bb.bh:                                            ; preds = %bb.af, %bb.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !1001, !nonnull !13, !noundef !13
  invoke void %i.gq(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %.thread.i.i unwind label %bb.bi, !noalias !955, !inline_history !5

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !955
  unreachable

.thread.i.i:                                      ; preds = %bb.bh, %bb.bf, %bb.an, %bb.aj
  %.pn128.i.i = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %lpad.thr_comm.i.i, %bb.bh ], [ %i.eg, %bb.an ], [ %i.gg, %bb.bf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.gs = load ptr, ptr %i.g, align 8, !alias.scope !1004, !noalias !951, !noundef !13 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !1009, !noalias !951, !noundef !13
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !1010, !nonnull !13, !noundef !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !1009, !noalias !951, !noundef !13
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !1009, !noalias !951, !noundef !13
  invoke void %i.gx(ptr noundef %i.gv, ptr noundef %i.gz, i64 noundef %i.hb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.bi, !noalias !955, !inline_history !3

bb.bk:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !951
  %i.hc = load ptr, ptr %.sroa.015.0.copyload.i, align 8, !noalias !952, !nonnull !13, !noundef !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !951, !noundef !13
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !951, !noundef !13
  invoke void %i.hc(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.hd, ptr noundef %i.he, i64 noundef %i.hg)
          to label %bb.do unwind label %.body.thread145.i, !noalias !952

bb.bl:                                            ; preds = %bb.h
  %i.hh = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !range !15, !noalias !951, !noundef !13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.do, %bb.bl
  %.sroa.521.0.i = phi i8 [ %.sroa.429.0.copyload.i, %bb.do ], [ %i.hh, %bb.bl ] ; 2 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.028.0.copyload.i, %bb.do ], [ null, %bb.bl ] ; 12 uses
  store ptr %.sroa.019.0.i, ptr %i.h, align 8, !noalias !951
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i8 %.sroa.521.0.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !951
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, i64 23, i1 false), !noalias !951
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !951 ; 16 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.18.0.copyload.i = load ptr, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !951 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.hi = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.t)
          to label %bb.bn unwind label %bb.dl, !noalias !1013

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.hi, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !1014, !nonnull !13, !noundef !13
  invoke void %i.hk(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.dj, !noalias !1013, !inline_history !2

bb.bp:                                            ; preds = %bb.bn
  %i.hl = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !1015 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.hn = load i16, ptr %i.hm, align 8, !alias.scope !1016, !noundef !13 ; 3 uses
  %i.ho = and i16 %i.hn, %i.hl
  %i.hp = zext nneg i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1016, !noundef !13 ; 2 uses
  %i.ht = load ptr, ptr %i.hq, align 8, !alias.scope !1016, !nonnull !13
  %i.hu = zext i16 %i.hn to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1016 ; 14 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !1016, !nonnull !13 ; 3 uses
  %i.hz = icmp eq ptr %.sroa.019.0.i, null        ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !1012, !noalias !951 ; 9 uses
  %i.ic = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !1012, !noalias !951 ; 8 uses
  %.not167 = icmp eq i64 %i.hs, 0
  br label %.outer143

.outer143:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i, %bb.bp
  %.sroa.09.0.i43.i.ph = phi i64 [ %i.jo, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i ], [ 0, %bb.bp ] ; 3 uses
  %.sroa.01.0.i44.i.ph = phi i64 [ %i.jp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i ], [ %i.hp, %bb.bp ] ; 2 uses
  %i.id = icmp ult i64 %.sroa.01.0.i44.i.ph, %i.hs ; 2 uses
  %.not167.not = xor i1 %.not167, true
  %brmerge197 = or i1 %i.id, %.not167.not
  %.sroa.01.0.i44.i.ph.mux = select i1 %i.id, i64 %.sroa.01.0.i44.i.ph, i64 0 ; 7 uses
  br i1 %brmerge197, label %.loopexit, label %infloop196

.loopexit:                                        ; preds = %.outer143
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.01.0.i44.i.ph.mux ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !1013, !noundef !13 ; 2 uses
  %.not.i47.i = icmp eq i16 %i.if, -1
  br i1 %.not.i47.i, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.cj
  unreachable

bb.br:                                            ; preds = %.loopexit
  %i.ig = zext i16 %i.if to i64                   ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !1013, !noundef !13 ; 2 uses
  %i.ij = and i16 %i.ii, %i.hn
  %i.ik = zext i16 %i.ij to i64
  %i.il = sub i64 %.sroa.01.0.i44.i.ph.mux, %i.ik
  %i.im = and i64 %i.il, %i.hu
  %i.in = icmp samesign ult i64 %i.im, %.sroa.09.0.i43.i.ph
  br i1 %i.in, label %bb.cw, label %bb.ce

bb.bs:                                            ; preds = %.loopexit
  %i.io = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.io)
  %.sroa.695.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.695.0.copyload.i.i = load ptr, ptr %.sroa.695.0..sroa_idx.i.i, align 8, !alias.scope !1012, !noalias !951 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.ip = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.ip, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1018
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %i.hl, ptr %i.ir, align 8, !noalias !1018
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.019.0.i, ptr %i.is, align 8, !noalias !1019
  %.sroa.680.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ic, ptr %.sroa.680.0..sroa_idx81.i.i, align 8, !noalias !1019
  %.sroa.884.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ib, ptr %.sroa.884.0..sroa_idx85.i.i, align 8, !noalias !1019
  %.sroa.1088.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %.sroa.695.0.copyload.i.i, ptr %.sroa.1088.0..sroa_idx89.i.i, align 8, !noalias !1019
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.it, align 8, !noalias !1020
  %.sroa.598.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.w, ptr %.sroa.598.0..sroa_idx99.i.i, align 8, !noalias !1020
  %.sroa.6101.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.y, ptr %.sroa.6101.0..sroa_idx102.i.i, align 8, !noalias !1020
  %.sroa.7104.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.7104.0..sroa_idx105.i.i, align 8, !noalias !1020
  store i64 0, ptr %i.c, align 8, !noalias !1018
  %i.iu = load i64, ptr %i.iq, align 8, !range !19, !alias.scope !1021, !noundef !13
  %i.iv = icmp eq i64 %i.hw, %i.iu
  br i1 %i.iv, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %._crit_edge165.i.i unwind label %bb.bv, !noalias !1022

._crit_edge165.i.i:                               ; preds = %bb.bu
  %.pre166.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !1021
  br label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.c) #27
          to label %.body.thread.i unwind label %bb.bw, !noalias !1023

bb.bw:                                            ; preds = %bb.bv
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1022
  unreachable

bb.bx:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !1024, !nonnull !13, !noundef !13
  invoke void %i.iz(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.by, !noalias !1025, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.bx
  br i1 %i.hz, label %bb.dp, label %.invoke.i

bb.by:                                            ; preds = %bb.bx
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !1026, !nonnull !13, !noundef !13
  invoke void %i.jc(ptr noundef %.sroa.695.0.copyload.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body.thread.i unwind label %bb.ca, !noalias !1025, !inline_history !3

bb.ca:                                            ; preds = %bb.bz
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1025
  unreachable

bb.cb:                                            ; preds = %._crit_edge165.i.i, %bb.bt
  %i.je = phi ptr [ %.pre166.i.i, %._crit_edge165.i.i ], [ %i.hy, %bb.bt ]
  %i.jf = getelementptr inbounds nuw [96 x i8], ptr %i.je, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !1023
  %i.jg = add nuw nsw i64 %i.hw, 1
  store i64 %i.jg, ptr %i.hv, align 8, !alias.scope !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1018
  %i.jh = load i64, ptr %i.hr, align 8, !alias.scope !1016, !noundef !13 ; 2 uses
  %i.ji = icmp ult i64 %.sroa.01.0.i44.i.ph.mux, %i.jh
  br i1 %i.ji, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jj = load ptr, ptr %i.hq, align 8, !alias.scope !1016, !nonnull !13, !noundef !13
  %i.jk = trunc nuw nsw i64 %i.hw to i16
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.sroa.01.0.i44.i.ph.mux ; 2 uses
  store i16 %i.jk, ptr %i.jl, align 2, !noalias !1013
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i16 %i.hl, ptr %i.jm, align 2, !noalias !1013
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i44.i.ph.mux, i64 noundef %i.jh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
          to label %.noexc95.i unwind label %.body.thread145.i, !noalias !952

.noexc95.i:                                       ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.br
  %i.jn = icmp eq i16 %i.ii, %i.hl
  br i1 %i.jn, label %bb.cf, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i49.i, %.split.i64.i, %bb.ci, %bb.cg, %bb.ce
  %i.jo = add nuw nsw i64 %.sroa.09.0.i43.i.ph, 1
  %i.jp = add i64 %.sroa.01.0.i44.i.ph.mux, 1
  br label %.outer143

bb.cf:                                            ; preds = %bb.ce
  %i.jq = icmp ugt i64 %i.hw, %i.ig
  br i1 %i.jq, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.jr = getelementptr inbounds nuw [96 x i8], ptr %i.hy, i64 %i.ig ; 10 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !1013, !noundef !13
  %i.ju = icmp ne ptr %i.jt, null                 ; 2 uses
  %i.jv = xor i1 %i.hz, %i.ju
  br i1 %i.jv, label %bb.ch, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.ju, label %bb.ci, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i49.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.0.i) ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !1013, !noundef !13
  %i.jy = icmp eq i64 %i.jx, %i.ib
  br i1 %i.jy, label %.split.i64.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i

.split.i64.i:                                     ; preds = %bb.ci
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !1013, !noundef !13
  %bcmp.i.i.i.i.i65.i = call i32 @bcmp(ptr %i.ka, ptr %i.ic, i64 %i.ib), !noalias !1013
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i65.i, 0
  br i1 %i.kb, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i

bb.cj:                                            ; preds = %bb.cf
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %bb.bq unwind label %bb.dl, !noalias !1013

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i49.i: ; preds = %bb.ch
  call void @llvm.assume(i1 %i.hz)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.kd = load i8, ptr %i.kc, align 8, !range !15, !noalias !1013, !noundef !13
  %i.ke = icmp eq i8 %i.kd, %.sroa.521.0.i
  br i1 %i.ke, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i48.i

bb.ck:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i49.i, %.split.i64.i
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.kg = load i64, ptr %i.jr, align 8, !range !14, !alias.scope !1027, !noalias !1013, !noundef !13
  %i.kh = trunc nuw i64 %i.kg to i1
  br i1 %i.kh, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !1027, !noalias !1013, !noundef !13 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !1029, !noundef !13 ; 7 uses
  %i.km = icmp ult i64 %i.kl, 144115188075855872
  call void @llvm.assume(i1 %i.km)
  %i.kn = load i64, ptr %i.kf, align 8, !range !19, !alias.scope !1030, !noundef !13
  %i.ko = icmp eq i64 %i.kl, %i.kn
  br i1 %i.ko, label %bb.cm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.cn, !noalias !1031

bb.cn:                                            ; preds = %bb.cm
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !1032, !nonnull !13, !noundef !13
  invoke void %i.kr(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.co, !noalias !1031, !inline_history !8

bb.co:                                            ; preds = %bb.cn
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1031
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.cm, %bb.cl
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !1030, !nonnull !13, !noundef !13
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.ku, i64 %i.kl ; 8 uses
  store i64 1, ptr %i.kv, align 8, !noalias !1033
  %.sroa.4.0..sroa_idx.i.i55.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.kj, ptr %.sroa.4.0..sroa_idx.i.i55.i, align 8, !noalias !1033
  %.sroa.5.0..sroa_idx10.i.i56.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i56.i, align 8, !noalias !1033
  %.sroa.6.0..sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store i64 %i.ig, ptr %.sroa.6.0..sroa_idx.i.i57.i, align 8, !noalias !1033
  %.sroa.7.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i.i58.i, align 8, !noalias !1033
  %.sroa.9.0..sroa_idx.i.i59.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx.i.i59.i, align 8, !noalias !1033
  %.sroa.10.0..sroa_idx.i.i60.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store i64 %i.y, ptr %.sroa.10.0..sroa_idx.i.i60.i, align 8, !noalias !1033
  %.sroa.11.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i61.i, align 8, !noalias !1033
  %i.kw = add nuw nsw i64 %i.kl, 1                ; 2 uses
  store i64 %i.kw, ptr %i.kk, align 8, !alias.scope !1030
  %.not.i.i62.i = icmp ugt i64 %i.kj, %i.kl
  br i1 %.not.i.i62.i, label %bb.cu, label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !1029, !noundef !13 ; 6 uses
  %i.kz = icmp ult i64 %i.ky, 144115188075855872
  call void @llvm.assume(i1 %i.kz)
  %i.la = load i64, ptr %i.kf, align 8, !range !19, !alias.scope !1034, !noundef !13
  %i.lb = icmp eq i64 %i.ky, %i.la
  br i1 %i.lb, label %bb.cq, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i unwind label %bb.cr, !noalias !1035

bb.cr:                                            ; preds = %bb.cq
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !1036, !nonnull !13, !noundef !13
  invoke void %i.le(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.cs, !noalias !1035, !inline_history !8

bb.cs:                                            ; preds = %bb.cr
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1035
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !1034, !nonnull !13, !noundef !13
  %i.li = getelementptr inbounds nuw [64 x i8], ptr %i.lh, i64 %i.ky ; 8 uses
  store i64 0, ptr %i.li, align 8, !noalias !1033
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %i.ig, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store i64 %i.ig, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.719.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.719.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  store ptr %i.w, ptr %.sroa.920.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.1021.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  store i64 %i.y, ptr %.sroa.1021.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.1122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.1122.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %i.lj = add nuw nsw i64 %i.ky, 1
  store i64 %i.lj, ptr %i.kx, align 8, !alias.scope !1034
  store i64 1, ptr %i.jr, align 8, !alias.scope !1027, !noalias !1013
  %.sroa.42.0..sroa_idx.i.i52.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 %i.ky, ptr %.sroa.42.0..sroa_idx.i.i52.i, align 8, !alias.scope !1027, !noalias !1013
  %.sroa.53.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 %i.ky, ptr %.sroa.53.0..sroa_idx.i.i53.i, align 8, !alias.scope !1027, !noalias !1013
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i

bb.ct:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.lk = load ptr, ptr %i.kt, align 8, !alias.scope !1029, !nonnull !13, !noundef !13
  %i.ll = getelementptr inbounds nuw [64 x i8], ptr %i.lk, i64 %i.kj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i64 1, ptr %i.lm, align 8, !noalias !1033
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i64 %i.kl, ptr %i.ln, align 8, !noalias !1033
  store i64 1, ptr %i.jr, align 8, !alias.scope !1027, !noalias !1013
  store i64 %i.kl, ptr %i.ki, align 8, !alias.scope !1027, !noalias !1013
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i

bb.cu:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kj, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
          to label %.noexc35.i63.i unwind label %bb.dj, !noalias !1013

.noexc35.i63.i:                                   ; preds = %bb.cu
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.ct, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  br i1 %i.hz, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !1043, !noalias !951, !noundef !13
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !1044, !nonnull !13, !noundef !13
  invoke void %i.lr(ptr noundef %i.lp, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i unwind label %.body.thread145.i, !noalias !952, !inline_history !844

bb.cw:                                            ; preds = %bb.br
  %i.ls = icmp samesign ugt i64 %.sroa.09.0.i43.i.ph, 511
  %i.lt = load i64, ptr %i.t, align 8, !range !20, !alias.scope !1016
  %i.lu = icmp ne i64 %i.lt, 2
  %.sroa.016.0.i66.i = select i1 %i.ls, i1 %i.lu, i1 false
  %.sroa.663.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.663.0.copyload.i68.i = load ptr, ptr %.sroa.663.0..sroa_idx.i67.i, align 8, !alias.scope !1012, !noalias !951 ; 3 uses
  %i.lv = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.lv)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.lw = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.lw, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1046
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.hl, ptr %i.ly, align 8, !noalias !1046
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.019.0.i, ptr %i.lz, align 8, !noalias !1047
  %.sroa.6.0..sroa_idx53.i76.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ic, ptr %.sroa.6.0..sroa_idx53.i76.i, align 8, !noalias !1047
  %.sroa.8.0..sroa_idx56.i77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ib, ptr %.sroa.8.0..sroa_idx56.i77.i, align 8, !noalias !1047
  %.sroa.10.0..sroa_idx59.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.663.0.copyload.i68.i, ptr %.sroa.10.0..sroa_idx59.i78.i, align 8, !noalias !1047
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ma, align 8, !noalias !1048
  %.sroa.566.0..sroa_idx67.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.w, ptr %.sroa.566.0..sroa_idx67.i79.i, align 8, !noalias !1048
  %.sroa.669.0..sroa_idx70.i80.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.y, ptr %.sroa.669.0..sroa_idx70.i80.i, align 8, !noalias !1048
  %.sroa.7.0..sroa_idx72.i81.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.7.0..sroa_idx72.i81.i, align 8, !noalias !1048
  store i64 0, ptr %i.b, align 8, !noalias !1046
  %i.mb = load i64, ptr %i.lx, align 8, !range !19, !alias.scope !1049, !noundef !13
  %i.mc = icmp eq i64 %i.hw, %i.mb
  br i1 %i.mc, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lx)
          to label %._crit_edge.i92.i unwind label %bb.cz, !noalias !1050

._crit_edge.i92.i:                                ; preds = %bb.cy
  %.pre.i93.i = load ptr, ptr %i.hx, align 8, !alias.scope !1049
  br label %bb.df

bb.cz:                                            ; preds = %bb.cy
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.b) #27
          to label %.body.thread.i unwind label %bb.da, !noalias !1051

bb.da:                                            ; preds = %bb.cz
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1050
  unreachable

bb.db:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !1052, !nonnull !13, !noundef !13
  invoke void %i.mg(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i unwind label %bb.dc, !noalias !1053, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i: ; preds = %bb.db
  br i1 %i.hz, label %bb.dp, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body.thread.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !1054, !nonnull !13, !noundef !13
  invoke void %i.mj(ptr noundef %.sroa.663.0.copyload.i68.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body.thread.i unwind label %bb.de, !noalias !1053, !inline_history !3

bb.de:                                            ; preds = %bb.dd
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1053
  unreachable

bb.df:                                            ; preds = %._crit_edge.i92.i, %bb.cx
  %i.ml = phi ptr [ %.pre.i93.i, %._crit_edge.i92.i ], [ %i.hy, %bb.cx ]
  %i.mm = getelementptr inbounds nuw [96 x i8], ptr %i.ml, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.mm, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !1051
  %i.mn = add nuw nsw i64 %i.hw, 1
  store i64 %i.mn, ptr %i.hv, align 8, !alias.scope !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1046
  %i.mo = load ptr, ptr %i.hq, align 8, !alias.scope !1055, !nonnull !13, !noundef !13
  %i.mp = load i64, ptr %i.hr, align 8, !alias.scope !1055, !noundef !13 ; 2 uses
  %i.mq = trunc nuw nsw i64 %i.hw to i16
  %.not168 = icmp eq i64 %i.mp, 0
  br label %.outer140

.outer140:                                        ; preds = %bb.dg, %bb.df
  %.sroa.6.0.i.i82.i.ph = phi i16 [ %i.mx, %bb.dg ], [ %i.hl, %bb.df ] ; 2 uses
  %.sroa.09.0.i.i83.i.ph = phi i16 [ %i.mt, %bb.dg ], [ %i.mq, %bb.df ] ; 2 uses
  %.sroa.07.0.i.i84.i.ph = phi i64 [ %i.mw, %bb.dg ], [ 0, %bb.df ] ; 2 uses
  %.sroa.0.0.i.i85.i.ph = phi i64 [ %i.my, %bb.dg ], [ %.sroa.01.0.i44.i.ph.mux, %bb.df ] ; 2 uses
  %i.mr = icmp ult i64 %.sroa.0.0.i.i85.i.ph, %i.mp ; 2 uses
  %.not168.not = xor i1 %.not168, true
  %brmerge199 = or i1 %i.mr, %.not168.not
  %.sroa.0.0.i.i85.i.ph.mux = select i1 %i.mr, i64 %.sroa.0.0.i.i85.i.ph, i64 0 ; 2 uses
  br i1 %brmerge199, label %.loopexit158, label %infloop198

.loopexit158:                                     ; preds = %.outer140
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %.sroa.0.0.i.i85.i.ph.mux ; 4 uses
  %i.mt = load i16, ptr %i.ms, align 2, !noalias !1056, !noundef !13 ; 2 uses
  %i.mu = icmp eq i16 %i.mt, -1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 2 ; 3 uses
  br i1 %i.mu, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.loopexit158
  %i.mw = add i64 %.sroa.07.0.i.i84.i.ph, 1
  %i.mx = load i16, ptr %i.mv, align 2, !noalias !1056, !noundef !13
  store i16 %.sroa.09.0.i.i83.i.ph, ptr %i.ms, align 2, !noalias !1056
  store i16 %.sroa.6.0.i.i82.i.ph, ptr %i.mv, align 2, !noalias !1056
  %i.my = add nuw i64 %.sroa.0.0.i.i85.i.ph.mux, 1
  br label %.outer140

bb.dh:                                            ; preds = %.loopexit158
  store i16 %.sroa.09.0.i.i83.i.ph, ptr %i.ms, align 2, !noalias !1056
  store i16 %.sroa.6.0.i.i82.i.ph, ptr %i.mv, align 2, !noalias !1056
  %i.mz = icmp ugt i64 %.sroa.07.0.i.i84.i.ph, 127
  %or.cond.i.i90.i = select i1 %.sroa.016.0.i66.i, i1 true, i1 %i.mz
  %i.na = load i64, ptr %i.t, align 8, !range !20, !alias.scope !1055
  %i.nb = icmp eq i64 %i.na, 0
  %or.cond3.i.i91.i = select i1 %or.cond.i.i90.i, i1 %i.nb, i1 false
  br i1 %or.cond3.i.i91.i, label %bb.di, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.di:                                            ; preds = %bb.dh
  store i64 1, ptr %i.t, align 8, !alias.scope !1055
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.dj:                                            ; preds = %bb.cu, %bb.bo
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i41.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.bo
  %i.nd = icmp eq ptr %.sroa.019.0.i, null
  br i1 %i.nd, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !1057, !noalias !951, !noundef !13
  %i.ng = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !1057, !noalias !951, !noundef !13
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !1057, !noalias !951, !noundef !13
  br label %.invoke.i

.invoke.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.dk
  %i.nj = phi ptr [ %i.nf, %bb.dk ], [ %.sroa.695.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %.sroa.663.0.copyload.i68.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.nk = phi ptr [ %i.ng, %bb.dk ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.nl = phi i64 [ %i.ni, %bb.dk ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.nm = load ptr, ptr %.in.i, align 8, !noalias !1013, !nonnull !13, !noundef !13
  invoke void %i.nm(ptr noundef %i.nj, ptr noundef %i.nk, i64 noundef %i.nl)
          to label %bb.dp unwind label %.body.thread145.i, !noalias !952, !inline_history !844

bb.dl:                                            ; preds = %bb.cj, %bb.bm
  %lpad.thr_comm.i40.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !1058, !nonnull !13, !noundef !13
  invoke void %i.no(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.dm, !noalias !1013, !inline_history !2

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1013
  unreachable

.thread.i41.i:                                    ; preds = %bb.dl, %bb.dj, %bb.cr, %bb.cn
  %.pn121.i.i = phi { ptr, i32 } [ %i.kp, %bb.cn ], [ %lpad.thr_comm.i40.i, %bb.dl ], [ %i.lc, %bb.cr ], [ %i.nc, %bb.dj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.nq = icmp eq ptr %.sroa.019.0.i, null
  br i1 %i.nq, label %.body.thread.i, label %bb.dn

bb.dn:                                            ; preds = %.thread.i41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !alias.scope !1065, !noalias !951, !noundef !13
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !noalias !1066, !nonnull !13, !noundef !13
  %i.nv = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !1065, !noalias !951, !noundef !13
  %i.nw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !1065, !noalias !951, !noundef !13
  invoke void %i.nu(ptr noundef %i.ns, ptr noundef %i.nv, i64 noundef %i.nx)
          to label %.body.thread.i unwind label %bb.dm, !noalias !1013, !inline_history !3

.body.thread145.i:                                ; preds = %bb.dp, %.invoke.i, %bb.cv, %bb.cd, %bb.bk
  %.sroa.011.2.ph.i = phi i8 [ 0, %.invoke.i ], [ 0, %bb.cv ], [ 0, %bb.cd ], [ 0, %bb.dp ], [ 1, %bb.bk ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.i:                                          ; preds = %bb.dq, %bb.ar, %bb.z, %.invoke248.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i

bb.do:                                            ; preds = %bb.bk
  %.sroa.028.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !951
end_hunk_1
