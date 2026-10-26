Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.01?download=true
inline.NumInlined: 338
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNvXsw_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtB8_28SenderKeyDistributionMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1u_3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_13SignalMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s0_13ScalarWrapperB1i_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXse_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_19PreKeySignalMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s0_13ScalarWrapperB1o_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXsn_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_16SenderKeyMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s0_13ScalarWrapperB1l_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXsw_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_28SenderKeyDistributionMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s0_13ScalarWrapperB1x_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state6bundleNtB5_12PreKeyBundleINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB5_19PreKeyBundleContentE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5291 = alloca [32 x i8], align 1         ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6166 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.6159 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.6146.sroa.7 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.6140.sroa.7 = alloca [16 x i8], align 8  ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [33 x i8], align 1                ; 4 uses
  %i.m = alloca [40 x i8], align 4                ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !range !7, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = load i32, ptr %i.p, align 4
  %i.r = trunc nuw i32 %i.o to i1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.t = load i8, ptr %i.s, align 1, !noundef !4  ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !642
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.bj

.noexc:                                           ; preds = %bb.c
  %i.u = load i64, ptr %i.f, align 8, !range !8, !noalias !642, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noalias !642, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f, !prof !10

bb.d:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8, !noalias !642
  br label %.invoke

bb.e:                                             ; preds = %bb.ad, %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread

.split:                                           ; preds = %bb.am
  %lpad.thr_comm.split-lp467 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ck, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366, label %.thread.thread

bb.f:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !642, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.x, 26
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aa, ptr noundef nonnull align 1 dereferenceable(27) @24, i64 27, i1 false), !noalias !642
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ac, align 8
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.4190.0..sroa_idx, align 8
  %.sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %.sroa.5191.sroa.4.0..sroa.5191.0..sroa_idx.sroa_idx, align 8
  %.sroa.5191.sroa.5.0..sroa.5191.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 27, ptr %.sroa.5191.sroa.5.0..sroa.5191.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.t, %bb.f
  %i.ad = load i64, ptr %1, align 8, !range !5, !alias.scope !643, !noundef !4
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.y

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !range !7, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.l, ptr noundef nonnull align 8 dereferenceable(33) %i.al, i64 33, i1 false)
  invoke void @_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state6prekey8PreKeyIdE3zipNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyEBO_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 4 captures(none) dereferenceable(40) %i.m, i32 noundef %i.ai, i32 %i.ak, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(33) %i.l)
          to label %bb.o unwind label %bb.bj

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !644
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 21, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc338 unwind label %bb.bj

.noexc338:                                        ; preds = %bb.l
  %i.am = load i64, ptr %i.e, align 8, !range !8, !noalias !644, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !9, !noalias !644, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %.noexc338
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !644
  br label %.invoke

bb.n:                                             ; preds = %.noexc338
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !644, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 20
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !644
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.as, ptr noundef nonnull align 1 dereferenceable(21) @32, i64 21, i1 false), !noalias !644
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.au, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.sroa.4.0..sroa.5200.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.as, ptr %.sroa.5200.sroa.4.0..sroa.5200.0..sroa_idx.sroa_idx, align 8
  %.sroa.5200.sroa.5.0..sroa.5200.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 21, ptr %.sroa.5200.sroa.5.0..sroa.5200.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !range !7, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = trunc nuw i32 %i.aw to i1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 129
  %.sroa.068.0.copyload = load i8, ptr %i.ba, align 1
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 130
  %.sroa.569.sroa.0.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 2
  %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 138
  %.sroa.569.sroa.5.0.copyload = load ptr, ptr %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx, align 2
  %.sroa.569.sroa.6.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.bb = load <2 x i64>, ptr %.sroa.569.sroa.6.0..sroa.569.0..sroa_idx.sroa_idx, align 2
  %i.bc = trunc nuw i8 %.sroa.068.0.copyload to i1
  br i1 %i.bc, label %bb.u, label %bb.v

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !645
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 29, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc342 unwind label %bb.bj

.noexc342:                                        ; preds = %bb.q
  %i.bd = load i64, ptr %i.d, align 8, !range !8, !noalias !645, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !9, !noalias !645, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s, !prof !10

