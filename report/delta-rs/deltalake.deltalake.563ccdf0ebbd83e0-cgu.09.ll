Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.09?download=true
inline.NumInlined: 7580
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler31___pymethod_open_output_stream__:bb.a
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit82.i ], [ %i.es, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit77.i ] ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bj unwind label %.body25

bb.bc:                                            ; preds = %bb.aw
  %.sroa.5.8.copyload31 = load i64, ptr %i.g, align 8, !noalias !11462
  %.sroa.933.8..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.933, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.933.8..sroa_idx34, i64 48, i1 false), !noalias !11462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.8.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.bc
  %.sroa.5.1 = phi i64 [ %.sroa.5.8.copyload31, %bb.bc ], [ %.sroa.5.8.copyload32, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11446
  %i.fa = load ptr, ptr %i.r, align 8, !alias.scope !11465, !noundef !22
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit82.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit82.i unwind label %bb.az, !noalias !11452

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11446
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.be, !noalias !11448

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.bf, !noalias !11448

bb.bf:                                            ; preds = %bb.be
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11448
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.y, !noalias !11448

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit82.i: ; preds = %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit88.i unwind label %bb.bg, !noalias !11464

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit82.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body unwind label %bb.bh, !noalias !11464

bb.bh:                                            ; preds = %bb.bg
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11464
  unreachable

bb.bi:                                            ; preds = %.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ak, %bb.s
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11464
  unreachable

.thread.i:                                        ; preds = %.thread99.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aq, %bb.an, %bb.ak
  %.pn92.i = phi { ptr, i32 } [ %i.ef, %bb.an ], [ %i.eh, %bb.aq ], [ %i.eb, %bb.ak ], [ %lpad.loopexit.split-lp93, %.thread99.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.p) #38
          to label %.body.i unwind label %bb.bi, !noalias !11448

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fh = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %i.fh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1040, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.933, i64 48, i1 false)
  %i.fi = inttoptr i64 %.sroa.5.0 to ptr
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i64 %.sroa.0.0, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.933.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.933, i64 72, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11466
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamE19create_class_objectB15_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.q)
          to label %.noexc28 unwind label %.body25

.noexc28:                                         ; preds = %bb.bl
  %i.fj = load i64, ptr %i.b, align 8, !range !21, !noalias !11466, !noundef !22
  %i.fk = trunc nuw i64 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.537.8.copyload39 = load ptr, ptr %i.fl, align 8, !noalias !11467 ; 2 uses
  br i1 %i.fk, label %.thread, label %bb.bn

.thread:                                          ; preds = %.noexc28
  %.sroa.1040.8..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1040, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1040.8..sroa_idx42, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11466
  br label %bb.bm

bb.bm:                                            ; preds = %.thread, %bb.bk
  %.sroa.537.0 = phi ptr [ %i.fi, %bb.bk ], [ %.sroa.537.8.copyload39, %.thread ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.537.0, ptr %i.fm, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1040, i64 48, i1 false)
  br label %bb.bo

bb.bn:                                            ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11466
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.537.8.copyload39, ptr %i.fn, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %storemerge = phi i64 [ 0, %bb.bn ], [ 1, %bb.bm ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.fo = load ptr, ptr %i.w, align 8, !alias.scope !11468, !noundef !22
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit29, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit29

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit29: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bt

bb.br:                                            ; preds = %bb.j
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #38
          to label %.body unwind label %bb.bs

bb.bs:                                            ; preds = %bb.d, %bb.br
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.f
  %i.fs = load ptr, ptr %i.w, align 8, !alias.scope !11469, !noundef !22
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit30, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit30: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11489 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [96 x i8], align 16               ; 12 uses
  %.sroa.12.i = alloca [16 x i8], align 16        ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [64 x i8], align 8                ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 17 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [72 x i8], align 8                ; 26 uses
  %i.s = alloca [48 x i8], align 8                ; 17 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [64 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 9 uses
  %i.x = alloca [64 x i8], align 8                ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.10.sroa.6 = alloca [32 x i8], align 8    ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [64 x i8], align 8               ; 4 uses
  %i.ab = alloca [64 x i8], align 8               ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 16 uses
  %i.ae = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.21 = alloca [32 x i8], align 8           ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 11 uses
  %i.ag = alloca [64 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @363, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.ah, i64 noundef 3)
  %i.aj = load i64, ptr %i.ag, align 8, !range !21, !noundef !22
  %i.ak = trunc nuw i64 %i.aj to i1
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sink.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 1, ptr %0, align 8
  br label %bb.cu

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr null, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef align 8 dereferenceable(8) %i.af)
          to label %bb.e unwind label %.body

.body36:                                          ; preds = %bb.cw, %bb.cl, %bb.bt, %bb.o, %.body, %bb.cy
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.thr_comm, %bb.cy ], [ %i.gk, %bb.cw ], [ %.pn254.i, %bb.o ], [ %i.fz, %bb.cl ], [ %i.fi, %bb.bt ]
  %i.an = load ptr, ptr %i.af, align 8, !alias.scope !11490, !noundef !22
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.d

