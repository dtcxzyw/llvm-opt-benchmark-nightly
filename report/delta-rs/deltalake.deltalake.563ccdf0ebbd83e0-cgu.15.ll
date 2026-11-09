Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.15?download=true
inline.NumInlined: 6795
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str:bb.a
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !11371
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11375 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load i64, ptr %i.e, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11377
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11377
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.d unwind label %bb.c, !noalias !11378

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body unwind label %bb.f, !noalias !11378

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i8, ptr %i.j, align 8, !range !33, !alias.scope !11376, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11377
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %bb.h unwind label %bb.e, !noalias !11378

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #37
          to label %bb.b unwind label %bb.f, !noalias !11378

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !11378
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn.i, %bb.b ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #37
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !11376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !11376
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !11376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11377
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.f, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtCseqDwI8vvjGQ_10serde_json3raw15BoxedFromStringNtB4_8Expected3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !11379 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB5_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00INtB4_6FnMut1NtCsjyY8HP3IvQ6_12object_store10ObjectMetaE8call_mutBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11387 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !27, !alias.scope !11388, !noundef !26
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c, !noalias !11389

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.d, !noalias !11389

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !11389
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e, !noalias !11389

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %common.resume.i unwind label %bb.i, !noalias !11389

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !27, !alias.scope !11390, !noundef !26
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00B7_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i2.i unwind label %bb.g, !noalias !11389

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.h, !noalias !11389

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !11389
  unreachable

common.resume.i:                                  ; preds = %bb.g, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i2.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !11389
  br label %_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00B7_.exit

bb.i:                                             ; preds = %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !11389
  unreachable

_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00B7_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2n_5ErrorEE8call_mutBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11394 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11396)
  %i.b = load i64, ptr %i.a, align 8, !range !58, !alias.scope !11396, !noundef !26 ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 -9223372036854775790, label %bb.b
    i64 -9223372036854775801, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775790, ptr %0, align 8, !alias.scope !11395
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e, !noalias !11395

bb.c:                                             ; preds = %bb.a
  %4 = icmp ne i64 %i.b, -9223372036854775800
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  br label %_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0B7_.exit

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775790, ptr %0, align 8, !alias.scope !11395
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !11395
  br label %_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0B7_.exit

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.f, !noalias !11395

bb.f:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !11395
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !noalias !11395
  br label %_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0B7_.exit

_RNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0B7_.exit: ; preds = %bb.c, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !guid !11397 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 4 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB4_9BufWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_all_coldCs8rZONnIQGB5_29datafusion_datasource_parquet(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #42 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !26, !noundef !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.k = add nuw i64 %i.c, %2
  store i64 %i.k, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !26
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs8CRAYtH5WmW_12futures_util6future8join_allINtB4_7JoinAllINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2F_5ErrorEEENtNtNtB26_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11398 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !27, !noundef !26
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream7collectINtB5_7CollectINtNtB9_15futures_ordered14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3t_5ErrorEEEINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB2Q_B2P_NtNtB1X_5error9JoinErrorEEENtNtNtB2U_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !26, !noundef !26 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 5 uses
  %.idx = mul nuw nsw i64 %i.f, 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.01.014 = phi i1 [ %spec.select, %.lr.ph ], [ true, %bb.c ]
  %.sroa.05.013 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 72 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future10maybe_doneINtB5_9MaybeDoneINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2L_5ErrorEEENtNtNtB2c_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.05.013, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %not. = xor i1 %i.j, true
  %spec.select = select i1 %not., i1 %.sroa.01.014, i1 false ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %spec.select, label %.critedge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.g

.critedge:                                        ; preds = %bb.c, %._crit_edge
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  store i64 0, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.f
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultIBV_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB1C_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapIB3O_INtNtNtBZ_5slice4iter7IterMutINtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneINtNtB2x_4join10JoinHandleB1w_EEENCINvNtB4Y_8join_all12iter_pin_mutB4T_E0ENCNvXs_B6x_INtB6x_7JoinAllB5V_ENtNtNtBZ_6future6future6Future4poll0EE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.l)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3T_5ErrorEEEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.d, i64 %i.f) #37
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs8CRAYtH5WmW_12futures_util6future10maybe_done9MaybeDoneINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3T_5ErrorEEEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.d, i64 %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2e_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber10clone_spanCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 !guid !11399 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.b = tail call noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2e_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12current_spanCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #8 !guid !11400 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1784
  tail call void @_RNvXs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12current_span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2e_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #10 personality ptr @rust_eh_personality !guid !11401 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !26 ; 3 uses
  %i.b = icmp eq i128 %i.a, 35676981605160394489024262567183916844
  br i1 %i.b, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2336
  switch i128 %i.a, label %bb.d [
    i128 -154032744015500138875297388736630661252, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit
    i128 -34992755482893027644481409599380509406, label %bb.c
    i128 32390528496576425635266653359293608635, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split
    i128 -122928866516361403446154690461150794534, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2352
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.f = icmp eq i128 %i.a, -50236162796386718300396821002036163169
  %..i.i.i.i.i.i = zext i1 %i.f to i64
  %i.g = insertvalue { i64, ptr } poison, i64 %..i.i.i.i.i.i, 0
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split: ; preds = %bb.b, %bb.b
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.d, %bb.c, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split, %bb.b
  %.pn = phi { i64, ptr } [ { i64 1, ptr poison }, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split ], [ { i64 1, ptr poison }, %bb.c ], [ { i64 1, ptr poison }, %bb.b ], [ %i.g, %bb.d ], [ { i64 1, ptr poison }, %bb.a ]
  %.pn5 = phi ptr [ %0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB10_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIB1R_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB3b_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_raw0ECs7p2uQeJxui2_9deltalake.exit.fold.split ], [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %0, %bb.a ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn5, 1
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2e_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber13event_enabledCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 !guid !11402 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber13event_enabled(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef range(i64 0, 7) i64 @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2e_ENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber14max_level_hintCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11403 {
bb.a:
  %i.a = tail call noundef range(i64 0, 7) i64 @_RNvMs_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3envNtB4_9EnvFilter14max_level_hint(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.c = load i8, ptr %i.b, align 8, !range !33, !noundef !26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_rawCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2329
  %i.f = load i8, ptr %i.e, align 1, !range !33, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %spec.select.i.i = select i1 %i.g, i64 6, i64 %i.a
  br label %_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_rawCs7p2uQeJxui2_9deltalake.exit

_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_rawCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.07.1.i.i = phi i64 [ %i.a, %bb.a ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.i = load i8, ptr %i.h, align 8, !range !33, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_RNvMs3_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBW_NtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2f_E15pick_level_hintCs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12downcast_rawCs7p2uQeJxui2_9deltalake.exit
end_hunk_0