bb.r:                                             ; preds = %.noexc342
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !645
  br label %.invoke

bb.s:                                             ; preds = %.noexc342
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !645, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 28
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !645
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bj, ptr noundef nonnull align 1 dereferenceable(29) @25, i64 29, i1 false), !noalias !645
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %.sink467 = phi i64 [ %i.bp, %bb.x ], [ %i.bg, %bb.s ]
  %.sink466 = phi ptr [ %i.bu, %bb.x ], [ %i.bj, %bb.s ]
  %.sink = phi i64 [ 33, %bb.x ], [ 29, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.bl, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink467, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink466, ptr %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.g

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.083.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not314 = icmp eq i64 %.sroa.083.0.copyload, -1
  br i1 %.not314, label %bb.ad, label %bb.ac

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !646
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 33, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc346 unwind label %bb.bj

.noexc346:                                        ; preds = %bb.v
  %i.bm = load i64, ptr %i.c, align 8, !range !8, !noalias !646, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !9, !noalias !646, !noundef !4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %.noexc346
  %i.br = load i64, ptr %i.bq, align 8, !noalias !646
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.m, %bb.r, %bb.w
  %i.bs = phi i64 [ %i.bp, %bb.w ], [ %i.bg, %bb.r ], [ %i.ap, %bb.m ], [ %i.x, %bb.d ]
  %i.bt = phi i64 [ %i.br, %bb.w ], [ %i.bi, %bb.r ], [ %i.ar, %bb.m ], [ %i.z, %bb.d ]
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bt) #26
          to label %.cont unwind label %bb.bj

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %.noexc346
  %i.bu = load ptr, ptr %i.bq, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  %i.bv = icmp samesign ugt i64 %i.bp, 32
  tail call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !646
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.bu, ptr noundef nonnull align 1 dereferenceable(33) @26, i64 33, i1 false), !noalias !646
  br label %bb.t

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.y ], [ %i.af, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val330 = load ptr, ptr %i.bx, align 8, !noundef !4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val331 = load i64, ptr %i.by, align 8         ; 2 uses
  %i.bz = icmp eq ptr %.val330, null
  %i.ca = icmp eq i64 %.val331, 0
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread, label %bb.z

bb.z:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val330) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val330, i64 noundef range(i64 1, 0) %.val331, i64 noundef 1) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.af
  %.sroa.0176.2 = phi i8 [ %.sroa.0176.6, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ 1, %bb.af ], [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i ], [ 1, %bb.g ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val332 = load ptr, ptr %i.cb, align 8, !noundef !4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val333 = load i64, ptr %i.cc, align 8         ; 2 uses
  %i.cd = icmp eq ptr %.val332, null
  %i.ce = icmp eq i64 %.val333, 0
  %or.cond.i348 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.i348, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val332) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val332, i64 noundef range(i64 1, 0) %.val333, i64 noundef 1) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349

bb.ab:                                            ; preds = %bb.bl, %bb.bj, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread, %bb.bb, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ac:                                            ; preds = %bb.u
  %.sroa.685.sroa.5.0..sroa.685.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.685.sroa.5.0.copyload = load i64, ptr %.sroa.685.sroa.5.0..sroa.685.0..sroa_idx.sroa_idx, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.685.sroa.0.0.copyload = load ptr, ptr %.sroa.685.0..sroa_idx, align 8
  store i64 %.sroa.083.0.copyload, ptr %i.k, align 8
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.685.sroa.0.0.copyload, ptr %.sroa.4228.0..sroa_idx, align 8
  %.sroa.4228.sroa.4.0..sroa.4228.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.685.sroa.5.0.copyload, ptr %.sroa.4228.sroa.4.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !range !7, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = trunc nuw i32 %i.ch to i1               ; 5 uses
  br i1 %i.ck, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !647
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc352 unwind label %bb.e

.noexc352:                                        ; preds = %bb.ad
  %i.cl = load i64, ptr %i.b, align 8, !range !8, !noalias !647, !noundef !4
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !9, !noalias !647, !noundef !4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %.noexc352
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !647
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #26
          to label %.noexc353 unwind label %bb.e