bb.d:                                             ; preds = %.body36
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.cz

bb.e:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.ae, align 8, !range !21, !noundef !22
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.021.0.copyload = load ptr, ptr %i.ar, align 8 ; 3 uses
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.021.0.copyload, ptr %i.as, align 8
  store i64 1, ptr %0, align 8
  br label %bb.da

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @359, i64 noundef 8)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.ac, align 8, !range !21, !noundef !22
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !22
  %.not27 = icmp eq ptr %i.ay, null
  %.30 = select i1 %.not27, ptr null, ptr %i.ax
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.30, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 15, ptr noundef nonnull @_RNvYNCNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtBa_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.k unwind label %bb.cy

.body:                                            ; preds = %bb.c, %bb.g, %bb.cp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body36

bb.k:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.ab, align 8, !range !26, !noundef !22
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.cv, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !26, !noundef !22
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !22
  %.not28 = icmp eq ptr %i.bf, null
  %.31 = select i1 %.not28, ptr null, ptr %i.be
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.31, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 9, ptr noundef nonnull @_RNvYNCNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtBa_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.m unwind label %bb.cy

bb.m:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.aa, align 8, !range !26, !noundef !22
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.cv, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !range !26, !noundef !22
  %i.bk = getelementptr i8, ptr %.sroa.021.0.copyload, i64 136
  %.val = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bl = getelementptr i8, ptr %.sroa.021.0.copyload, i64 144
  %.val32 = load ptr, ptr %i.bl, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11491)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11492
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 10)
          to label %bb.q unwind label %bb.p, !noalias !11492

bb.o:                                             ; preds = %bb.t, %bb.p
  %.pn254.i = phi { ptr, i32 } [ %i.bm, %bb.p ], [ %.pn252.i, %bb.t ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #38
          to label %.body36 unwind label %bb.ca, !noalias !11493

bb.p:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.bn = load i64, ptr %i.x, align 8, !range !21, !noalias !11492, !noundef !22
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0146.0.copyload.i = load ptr, ptr %i.bp, align 8, !noalias !11492 ; 2 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.15.16.copyload50 = load ptr, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !11491
  %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.19.16.copyload57 = load i64, ptr %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx, align 8, !noalias !11491
  %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11492
  %i.bq = ptrtoint ptr %.sroa.0146.0.copyload.i to i64
  br label %bb.ck

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11492
  store ptr %.sroa.0146.0.copyload.i, ptr %i.y, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11492
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 8)
          to label %bb.v unwind label %bb.u, !noalias !11492

bb.t:                                             ; preds = %.body.i, %bb.u
  %.pn252.i = phi { ptr, i32 } [ %i.br, %bb.u ], [ %.pn250.i, %.body.i ]
  %.val259.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val259.i) #41, !noalias !11492
  br label %bb.o

bb.u:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.bs = load i64, ptr %i.v, align 8, !range !21, !noalias !11492, !noundef !22
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0152.0.copyload.i = load ptr, ptr %i.bu, align 8, !noalias !11492 ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.15.16.copyload = load ptr, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !11491
  %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.19.16.copyload = load i64, ptr %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx, align 8, !noalias !11491
  %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11492
  %i.bv = ptrtoint ptr %.sroa.0152.0.copyload.i to i64
  br label %bb.ch

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11492
  store ptr %.sroa.0152.0.copyload.i, ptr %i.w, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11492
  store ptr %i.y, ptr %i.u, align 8, !noalias !11492
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.a, ptr %i.bw, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11492
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !11491, !nonnull !22, !noundef !22 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !11491, !noundef !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11494
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.ca)
          to label %.noexc.i unwind label %bb.ab, !noalias !11492

.noexc.i:                                         ; preds = %bb.x
  %i.cb = load i64, ptr %i.f, align 8, !range !49, !noalias !11494, !noundef !22
  %.not.i.i = icmp eq i64 %i.cb, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.ca)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.z, !noalias !11492

.thread.i.i:                                      ; preds = %.noexc.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !11495
  br label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !11492

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.f) #38
          to label %.body.i unwind label %bb.aa, !noalias !11496

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11496
  unreachable