.noexc353:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %.noexc352
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !647, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = icmp samesign ugt i64 %i.co, 35
  tail call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !647
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.cr, ptr noundef nonnull align 1 dereferenceable(36) @27, i64 36, i1 false), !noalias !647
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ct, align 8
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %.sroa.4238.0..sroa_idx, align 8
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cr, ptr %.sroa.5239.0..sroa_idx, align 8
  %.sroa.5239.sroa.4.0..sroa.5239.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 36, ptr %.sroa.5239.sroa.4.0..sroa.5239.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.ag:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !noundef !4 ; 4 uses
  %.not315 = icmp eq ptr %i.cv, null
  br i1 %.not315, label %bb.ap, label %bb.ao

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !648
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc356 unwind label %bb.aj

.noexc356:                                        ; preds = %bb.ah
  %i.cw = load i64, ptr %i.a, align 8, !range !8, !noalias !648, !noundef !4
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !9, !noalias !648, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.ai, label %bb.ak, !prof !10

bb.ai:                                            ; preds = %.noexc356
  %i.db = load i64, ptr %i.da, align 8, !noalias !648
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.cz, i64 %i.db) #26
          to label %.noexc357 unwind label %bb.aj

.noexc357:                                        ; preds = %bb.ai
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit: ; preds = %bb.au, %bb.at, %bb.aj
  %.sroa.0176.4 = phi i8 [ 1, %bb.aj ], [ 0, %bb.at ], [ 0, %bb.au ]
  %.sroa.0179.2 = phi i1 [ %.sroa.0179.3, %bb.aj ], [ false, %bb.at ], [ false, %bb.au ]
  %.pn318 = phi { ptr, i32 } [ %2, %bb.aj ], [ %.pn, %bb.at ], [ %.pn, %bb.au ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.thread unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ap
  %2 = landingpad { ptr, i32 }
          cleanup
  %.sroa.0179.3 = xor i1 %i.ck, true
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit

bb.ak:                                            ; preds = %.noexc356
  %i.dc = load ptr, ptr %i.da, align 8, !noalias !648, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = icmp samesign ugt i64 %i.cz, 27
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.dc, ptr noundef nonnull align 1 dereferenceable(28) @28, i64 28, i1 false), !noalias !648
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.de, align 8
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %.sroa.4248.0..sroa_idx, align 8
  %.sroa.5249.sroa.4.0..sroa.5249.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dc, ptr %.sroa.5249.sroa.4.0..sroa.5249.0..sroa_idx.sroa_idx, align 8
  %.sroa.5249.sroa.5.0..sroa.5249.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 28, ptr %.sroa.5249.sroa.5.0..sroa.5249.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361: ; preds = %bb.aq, %bb.ax, %bb.ay, %bb.ak
  %.sroa.0176.6 = phi i8 [ 1, %bb.ak ], [ 1, %bb.aq ], [ 0, %bb.ax ], [ 0, %bb.ay ] ; 5 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361
  %i.df = landingpad { ptr, i32 }
          cleanup
  %.sroa.0179.4 = xor i1 %i.ck, true
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.an

bb.am:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %.split

bb.an:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ao:                                            ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = load i64, ptr %i.dh, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6146.sroa.7)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0150.0.copyload = load i64, ptr %i.dj, align 8 ; 2 uses
  %.not316 = icmp eq i64 %.sroa.0150.0.copyload, -1
  br i1 %.not316, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state6bundleNtB7_12PreKeyBundleINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB7_19PreKeyBundleContentE8try_froms4_0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.i)
          to label %bb.aq unwind label %bb.aj

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0120.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6122.0.copyload = load ptr, ptr %.sroa.6122.0..sroa_idx, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.8125.0.copyload = load i64, ptr %.sroa.8125.0..sroa_idx, align 8
  %.sroa.10128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6265.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10128.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0120.0.copyload, ptr %i.dk, align 8
  %.sroa.4263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6122.0.copyload, ptr %.sroa.4263.0..sroa_idx, align 8
  %.sroa.5264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8125.0.copyload, ptr %.sroa.5264.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361