.body.i:                                          ; preds = %bb.bv, %bb.bq, %.body298.i, %bb.ab, %bb.z
  %.pn250.i = phi { ptr, i32 } [ %.pn248.i, %.body298.i ], [ %i.cd, %bb.z ], [ %i.fg, %bb.bq ], [ %i.cf, %bb.ab ], [ %i.fk, %bb.bv ]
  %.val262.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val262.i) #41, !noalias !11492
  br label %bb.t

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11492
  %i.cg = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc265.i unwind label %.thread33.i, !noalias !11492

.noexc265.i:                                      ; preds = %bb.ac
  store i32 %i.cg, ptr %i.e, align 4, !noalias !11492
  %i.ch = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !11497
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %.noexc265.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %.thread33.i, !noalias !11492

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.ad, %.noexc265.i
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !11492, !noundef !22 ; 2 uses
  store i32 %i.cj, ptr %i.d, align 4, !noalias !11492
  %i.ck = load i32, ptr %i.e, align 4, !noalias !11492, !noundef !22
  %.not.i264.i = icmp eq i32 %i.ck, %i.cj
  br i1 %.not.i264.i, label %bb.ae, label %bb.ag, !prof !23

bb.ae:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.cl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !11492
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ah, label %bb.af, !prof !23

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.ah unwind label %.thread33.i, !noalias !11492

bb.ag:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11492
  store ptr %i.e, ptr %i.c, align 8, !noalias !11492
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !11492
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cn, align 8, !noalias !11492
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !11492
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc268.i unwind label %.thread33.i, !noalias !11492

.noexc268.i:                                      ; preds = %bb.ag
  unreachable

.body298.i:                                       ; preds = %bb.cj, %bb.ci, %.thread19.thread.i, %.thread19.i, %bb.bx, %bb.bl, %.thread33.i, %.body272.i
  %.pn248.i = phi { ptr, i32 } [ %i.ec, %.thread19.i ], [ %.pn246.i, %bb.ci ], [ %.pn246.i, %bb.cj ], [ %.pn246.i, %.body272.i ], [ %.pn2439.i, %.thread19.thread.i ], [ %i.ey, %bb.bl ], [ %i.fm, %bb.bx ], [ %lpad.thr_comm.i, %.thread33.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.t) #38
          to label %.body.i unwind label %bb.ca, !noalias !11492

bb.ah:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11492
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val32) ]
  %i.co = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !11492
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.val, ptr %i.cq, align 8, !alias.scope !11498, !noalias !11492
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.val32, ptr %i.cr, align 8, !alias.scope !11498, !noalias !11492
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.t, ptr %i.cs, align 8, !alias.scope !11498, !noalias !11492
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  store i8 %i.bj, ptr %i.ct, align 1, !alias.scope !11498, !noalias !11492
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 0, ptr %i.cu, align 8, !alias.scope !11498, !noalias !11492
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EB19_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311)
          to label %bb.ak unwind label %.thread33.i, !noalias !11492

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11492
  %i.cv = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 3 uses
  switch i64 %i.cv, label %bb.ao [
    i64 -9223372036854775790, label %bb.al
    i64 -9223372036854775801, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.055.0.copyload.i = load i64, ptr %i.cw, align 8, !noalias !11492 ; 2 uses
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.256.0.copyload.i = load ptr, ptr %.sroa.256.0..sroa_idx.i, align 8, !noalias !11492 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.457.sroa.2.0.copyload.i = load ptr, ptr %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.457.sroa.3.0.copyload.i = load i64, ptr %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  store i64 %.sroa.055.0.copyload.i, ptr %i.s, align 8, !noalias !11492
  %.sroa.4193.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.256.0.copyload.i, ptr %.sroa.4193.0..sroa_idx59.i, align 8, !noalias !11492
  %.sroa.5194.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6.0..sroa_idx19561.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %5 = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.457.sroa.3.0.copyload.i.a = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11492
  store <2 x i64> %5, ptr %.sroa.5194.0..sroa_idx60.i, align 8, !noalias !11492
  %.sroa.7196.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %.sroa.457.sroa.2.0.copyload.i, ptr %.sroa.7196.0..sroa_idx62.i, align 8, !noalias !11492
  %.sroa.8197.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i64 %.sroa.457.sroa.3.0.copyload.i, ptr %.sroa.8197.0..sroa_idx63.i, align 8, !noalias !11492
  br label %bb.az

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11492
  %.pre.i = load i64, ptr %i.r, align 8, !range !109, !noalias !11492 ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !11492
  %.sroa.4193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4193.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx195.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5194.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !11492
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.8197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.8197.0..sroa_idx.i, align 8, !noalias !11492
  switch i64 %.pre.i, label %bb.ba [
    i64 -9223372036854775790, label %bb.az
    i64 -9223372036854775801, label %bb.az
  ]

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11492
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !noalias !11492
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !11492, !nonnull !22, !noundef !22 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !noalias !11492, !nonnull !22, !align !32, !noundef !22 ; 6 uses
  br i1 %i.bd, label %bb.ap, label %bb.av

bb.ao:                                            ; preds = %bb.ak
  %6 = icmp ne i64 %i.cv, -9223372036854775800
  call void @llvm.assume(i1 %6)
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.282.0.copyload.i = load i64, ptr %.sroa.282.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.383.0.copyload.i = load ptr, ptr %.sroa.383.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.484.0.copyload.i = load i64, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.585.0.copyload.i = load i64, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.686.0.copyload.i = load ptr, ptr %.sroa.686.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.787.0.copyload.i = load i64, ptr %.sroa.787.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.888.0..sroa_idx.i, i64 16, i1 false), !noalias !11492
  %i.dc = inttoptr i64 %.sroa.585.0.copyload.i to ptr
  br label %bb.cc