bb.ar:                                            ; preds = %bb.ao
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7)
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4271.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6152.0..sroa_idx, i64 16, i1 false)
  store i64 %.sroa.0150.0.copyload, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6159)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6166)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 162
  %.sroa.0171.0.copyload = load i8, ptr %i.dl, align 2
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.dm = trunc nuw i8 %.sroa.0171.0.copyload to i1
  br i1 %i.dm, label %bb.az, label %bb.ba

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state6bundleNtB7_12PreKeyBundleINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB7_19PreKeyBundleContentE8try_froms5_0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h)
          to label %bb.aw unwind label %bb.av

bb.at:                                            ; preds = %bb.bb, %bb.av
  %.pn = phi { ptr, i32 } [ %i.do, %bb.av ], [ %i.du, %bb.bb ] ; 2 uses
  %i.dn = icmp eq i64 %i.di, 0
  br i1 %i.dn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef range(i64 1, 0) %i.di, i64 noundef 1) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit

bb.av:                                            ; preds = %bb.bc, %bb.as
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aw:                                            ; preds = %bb.as
  %.sroa.6146.sroa.7.0..sroa.6146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6146.sroa.7.0..sroa.6146.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.8148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6283.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8148.0..sroa_idx, i64 16, i1 false)
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load <2 x i64>, ptr %i.h, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6140.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5282.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6140.sroa.7, i64 16, i1 false)
  store <2 x i64> %i.dq, ptr %i.dp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bc, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dr = icmp eq i64 %i.di, 0
  br i1 %i.dr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef range(i64 1, 0) %i.di, i64 noundef 1) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit361

bb.az:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6166)
  %i.ds = load i32, ptr %i.m, align 4, !range !7, !noundef !4
  %i.dt = trunc nuw i32 %i.ds to i1
  br i1 %i.dt, label %bb.bh, label %bb.bi

bb.ba:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state6bundleNtB7_12PreKeyBundleINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtB7_19PreKeyBundleContentE8try_froms6_0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.g)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %bb.at unwind label %bb.ab

bb.bc:                                            ; preds = %bb.ba
  %.sroa.0164.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6166, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6166.0..sroa_idx, i64 32, i1 false)
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.8168.0.copyload = load i64, ptr %.sroa.8168.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6159, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6166, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6166)
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4310.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6159, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0164.0.copyload, ptr %i.dv, align 8
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8168.0.copyload, ptr %.sroa.5311.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6159)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.ax unwind label %bb.av

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.ck, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349: ; preds = %bb.aa, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.0176.8 = phi i8 [ %.sroa.0176.6, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.sroa.0176.2, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.sroa.0176.2, %bb.aa ]
  %i.dw = trunc nuw i8 %.sroa.0176.8 to i1
  br i1 %i.dw, label %bb.bd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit364

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit364: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i363, %bb.bd, %bb.bi, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349
  ret void

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit349
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.dy = load i64, ptr %i.dx, align 8, !range !5, !alias.scope !649, !noundef !4
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit364, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i363 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366, %bb.bl, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.ea, %bb.bf ], [ %eh.lpad-body, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread ], [ %.pn320440460, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366 ], [ %.pn320440460, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i363: ; preds = %bb.be
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit364

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit.thread: ; preds = %bb.z, %.body
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ec) #21
          to label %common.resume unwind label %bb.ab