bb.ap:                                            ; preds = %bb.an
  %i.dd = load ptr, ptr %i.db, align 8, !invariant.load !22, !noalias !11492 ; 2 uses
  %.not.i269.i = icmp eq ptr %i.dd, null
  br i1 %.not.i269.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void %i.dd(ptr noundef nonnull %i.cz)
          to label %bb.ar unwind label %bb.at, !noalias !11492

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !29, !invariant.load !22, !noalias !11492 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !37, !invariant.load !22, !noalias !11492
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 536870913) %i.di) #41, !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !29, !invariant.load !22, !noalias !11492 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.body270.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !37, !invariant.load !22, !noalias !11492
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef range(i64 1, 0) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #41, !noalias !11492
  br label %.body270.i

bb.av:                                            ; preds = %bb.an
  %.sroa.078.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !11492
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.479.0.copyload.i = load ptr, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.580.0.copyload.i = load i64, ptr %.sroa.580.0..sroa_idx.i, align 8, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11492
  br label %bb.cc

.body270.i:                                       ; preds = %bb.au, %bb.at
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #38
          to label %.body272.i unwind label %bb.ca, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.as, %bb.ar
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aw, !noalias !11492

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body272.i unwind label %bb.ax, !noalias !11492

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.am unwind label %bb.ay, !noalias !11492

.body272.i:                                       ; preds = %bb.ay, %bb.aw, %.body270.i
  %.sroa.0139.0.i = phi i1 [ true, %.body270.i ], [ %i.du, %bb.ay ], [ true, %bb.aw ]
  %.pn246.i = phi { ptr, i32 } [ %i.dj, %.body270.i ], [ %i.dt, %bb.ay ], [ %i.dp, %bb.aw ] ; 3 uses
  %i.dr = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 3 uses
  %i.ds = icmp ne i64 %i.dr, -9223372036854775790
  %or.cond5.i = select i1 %i.ds, i1 %.sroa.0139.0.i, i1 false
  br i1 %or.cond5.i, label %bb.ci, label %.body298.i

bb.ay:                                            ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.0139.1.i = phi i8 [ %.sroa.0139.2.i, %bb.cc ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = trunc nuw i8 %.sroa.0139.1.i to i1
  br label %.body272.i

bb.az:                                            ; preds = %._crit_edge.i, %bb.am, %bb.am, %bb.al
  %.sroa.8197.0..sroa_idx67.i = phi ptr [ %.sroa.8197.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.8197.0..sroa_idx.i, %bb.am ], [ %.sroa.8197.0..sroa_idx.i, %bb.am ], [ %.sroa.8197.0..sroa_idx63.i, %bb.al ]
  %.sroa.7196.0..sroa_idx66.i = phi ptr [ %.sroa.7196.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.7196.0..sroa_idx.i, %bb.am ], [ %.sroa.7196.0..sroa_idx.i, %bb.am ], [ %.sroa.7196.0..sroa_idx62.i, %bb.al ]
  %.sroa.6.0..sroa_idx19564.i = phi ptr [ %.sroa.6.0..sroa_idx195.i, %._crit_edge.i ], [ %.sroa.6.0..sroa_idx195.i, %bb.am ], [ %.sroa.6.0..sroa_idx195.i, %bb.am ], [ %.sroa.6.0..sroa_idx19561.i, %bb.al ] ; 7 uses
  %7 = phi i64 [ %.pre47.i, %._crit_edge.i ], [ 0, %bb.am ], [ 0, %bb.am ], [ %.sroa.457.sroa.3.0.copyload.i.a, %bb.al ] ; 2 uses
  %8 = phi i64 [ %.pre46.i, %._crit_edge.i ], [ 0, %bb.am ], [ 0, %bb.am ], [ %.sroa.055.0.copyload.i, %bb.al ]
  %9 = phi ptr [ %.pre45.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %bb.am ], [ inttoptr (i64 8 to ptr), %bb.am ], [ %.sroa.256.0.copyload.i, %bb.al ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11492
  store i64 0, ptr %i.o, align 8, !noalias !11492
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8, !noalias !11492
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.dw, align 8, !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11492
  %i.dx = icmp ult i64 %7, 384307168202282326
  call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %9, i64 %7
  store ptr %9, ptr %i.m, align 8, !noalias !11492
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %9, ptr %.sroa.4108.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %8, ptr %.sroa.5109.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.dy, ptr %.sroa.6110.0..sroa_idx.i, align 8, !noalias !11492
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.u, ptr %i.dz, align 8, !noalias !11492
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.w, ptr %i.ea, align 8, !noalias !11492
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4m_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4m_3err5PyErrENCINvXso_B5o_IB5m_INtB1b_3VecB4h_EB68_EINtNtNtB4_6traits7collect12FromIteratorIB5m_B4h_B68_EE9from_iterBQ_E0B6J_EB2L_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
          to label %bb.bc unwind label %bb.bb, !noalias !11492

bb.ba:                                            ; preds = %bb.am
  %i.eb = icmp ne i64 %.pre.i, -9223372036854775800
  call void @llvm.assume(i1 %i.eb)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r)
          to label %._crit_edge.i unwind label %bb.cb, !noalias !11492

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre45.i = load ptr, ptr %.sroa.4193.0..sroa_idx.i, align 8, !noalias !11492
  %.pre46.i = load i64, ptr %i.s, align 8, !range !29, !noalias !11492
  %.pre47.i = load i64, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !11492
  br label %bb.az

.thread33.i:                                      ; preds = %bb.cg, %bb.by, %bb.bm, %bb.aj, %bb.ag, %bb.af, %bb.ad, %bb.ac
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body298.i

bb.bb:                                            ; preds = %bb.bo, %bb.bi, %bb.bh, %bb.az
  %.sroa.0142.2.i = phi i1 [ false, %bb.bo ], [ false, %bb.bi ], [ true, %bb.bh ], [ true, %bb.az ]
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.o) #38
          to label %.thread19.i unwind label %bb.ca, !noalias !11492

bb.bc:                                            ; preds = %bb.az
  %i.ed = load i64, ptr %i.n, align 8, !range !21, !noalias !11492, !noundef !22
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0219.0.copyload.i = load i64, ptr %i.ef, align 8, !noalias !11492 ; 3 uses
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5220.0.copyload.i = load ptr, ptr %.sroa.5220.0..sroa_idx.i, align 8, !noalias !11492 ; 4 uses
  %.sroa.6221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6221.0.copyload.i = load i64, ptr %.sroa.6221.0..sroa_idx.i, align 8, !noalias !11492 ; 3 uses
  br i1 %i.ee, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %.sroa.7222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7222.0..sroa_idx.i, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bf unwind label %bb.be, !noalias !11492

bb.be:                                            ; preds = %bb.bd
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread19.thread.i unwind label %bb.bg, !noalias !11492

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread33.thread.i, !noalias !11492

.thread33.thread.i:                               ; preds = %bb.bf
  %lpad.thr_comm44.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread19.thread.i

bb.bg:                                            ; preds = %bb.be
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.bh:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11492
  %i.ei = icmp ult i64 %.sroa.6221.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5220.0.copyload.i, i64 %.sroa.6221.0.copyload.i
  %i.ek = icmp sgt i64 %.sroa.0219.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ek)
  store ptr %.sroa.5220.0.copyload.i, ptr %i.h, align 8, !noalias !11492
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0219.0.copyload.i, ptr %i.el, align 8, !noalias !11492
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5220.0.copyload.i, ptr %i.em, align 8, !noalias !11492
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ej, ptr %i.en, align 8, !noalias !11492
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types3any5PyAnyEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.bi unwind label %bb.bb, !noalias !11492

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11492
  %i.eo = load ptr, ptr %.sroa.7196.0..sroa_idx66.i, align 8, !noalias !11492, !nonnull !22, !noundef !22 ; 3 uses
  %i.ep = load i64, ptr %.sroa.6.0..sroa_idx19564.i, align 8, !range !29, !noalias !11492, !noundef !22
  %i.eq = load i64, ptr %.sroa.8197.0..sroa_idx67.i, align 8, !noalias !11492, !noundef !22 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 96076792050570582
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw [96 x i8], ptr %i.eo, i64 %i.eq
  store ptr %i.eo, ptr %i.k, align 8, !noalias !11492
  %.sroa.4132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.eo, ptr %.sroa.4132.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.5133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ep, ptr %.sroa.5133.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.6134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.es, ptr %.sroa.6134.0..sroa_idx.i, align 8, !noalias !11492
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.u, ptr %i.et, align 8, !noalias !11492
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.w, ptr %i.eu, align 8, !noalias !11492
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors0_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4n_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4n_3err5PyErrENCINvXso_B5p_IB5n_INtB1b_3VecB4i_EB69_EINtNtNtB4_6traits7collect12FromIteratorIB5n_B4i_B69_EE9from_iterBQ_E0B6K_EB2L_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
          to label %bb.bj unwind label %bb.bb, !noalias !11492