bb.bh:                                            ; preds = %bb.az
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5291, ptr noundef nonnull align 4 dereferenceable(32) %i.ef, i64 32, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.az, %bb.bh
  %.sroa.0290.0 = phi i8 [ 1, %bb.bh ], [ 0, %bb.az ]
  %.sroa.0292.0 = phi i32 [ 1, %bb.bh ], [ 0, %bb.az ]
  %.sroa.5293.0 = phi i32 [ %i.ee, %bb.bh ], [ undef, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %.sroa.6304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6304.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5172.0..sroa_idx, i64 32, i1 false)
  %.sroa.0301.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.569.sroa.0.0.copyload, ptr %.sroa.0301.sroa.4.0..sroa_idx, align 8
  %.sroa.0301.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.569.sroa.5.0.copyload, ptr %.sroa.0301.sroa.5.0..sroa_idx, align 8
  %.sroa.0301.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.bb, ptr %.sroa.0301.sroa.6.0..sroa_idx, align 8
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ay, ptr %.sroa.4302.0..sroa_idx, align 8
  %.sroa.7305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cv, ptr %.sroa.7305.0..sroa_idx, align 8
  %.sroa.8306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.di, ptr %.sroa.8306.0..sroa_idx, align 8
  %.sroa.9307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.cj, ptr %.sroa.9307.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.sroa.0292.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.sroa.5293.0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.q, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %.sroa.0290.0, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5291, i64 32, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %i.t, ptr %.sroa.17.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6159)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit364

.thread:                                          ; preds = %bb.al, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit
  %.pn320440 = phi { ptr, i32 } [ %.pn318, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit ], [ %i.df, %bb.al ] ; 2 uses
  %.sroa.0179.0439 = phi i1 [ %.sroa.0179.2, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit ], [ %.sroa.0179.4, %bb.al ]
  %.sroa.0176.0438 = phi i8 [ %.sroa.0176.4, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit ], [ %.sroa.0176.6, %bb.al ] ; 2 uses
  br i1 %.sroa.0179.0439, label %.thread.thread, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366

bb.bj:                                            ; preds = %.invoke, %bb.k, %bb.c, %bb.l, %bb.q, %bb.v
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #21
          to label %.thread.thread unwind label %bb.ab

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366: ; preds = %.split, %bb.bk, %.thread.thread, %.thread
  %.sroa.0176.0438462 = phi i8 [ %.sroa.0176.0438, %.thread ], [ %.sroa.0176.0438463, %.thread.thread ], [ %.sroa.0176.0438463, %bb.bk ], [ %.sroa.0176.6, %.split ]
  %.pn320440460 = phi { ptr, i32 } [ %.pn320440, %.thread ], [ %.pn320440461, %.thread.thread ], [ %.pn320440461, %bb.bk ], [ %lpad.thr_comm.split-lp467, %.split ] ; 2 uses
  %i.eg = trunc nuw i8 %.sroa.0176.0438462 to i1
  br i1 %i.eg, label %bb.bl, label %common.resume

.thread.thread:                                   ; preds = %bb.e, %.split, %bb.bj, %.thread
  %.sroa.0176.0438463 = phi i8 [ %.sroa.0176.0438, %.thread ], [ 1, %bb.bj ], [ %.sroa.0176.6, %.split ], [ 1, %bb.e ] ; 2 uses
  %.pn320440461 = phi { ptr, i32 } [ %.pn320440, %.thread ], [ %lpad.thr_comm, %bb.bj ], [ %lpad.thr_comm.split-lp467, %.split ], [ %lpad.thr_comm.split-lp, %bb.e ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val328 = load ptr, ptr %i.eh, align 8, !noundef !4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val329 = load i64, ptr %i.ei, align 8         ; 2 uses
  %i.ej = icmp eq ptr %.val328, null
  %i.ek = icmp eq i64 %.val329, 0
  %or.cond.i365 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.i365, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366, label %bb.bk

bb.bk:                                            ; preds = %.thread.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val328) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val328, i64 noundef range(i64 1, 0) %.val329, i64 noundef 1) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366

bb.bl:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtB10_6PublicEEEB12_.exit366
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.el) #21
          to label %common.resume unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_13SignalMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s1_13ScalarWrapperB1i_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXse_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_19PreKeySignalMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s1_13ScalarWrapperB1o_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXsn_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_16SenderKeyMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s1_13ScalarWrapperB1l_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXsw_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_28SenderKeyDistributionMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s1_13ScalarWrapperB1x_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !653
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !653
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  store ptr %i.b, ptr %i.a, align 8, !noalias !657
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtB6_7Display3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsm_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB5_15ProtocolAddressNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto4wireNtBb_13SignalMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s2_13ScalarWrapperB1i_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
end_hunk_0