bb.bj:                                            ; preds = %bb.bi
  %i.ev = load i64, ptr %i.l, align 8, !range !21, !noalias !11492, !noundef !22
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0234.0.copyload.i = load i64, ptr %i.ex, align 8, !noalias !11492 ; 3 uses
  %.sroa.5235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5235.0.copyload.i = load ptr, ptr %.sroa.5235.0..sroa_idx.i, align 8, !noalias !11492 ; 4 uses
  %.sroa.6236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6236.0.copyload.i = load i64, ptr %.sroa.6236.0..sroa_idx.i, align 8, !noalias !11492 ; 3 uses
  br i1 %i.ew, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.sroa.7237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7237.0..sroa_idx.i, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bm unwind label %bb.bl, !noalias !11492

bb.bl:                                            ; preds = %bb.bk
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body298.i unwind label %bb.bn, !noalias !11492

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i unwind label %.thread33.i, !noalias !11492

bb.bn:                                            ; preds = %bb.bl
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.bo:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11492
  %i.fa = icmp ult i64 %.sroa.6236.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5235.0.copyload.i, i64 %.sroa.6236.0.copyload.i
  %i.fc = icmp sgt i64 %.sroa.0234.0.copyload.i, -1
  call void @llvm.assume(i1 %i.fc)
  store ptr %.sroa.5235.0.copyload.i, ptr %i.g, align 8, !noalias !11492
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0234.0.copyload.i, ptr %i.fd, align 8, !noalias !11492
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5235.0.copyload.i, ptr %i.fe, align 8, !noalias !11492
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fb, ptr %i.ff, align 8, !noalias !11492
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types3any5PyAnyEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.bp unwind label %bb.bb, !noalias !11492

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11492
  %.sroa.740.8.copyload43 = load i64, ptr %i.o, align 8, !noalias !11491
  %.sroa.15.8.copyload49 = load ptr, ptr %i.dv, align 8, !noalias !11491
  %.sroa.19.8.copyload56 = load i64, ptr %i.dw, align 8, !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bq, !noalias !11492

bb.bq:                                            ; preds = %bb.bp
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.br, !noalias !11492

bb.br:                                            ; preds = %bb.bq
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bs unwind label %bb.ab, !noalias !11492

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11492
  %.val261.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val261.i) #41, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11492
  %.val258.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val258.i) #41, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.bt, !noalias !11493

bb.bt:                                            ; preds = %bb.bs
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.bu, !noalias !11493

bb.bu:                                            ; preds = %bb.bt
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i: ; preds = %bb.ck, %bb.bs
  %.sroa.19.3 = phi i64 [ %.sroa.19.2, %bb.ck ], [ %.sroa.19.8.copyload56, %bb.bs ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %bb.ck ], [ %.sroa.15.8.copyload49, %bb.bs ] ; 2 uses
  %.sroa.740.3 = phi i64 [ %.sroa.740.2, %bb.ck ], [ %.sroa.740.8.copyload43, %bb.bs ] ; 2 uses
  %.sroa.0.3 = phi i1 [ true, %bb.ck ], [ false, %bb.bs ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.cn unwind label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ce, %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i
  %.sroa.19.0 = phi i64 [ %.sroa.19.8.copyload52, %bb.ce ], [ %.sroa.6221.0.copyload.i, %bb.by ], [ %.sroa.6236.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ]
  %.sroa.15.0 = phi ptr [ %.sroa.15.8.copyload45, %bb.ce ], [ %.sroa.5220.0.copyload.i, %bb.by ], [ %.sroa.5235.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ]
  %.sroa.740.0 = phi i64 [ %.sroa.740.8.copyload41, %bb.ce ], [ %.sroa.0219.0.copyload.i, %bb.by ], [ %.sroa.0234.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit284.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i unwind label %bb.bv, !noalias !11492

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.bw, !noalias !11492

bb.bw:                                            ; preds = %bb.bv
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i unwind label %bb.ab, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx19564.i)
          to label %bb.by unwind label %bb.bx, !noalias !11492

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx19564.i)
          to label %.body298.i unwind label %bb.bz, !noalias !11492

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx19564.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread33.i, !noalias !11492

bb.bz:                                            ; preds = %bb.bx
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11492
  unreachable

bb.ca:                                            ; preds = %bb.cj, %.thread19.thread.i, %bb.cb, %bb.bb, %.body270.i, %.body298.i, %bb.o
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

.thread19.i:                                      ; preds = %bb.bb
  br i1 %.sroa.0142.2.i, label %.thread19.thread.i, label %.body298.i

bb.cb:                                            ; preds = %bb.ba
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #38
          to label %.thread19.thread.i unwind label %bb.ca, !noalias !11492

.thread19.thread.i:                               ; preds = %bb.cb, %.thread19.i, %.thread33.thread.i, %bb.be
  %.sroa.6.0..sroa_idx19565.i = phi ptr [ %.sroa.6.0..sroa_idx19564.i, %.thread33.thread.i ], [ %.sroa.6.0..sroa_idx19564.i, %.thread19.i ], [ %.sroa.6.0..sroa_idx195.i, %bb.cb ], [ %.sroa.6.0..sroa_idx19564.i, %bb.be ]
  %.pn2439.i = phi { ptr, i32 } [ %lpad.thr_comm44.i, %.thread33.thread.i ], [ %i.ec, %.thread19.i ], [ %lpad.thr_comm.split-lp.i, %bb.cb ], [ %i.eg, %bb.be ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6.0..sroa_idx19565.i) #38
          to label %.body298.i unwind label %bb.ca, !noalias !11492

bb.cc:                                            ; preds = %bb.av, %bb.ao
  %.sroa.0139.2.i = phi i8 [ 1, %bb.av ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.929.sroa.11.sroa.10.2.i = phi i64 [ 0, %bb.av ], [ %.sroa.787.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.11.sroa.9.2.i = phi ptr [ %i.db, %bb.av ], [ %.sroa.686.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.11.sroa.0.2.i = phi ptr [ %i.cz, %bb.av ], [ %i.dc, %bb.ao ]
  %.sroa.929.sroa.10.2.i = phi i64 [ %.sroa.580.0.copyload.i, %bb.av ], [ %.sroa.484.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.9.2.i = phi ptr [ %.sroa.479.0.copyload.i, %bb.av ], [ %.sroa.383.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.0.2.i = phi i64 [ %.sroa.078.0.copyload.i, %bb.av ], [ %.sroa.282.0.copyload.i, %bb.ao ]
  %i.fp = ptrtoint ptr %.sroa.929.sroa.9.2.i to i64
  %i.fq = ptrtoint ptr %.sroa.929.sroa.11.sroa.9.2.i to i64
  %i.fr = inttoptr i64 %.sroa.929.sroa.0.2.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11492
  store i64 -9223372036854775711, ptr %i.j, align 16, !noalias !11492
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.cv, ptr %.sroa.290.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.fr, ptr %.sroa.290.sroa.2.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.fp, ptr %.sroa.290.sroa.3.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.929.sroa.10.2.i, ptr %.sroa.290.sroa.4.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %.sroa.929.sroa.11.sroa.0.2.i, ptr %.sroa.290.sroa.5.0..sroa.290.0..sroa_idx.sroa_idx.i, align 8, !noalias !11492
  %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.fq, ptr %.sroa.290.sroa.6.0..sroa.290.0..sroa_idx.sroa_idx.i, align 16, !noalias !11492
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.sroa.929.sroa.11.sroa.10.2.i, ptr %.sroa.391.0..sroa_idx.i, align 8, !noalias !11492
  %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.391.sroa.2.0..sroa.391.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !11492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11492
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.j)
          to label %bb.cd unwind label %bb.ay, !noalias !11492

bb.cd:                                            ; preds = %bb.cc
  %.sroa.740.8.copyload41 = load i64, ptr %i.i, align 8, !noalias !11491
  %.sroa.15.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.15.8.copyload45 = load ptr, ptr %.sroa.15.8..sroa_idx44, align 8, !noalias !11491
  %.sroa.19.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.19.8.copyload52 = load i64, ptr %.sroa.19.8..sroa_idx51, align 8, !noalias !11491
  %.sroa.21.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.8..sroa_idx58, i64 32, i1 false), !noalias !11491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11492
  %i.fs = load i64, ptr %i.r, align 8, !range !109, !noalias !11492, !noundef !22 ; 3 uses
  %i.ft = icmp ne i64 %i.fs, -9223372036854775790
  %i.fu = trunc nuw i8 %.sroa.0139.2.i to i1
  %or.cond3.i = and i1 %i.ft, %i.fu
  br i1 %or.cond3.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11492
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.fv = icmp ne i64 %i.fs, -9223372036854775800
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp eq i64 %i.fs, -9223372036854775801
  br i1 %i.fw, label %bb.ce, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r)
          to label %bb.ce unwind label %.thread33.i, !noalias !11492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11492
  %.val260.i = load ptr, ptr %i.w, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val260.i) #41, !noalias !11492
  br label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i, %bb.w
  %.sroa.19.1 = phi i64 [ %.sroa.19.16.copyload, %bb.w ], [ %.sroa.19.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.16.copyload, %bb.w ], [ %.sroa.15.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  %.sroa.740.1 = phi i64 [ %i.bv, %bb.w ], [ %.sroa.740.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit296.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11492
  %.val257.i = load ptr, ptr %i.y, align 8, !noalias !11492, !nonnull !22, !noundef !22
  call void @_Py_DecRef(ptr noundef nonnull %.val257.i) #41, !noalias !11492
  br label %bb.ck

bb.ci:                                            ; preds = %.body272.i
  %i.fx = icmp ne i64 %i.dr, -9223372036854775800
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp eq i64 %i.dr, -9223372036854775801
  br i1 %i.fy, label %.body298.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.r) #38
          to label %.body298.i unwind label %bb.ca, !noalias !11492

bb.ck:                                            ; preds = %bb.ch, %bb.r
  %.sroa.19.2 = phi i64 [ %.sroa.19.16.copyload57, %bb.r ], [ %.sroa.19.1, %bb.ch ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.16.copyload50, %bb.r ], [ %.sroa.15.1, %bb.ch ]
  %.sroa.740.2 = phi i64 [ %i.bq, %bb.r ], [ %.sroa.740.1, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11492
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i unwind label %bb.cl, !noalias !11493

bb.cl:                                            ; preds = %bb.ck
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body36 unwind label %bb.cm, !noalias !11493

bb.cm:                                            ; preds = %bb.cl
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11493
  unreachable

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit302.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.sroa.0.3, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, i64 32, i1 false)
  %i.gb = inttoptr i64 %.sroa.740.3 to ptr
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i64 %.sroa.740.3, ptr %i.z, align 8
  %.sroa.15.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.15.3, ptr %.sroa.15.8..sroa_idx46, align 8
  %.sroa.19.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.19.3, ptr %.sroa.19.8..sroa_idx53, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11499
  invoke void @_RINvYINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc34 unwind label %.body

.noexc34:                                         ; preds = %bb.cp
  %i.gc = load i64, ptr %i.b, align 8, !range !21, !noalias !11499, !noundef !22
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload61 = load ptr, ptr %i.ge, align 8, !noalias !11500 ; 2 uses
  br i1 %i.gd, label %.thread, label %bb.cr

.thread:                                          ; preds = %.noexc34
  %.sroa.10.8..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.sroa.0.0.copyload67 = load ptr, ptr %.sroa.10.8..sroa_idx63, align 8, !noalias !11500
  %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.sroa.5.0.copyload68 = load i64, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx63.sroa_idx, align 8, !noalias !11500
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx63.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11499
  br label %bb.cq

bb.cq:                                            ; preds = %.thread, %bb.co
  %.sroa.10.sroa.5.0 = phi i64 [ %.sroa.19.3, %bb.co ], [ %.sroa.10.sroa.5.0.copyload68, %.thread ]
  %.sroa.10.sroa.0.0 = phi ptr [ %.sroa.15.3, %bb.co ], [ %.sroa.10.sroa.0.0.copyload67, %.thread ]
  %.sroa.5.0 = phi ptr [ %i.gb, %bb.co ], [ %.sroa.5.8.copyload61, %.thread ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.gf, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.sroa.0.0, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.771.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.sroa.6, i64 32, i1 false)
  br label %bb.cs

bb.cr:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11499
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload61, ptr %i.gg, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %storemerge = phi i64 [ 0, %bb.cr ], [ 1, %bb.cq ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gh = load ptr, ptr %i.af, align 8, !alias.scope !11501, !noundef !22
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.cv:                                            ; preds = %bb.m, %bb.k
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.k ], [ %.sink.sroa.gep89, %bb.m ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gj, ptr noundef nonnull align 8 dereferenceable(56) %.sink.sroa.phi, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
end_hunk_0
