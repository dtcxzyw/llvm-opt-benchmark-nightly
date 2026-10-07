Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.11?download=true
inline.NumInlined: 463
inline.NumDeleted: 173
begin_hunk_0_@_RINvNtNtCs2NzvFoTxuAy_2rg5flags3doc20render_custom_markupNCNvNtB2_4help18generate_long_flags_0EB6_:bb.a

.split.i82:                                       ; preds = %bb.ah
  %i.db = icmp eq i64 %i.da, %.sroa.11.0, !dbg !4526
  br i1 %i.db, label %bb.aj, label %.thread126.invoke, !dbg !4527

bb.ai:                                            ; preds = %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.da, !dbg !4528
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !4528, !alias.scope !4404, !noundef !306
  %i.de = icmp sgt i8 %i.dd, -65, !dbg !4529
  br i1 %i.de, label %bb.aj, label %.thread126.invoke, !dbg !4527

bb.aj:                                            ; preds = %.split.i82, %bb.ai
  %i.df = sub nuw i64 %.sroa.11.0, %i.da, !dbg !4530
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.da, !dbg !4531
  br label %bb.d, !dbg !4532

.thread126.invoke:                                ; preds = %bb.ai, %.split.i82, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, %bb.y, %bb.ab, %bb.r, %.split.i69, %.split.i, %bb.j
  %i.dh = phi i64 [ %i.ba, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.ba, %bb.r ], [ 0, %.split.i ], [ 0, %bb.j ], [ %i.ba, %.split.i69 ], [ %i.ba, %bb.ab ], [ %i.ba, %bb.y ], [ %i.da, %.split.i82 ], [ %i.da, %bb.ai ]
  %i.di = phi i64 [ %i.ca, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %.sroa.11.0, %bb.r ], [ %i.ai, %.split.i ], [ %i.ai, %bb.j ], [ %.sroa.11.0, %.split.i69 ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.y ], [ %.sroa.11.0, %.split.i82 ], [ %.sroa.11.0, %bb.ai ]
  %i.dj = phi ptr [ @12, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ @9, %bb.r ], [ @8, %.split.i ], [ @8, %bb.j ], [ @9, %.split.i69 ], [ @12, %bb.ab ], [ @12, %bb.y ], [ @13, %.split.i82 ], [ @13, %bb.ai ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.11.0, i64 noundef %i.dh, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj) #25
          to label %.thread126.cont unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !4533

.thread126.cont:                                  ; preds = %.thread126.invoke
  unreachable

bb.ak:                                            ; preds = %bb.l, %.noexc63
  %i.dk = phi i64 [ %.pre.i, %bb.l ], [ %i.ao, %.noexc63 ], !dbg !4447
  %i.dl = add i64 %i.dk, %.sroa.11.0, !dbg !4447
  store i64 %i.dl, ptr %.sroa.528.0..sroa_idx, align 8, !dbg !4447, !alias.scope !4372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !4534
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i87 unwind label %bb.al, !dbg !4535

bb.al:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread102 unwind label %bb.am, !dbg !4536

bb.am:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4535
  unreachable, !dbg !4535

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i87: ; preds = %bb.ak
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !dbg !4537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4420
  ret void, !dbg !4539

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i93, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !4540

.body:                                            ; preds = %bb.ao, %bb.an, %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4540
  unreachable, !dbg !4540

.thread102:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i93, %bb.al
  %.pn100 = phi { ptr, i32 } [ %i.dm, %bb.al ], [ %.pn101, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i93 ]
  resume { ptr, i32 } %.pn100, !dbg !4540

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i, %.thread105
  %.pn101 = phi { ptr, i32 } [ %i.z, %.thread105 ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i93 unwind label %bb.ao, !dbg !4541

bb.ao:                                            ; preds = %.thread
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.ap, !dbg !4542

bb.ap:                                            ; preds = %bb.ao
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4541
  unreachable, !dbg !4541

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i93: ; preds = %.thread
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread102 unwind label %bb.an, !dbg !4543
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read14read_to_stringNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4544 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4560
  store i64 0, ptr %i.a, align 8, !dbg !4561
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4561
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4561
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4561
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !4561
  %i.b = invoke { i64, ptr } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read14read_to_stringCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !4562 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %.body unwind label %bb.i, !dbg !4563

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, ptr } %i.b, 0, !dbg !4557
  %i.e = trunc nuw i64 %i.d to i1, !dbg !4564
  br i1 %i.e, label %bb.d, label %bb.g, !dbg !4564

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { i64, ptr } %i.b, 1, !dbg !4557
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4565
  store ptr %i.f, ptr %i.g, align 8, !dbg !4565
  store i64 -1, ptr %0, align 8, !dbg !4565
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.e, !dbg !4566

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.f, !dbg !4567

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4566
  unreachable, !dbg !4566

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !4568

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !4569
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit, !dbg !4563

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4563
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %1), !dbg !4563
  ret void, !dbg !4570

.body:                                            ; preds = %bb.h, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.j, %bb.h ], [ %i.h, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #22
          to label %bb.j unwind label %bb.i, !dbg !4563

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.body, %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4571
  unreachable, !dbg !4571

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %.pn, !dbg !4571
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4572 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4780 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !4780, !noundef !306 ; 9 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !4781
  tail call void @llvm.assume(i1 %i.g), !dbg !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4783
  store i64 %i.f, ptr %i.d, align 8, !dbg !4784
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4784 ; 3 uses
  store ptr %0, ptr %i.h, align 8, !dbg !4784
  %.val7 = load i64, ptr %2, align 8, !dbg !4785, !range !343, !noundef !306
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4785
  %.val8 = load i64, ptr %i.i, align 8, !dbg !4785 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4745), !dbg !4785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4746), !dbg !4786
  %i.j = load i64, ptr %0, align 8, !dbg !4787, !range !526, !alias.scope !4748, !noalias !4749, !noundef !306 ; 3 uses
  %i.k = trunc nuw i64 %.val7 to i1, !dbg !4788   ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !4788

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.val8, -1025, !dbg !4789
  br i1 %i.l, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i, !dbg !4790, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  %i.m = add nuw i64 %.val8, 1024, !dbg !4789     ; 3 uses
  %i.n = and i64 %i.m, 8191, !dbg !4791           ; 2 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !4792
  %i.p = sub i64 %.val8, %i.n, !dbg !4792
  %i.q = add i64 %i.p, 9216, !dbg !4792           ; 2 uses
  %.not85.i.i = icmp ult i64 %i.q, %i.m, !dbg !4792
  %.sroa.5.1.i.i.i = select i1 %.not85.i.i, i64 8192, i64 %i.q, !dbg !4793
  %.sroa.053.1.i.i = select i1 %i.o, i64 %i.m, i64 %.sroa.5.1.i.i.i, !dbg !4792 ; 2 uses
  %i.r = icmp eq i64 %.val8, 0
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !4794

bb.c:                                             ; preds = %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i, %bb.a
  %.sroa.053.0.i.i = phi i64 [ %.sroa.053.1.i.i, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i ], [ 8192, %bb.a ], !dbg !4795 ; 2 uses
  %i.s = sub nsw i64 %i.j, %i.f, !dbg !4796
  %i.t = icmp ult i64 %i.s, 32, !dbg !4796
  br i1 %i.t, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !4796

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i.i, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i, %bb.b
  %.pre.i.i = phi i64 [ %.pre.pre.i.i, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i.i ], [ %i.f, %bb.c ], [ %i.f, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.f, %bb.b ], !dbg !4797
  %.sroa.053.2.i.i = phi i64 [ %.sroa.053.0.i.i, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i.i ], [ %.sroa.053.0.i.i, %bb.c ], [ %.sroa.053.1.i.i, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.i.i ], [ 8192, %bb.b ], !dbg !4798
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i.i, !dbg !4799

bb.d:                                             ; preds = %bb.c
  %i.z = invoke fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4800 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.aa = extractvalue { i64, ptr } %i.z, 0, !dbg !4800
  %i.ab = extractvalue { i64, ptr } %i.z, 1, !dbg !4800 ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1, !dbg !4801
  br i1 %i.ac, label %bb.e, label %bb.f, !dbg !4801

bb.e:                                             ; preds = %.noexc
  %i.ad = ptrtoint ptr %i.ab to i64, !dbg !4800
  br label %.loopexit24, !dbg !4802

bb.f:                                             ; preds = %.noexc
  %i.ae = icmp eq ptr %i.ab, null, !dbg !4803
  br i1 %i.ae, label %.loopexit24, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i.i, !dbg !4803

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i.i: ; preds = %bb.f
  %.pre.pre.i.i = load i64, ptr %i.e, align 8, !dbg !4797, !alias.scope !4748, !noalias !4749
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderE0Cs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !4803

._crit_edge.i.i:                                  ; preds = %bb.ab, %.outer.i.i
  %.sroa.027.2.lcssa.i.i = phi i64 [ %.sroa.027.2.ph.i.i, %.outer.i.i ], [ %i.co, %bb.ab ], !dbg !4804
  %.lcssa88.i.i = phi i64 [ %i.ce, %.outer.i.i ], [ %i.co, %bb.ab ], !dbg !4797 ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ch, %.outer.i.i ], [ %i.ct, %bb.ab ], !dbg !4805
  br i1 %.lcssa.i.i, label %bb.h, label %bb.g, !dbg !4806

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %bb.ab
  %i.af = invoke fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit, !dbg !4807 ; 2 uses

.noexc9:                                          ; preds = %.lr.ph.i.i
  %i.ag = extractvalue { i64, ptr } %i.af, 0, !dbg !4807
  %i.ah = extractvalue { i64, ptr } %i.af, 1, !dbg !4807 ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1, !dbg !4808
  br i1 %i.ai, label %bb.y, label %bb.z, !dbg !4808

bb.g:                                             ; preds = %bb.i, %._crit_edge.i.i
  %i.aj = phi i64 [ %i.ar, %bb.i ], [ %.lcssa88.i.i, %._crit_edge.i.i ], !dbg !4809 ; 7 uses
  %.sroa.027.3.i.i = phi i64 [ %i.ar, %bb.i ], [ %.sroa.027.2.lcssa.i.i, %._crit_edge.i.i ], !dbg !4810 ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !4811
  call void @llvm.assume(i1 %i.ak), !dbg !4812
  %i.al = add nuw i64 %i.aj, 32, !dbg !4813
  %i.am = icmp ugt i64 %.sroa.027.3.i.i, %i.al, !dbg !4814
  %i.an = load ptr, ptr %i.u, align 8, !dbg !4815, !alias.scope !4748, !noalias !4749, !nonnull !306, !noundef !306
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj, !dbg !4816 ; 3 uses
  br i1 %i.am, label %bb.j, label %.thread.i.i, !dbg !4814

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ap = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.lcssa88.i.i, i64 noundef 32, i64 noundef 1, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !4817

.noexc10:                                         ; preds = %bb.h
  %i.aq = extractvalue { i64, i64 } %i.ap, 0, !dbg !4817
  %.not.i.i = icmp eq i64 %i.aq, -1, !dbg !4818
  br i1 %.not.i.i, label %bb.i, label %.loopexit24, !dbg !4819

bb.i:                                             ; preds = %.noexc10
  %i.ar = load i64, ptr %i.e, align 8, !dbg !4820, !alias.scope !4748, !noalias !4749, !noundef !306 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !4821
  call void @llvm.assume(i1 %i.as), !dbg !4822
  br label %bb.g, !dbg !4823

.thread.i.i:                                      ; preds = %bb.g
  %i.at = load i64, ptr %0, align 8, !dbg !4824, !range !526, !alias.scope !4748, !noalias !4749, !noundef !306
  %i.au = sub nsw i64 %i.at, %i.aj, !dbg !4825
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %.sroa.053.3.ph.i.i), !dbg !4826
  br label %bb.k, !dbg !4827

bb.j:                                             ; preds = %bb.g
  %i.av = sub nuw i64 %.sroa.027.3.i.i, %i.aj, !dbg !4828 ; 3 uses
  %.pre153.i.i = load i64, ptr %0, align 8, !dbg !4829, !range !526, !alias.scope !4748, !noalias !4749
  %.pre156.i.i = sub nsw i64 %.pre153.i.i, %i.aj, !dbg !4830 ; 2 uses
  %.not60.i.i = icmp ugt i64 %i.av, %.pre156.i.i, !dbg !4827
  br i1 %.not60.i.i, label %bb.l, label %bb.k, !dbg !4827, !prof !532

bb.k:                                             ; preds = %bb.j, %.thread.i.i
  %.sroa.034.0164.i.i = phi i64 [ %..i.i.i, %.thread.i.i ], [ %i.av, %bb.j ] ; 3 uses
  %i.aw = add i64 %.sroa.034.0164.i.i, %i.aj, !dbg !4831
  %.not59.i.i = icmp uge i64 %.sroa.027.3.i.i, %i.aw, !dbg !4832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4833, !noalias !4758
  store ptr %i.ao, ptr %i.b, align 8, !dbg !4834, !noalias !4758
  store i64 %.sroa.034.0164.i.i, ptr %i.v, align 8, !dbg !4834, !noalias !4758
  store i64 0, ptr %i.w, align 8, !dbg !4834, !noalias !4758
  %spec.select.i.i = zext i1 %.not59.i.i to i8, !dbg !4835
  store i8 %spec.select.i.i, ptr %i.x, align 8, !dbg !4836, !noalias !4758
  %i.ax = invoke noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !4837 ; 2 uses

.noexc11:                                         ; preds = %bb.k
  %.not61118.i.i = icmp eq ptr %i.ax, null, !dbg !4838
  br i1 %.not61118.i.i, label %.split81._crit_edge.i.i, label %.lr.ph121.i.i, !dbg !4839

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.av, i64 noundef %.pre156.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4840

.noexc12:                                         ; preds = %bb.l
  unreachable, !dbg !4840

.lr.ph121.i.i:                                    ; preds = %.noexc11, %.noexc14
  %i.ay = phi ptr [ %i.ca, %.noexc14 ], [ %i.ax, %.noexc11 ] ; 6 uses
  %i.az = ptrtoint ptr %i.ay to i64, !dbg !4841   ; 8 uses
  %i.ba = and i64 %i.az, 3, !dbg !4842
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80.i.i
    i64 0, label %.split81.i.i
    i64 1, label %.split.i.i
  ], !dbg !4843, !prof !446

default.unreachable:                              ; preds = %.lr.ph121.i.i
  unreachable

bb.m:                                             ; preds = %.lr.ph121.i.i
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i unwind label %bb.p, !dbg !4844

.noexc.i.i:                                       ; preds = %bb.m
  %i.bc = lshr i64 %i.az, 32, !dbg !4845
  %i.bd = trunc nuw i64 %i.bc to i32, !dbg !4845
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !4846
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !4846, !nonnull !306, !noundef !306
  %i.bg = invoke noundef zeroext i1 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i unwind label %bb.p, !dbg !4846, !inline_history !181

.split80.i.i:                                     ; preds = %.lr.ph121.i.i
  %i.bh = lshr i64 %i.az, 32, !dbg !4847
  %i.bi = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr), !dbg !4848 ; 2 uses
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.bh to i8
  %spec.select.i.i.i.i.i = select i1 %i.bi, i8 %switch.idx.cast.i.i.i.i.i, i8 -1, !dbg !4848 ; 2 uses
  %i.bj = icmp ne i8 %spec.select.i.i.i.i.i, -1, !dbg !4849
  call void @llvm.assume(i1 %i.bj), !dbg !4850
  %i.bk = icmp eq i8 %spec.select.i.i.i.i.i, 35, !dbg !4851
  br i1 %i.bk, label %bb.n, label %.split81._crit_edge.i.i, !dbg !4852

.split81.i.i:                                     ; preds = %.lr.ph121.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !4853
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !4853, !range !539, !noundef !306
  %i.bn = icmp eq i8 %i.bm, 35, !dbg !4854
  br i1 %i.bn, label %.thread83.i.i, label %.split81._crit_edge.i.i, !dbg !4852

.split.i.i:                                       ; preds = %.lr.ph121.i.i
  %i.bo = getelementptr i8, ptr %i.ay, i64 31, !dbg !4855
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !4855, !range !539, !noundef !306
  %i.bq = icmp eq i8 %i.bp, 35, !dbg !4856
  br i1 %i.bq, label %bb.o, label %.split81._crit_edge.i.i, !dbg !4852

.split81._crit_edge.i.i:                          ; preds = %.split80.i.i, %.split81.i.i, %.split.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.noexc14, %.noexc11
  %.lcssa100.i.i = phi i64 [ 0, %.noexc11 ], [ %i.az, %.split80.i.i ], [ %i.az, %.split81.i.i ], [ %i.az, %.split.i.i ], [ %i.az, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i ], [ 0, %.noexc14 ], !dbg !4837
  %.not61.lcssa.i.i = phi i1 [ true, %.noexc11 ], [ false, %.split80.i.i ], [ false, %.split81.i.i ], [ false, %.split.i.i ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i ], [ true, %.noexc14 ], !dbg !4838
  %i.br = load i64, ptr %i.w, align 8, !dbg !4857, !noalias !4758, !noundef !306 ; 3 uses
  %i.bs = load i8, ptr %i.x, align 8, !dbg !4858, !range !470, !noalias !4758, !noundef !306
  %i.bt = trunc nuw i8 %i.bs to i1, !dbg !4858    ; 2 uses
  %.pre154.i.i = load i64, ptr %i.e, align 8, !dbg !4859, !alias.scope !4748, !noalias !4749 ; 3 uses
  %i.bu = add i64 %.pre154.i.i, %.sroa.034.0164.i.i
  %spec.select178.i.i = select i1 %i.bt, i64 %i.bu, i64 %.sroa.027.3.i.i, !dbg !4860
  %i.bv = icmp sgt i64 %.pre154.i.i, -1, !dbg !4861
  call void @llvm.assume(i1 %i.bv), !dbg !4862
  %i.bw = add i64 %.pre154.i.i, %i.br, !dbg !4863 ; 3 uses
  store i64 %i.bw, ptr %i.e, align 8, !dbg !4864, !alias.scope !4748, !noalias !4749
  br i1 %.not61.lcssa.i.i, label %bb.r, label %.loopexit165.i.i, !dbg !4865

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i: ; preds = %.noexc.i.i
  br i1 %i.bg, label %.thread83.i.i, label %.split81._crit_edge.i.i, !dbg !4852

.thread83.i.i:                                    ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i, %.split81.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4866, !noalias !4758
  br label %.noexc13, !dbg !4867

bb.n:                                             ; preds = %.split80.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4866, !noalias !4758
  %i.bx = and i64 %i.az, 1095216660480, !dbg !4868
  %i.by = icmp ne i64 %i.bx, 1095216660480, !dbg !4868
  call void @llvm.assume(i1 %i.bi), !dbg !4869
  call void @llvm.assume(i1 %i.by), !dbg !4869
  br label %.noexc13, !dbg !4870

bb.o:                                             ; preds = %.split.i.i
  %i.bz = getelementptr i8, ptr %i.ay, i64 -1, !dbg !4871 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16default_read_bufNCNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB6_3vec3VechEENtB2_4Read8read_buf0ECs2NzvFoTxuAy_2rg:bb.a
  br label %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, !dbg !5156

_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !5157 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !5157, !noundef !306 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !5158 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !5158, !noundef !306
  %i.o = sub nuw i64 %i.n, %i.l, !dbg !5159
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l, !dbg !5160
  %i.q = tail call { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.o), !dbg !5161 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0, !dbg !5146
  %i.s = extractvalue { i64, ptr } %i.q, 1, !dbg !5146 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1, !dbg !5162
  br i1 %i.t, label %bb.g, label %bb.c, !dbg !5162

bb.c:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit
  %i.u = ptrtoint ptr %i.s to i64, !dbg !5146     ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !dbg !5163, !range !470, !noalias !5147, !noundef !306
  %i.w = trunc nuw i8 %i.v to i1, !dbg !5163
  br i1 %i.w, label %bb.d, label %bb.e, !dbg !5164

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.m, align 8, !dbg !5165, !noalias !5147, !noundef !306
  %i.y = load i64, ptr %i.k, align 8, !dbg !5166, !noalias !5147, !noundef !306
  %i.z = sub i64 %i.x, %i.y, !dbg !5167
  br label %bb.e, !dbg !5168

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ], !dbg !5169
  %.not.i = icmp ult i64 %.sroa.0.0.i, %i.u, !dbg !5170
  br i1 %.not.i, label %bb.f, label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit, !dbg !5170, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !dbg !5171, !noalias !5147
  unreachable, !dbg !5171

_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !dbg !5172, !noalias !5147, !noundef !306
  %i.ab = add i64 %i.aa, %i.u, !dbg !5172
  store i64 %i.ab, ptr %i.k, align 8, !dbg !5172, !noalias !5147
  br label %bb.g, !dbg !5173

bb.g:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit ], [ %i.s, %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit ], !dbg !5174
  ret ptr %.sroa.0.0, !dbg !5175
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16default_read_bufNCNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB6_3vec3VechEENtB2_4Read8read_buf0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5176 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !5211 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !5211, !range !470, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1, !dbg !5211
  br i1 %i.c, label %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !5212

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !5213
  %i.e = load i64, ptr %i.d, align 8, !dbg !5213, !noundef !306 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !5214
  %i.g = load i64, ptr %i.f, align 8, !dbg !5214, !noundef !306
  %i.h = sub nuw i64 %i.g, %i.e, !dbg !5215
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.e, !dbg !5216
  %i.j = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.i, i64 noundef %i.h), !dbg !5217 ; 0 uses
  store i8 1, ptr %i.a, align 8, !dbg !5218
  br label %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, !dbg !5219

_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !5220 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !5220, !noundef !306 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !5221 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !5221, !noundef !306
  %i.o = sub nuw i64 %i.n, %i.l, !dbg !5222
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l, !dbg !5223
  %i.q = tail call { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB17_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.o), !dbg !5224 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0, !dbg !5209
  %i.s = extractvalue { i64, ptr } %i.q, 1, !dbg !5209 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1, !dbg !5225
  br i1 %i.t, label %bb.g, label %bb.c, !dbg !5225

bb.c:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit
  %i.u = ptrtoint ptr %i.s to i64, !dbg !5209     ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !dbg !5226, !range !470, !noalias !5210, !noundef !306
  %i.w = trunc nuw i8 %i.v to i1, !dbg !5226
  br i1 %i.w, label %bb.d, label %bb.e, !dbg !5227

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.m, align 8, !dbg !5228, !noalias !5210, !noundef !306
  %i.y = load i64, ptr %i.k, align 8, !dbg !5229, !noalias !5210, !noundef !306
  %i.z = sub i64 %i.x, %i.y, !dbg !5230
  br label %bb.e, !dbg !5231

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ], !dbg !5232
  %.not.i = icmp ult i64 %.sroa.0.0.i, %i.u, !dbg !5233
  br i1 %.not.i, label %bb.f, label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit, !dbg !5233, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !dbg !5234, !noalias !5210
  unreachable, !dbg !5234

_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !dbg !5235, !noalias !5210, !noundef !306
  %i.ab = add i64 %i.aa, %i.u, !dbg !5235
  store i64 %i.ab, ptr %i.k, align 8, !dbg !5235, !noalias !5210
  br label %bb.g, !dbg !5236

bb.g:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit ], [ %i.s, %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit ], !dbg !5237
  ret ptr %.sroa.0.0, !dbg !5238
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16default_read_bufNCNvYNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtB2_4Read8read_buf0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5239 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !5274 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !5274, !range !470, !noundef !306
  %i.c = trunc nuw i8 %i.b to i1, !dbg !5274
  br i1 %i.c, label %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !5275

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !5276
  %i.e = load i64, ptr %i.d, align 8, !dbg !5276, !noundef !306 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !5277
  %i.g = load i64, ptr %i.f, align 8, !dbg !5277, !noundef !306
  %i.h = sub nuw i64 %i.g, %i.e, !dbg !5278
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.e, !dbg !5279
  %i.j = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.i, i64 noundef %i.h), !dbg !5280 ; 0 uses
  store i8 1, ptr %i.a, align 8, !dbg !5281
  br label %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, !dbg !5282

_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !5283 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !5283, !noundef !306 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !5284 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !5284, !noundef !306
  %i.o = sub nuw i64 %i.n, %i.l, !dbg !5285
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l, !dbg !5286
  %i.q = tail call { i64, ptr } @_RNvXs6_NtCsgwyS1EwTFAS_8grep_cli7processNtB5_13CommandReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.o), !dbg !5287 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0, !dbg !5272
  %i.s = extractvalue { i64, ptr } %i.q, 1, !dbg !5272 ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1, !dbg !5288
  br i1 %i.t, label %bb.g, label %bb.c, !dbg !5288

bb.c:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit
  %i.u = ptrtoint ptr %i.s to i64, !dbg !5272     ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !dbg !5289, !range !470, !noalias !5273, !noundef !306
  %i.w = trunc nuw i8 %i.v to i1, !dbg !5289
  br i1 %i.w, label %bb.d, label %bb.e, !dbg !5290

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.m, align 8, !dbg !5291, !noalias !5273, !noundef !306
  %i.y = load i64, ptr %i.k, align 8, !dbg !5292, !noalias !5273, !noundef !306
  %i.z = sub i64 %i.x, %i.y, !dbg !5293
  br label %bb.e, !dbg !5294

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ], !dbg !5295
  %.not.i = icmp ult i64 %.sroa.0.0.i, %i.u, !dbg !5296
  br i1 %.not.i, label %bb.f, label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit, !dbg !5296, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #23, !dbg !5297, !noalias !5273
  unreachable, !dbg !5297

_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !dbg !5298, !noalias !5273, !noundef !306
  %i.ab = add i64 %i.aa, %i.u, !dbg !5298
  store i64 %i.ab, ptr %i.k, align 8, !dbg !5298, !noalias !5273
  br label %bb.g, !dbg !5299

bb.g:                                             ; preds = %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs2NzvFoTxuAy_2rg.exit ], [ %i.s, %_RNvMs8_NtNtCskKLDkoKarTP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs2NzvFoTxuAy_2rg.exit ], !dbg !5300
  ret ptr %.sroa.0.0, !dbg !5301
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB6_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5302 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5448 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !5448, !noundef !306 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !5449
  tail call void @llvm.assume(i1 %i.e), !dbg !5450
  %i.f = load i64, ptr %1, align 8, !dbg !5451, !range !526, !noundef !306 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !5452       ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !5452

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !5453
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit, !dbg !5454, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !5453         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !5455           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !5456
  %i.l = sub i64 %3, %i.j, !dbg !5456
  %i.m = add i64 %i.l, 9216, !dbg !5456           ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i, !dbg !5456
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m, !dbg !5457
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !5456 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5458

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.a ], !dbg !5459 ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !5460
  %i.p = icmp ult i64 %i.o, 32, !dbg !5460
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5460

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ %i.d, %bb.b ], !dbg !5461
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.b ], !dbg !5462
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer, !dbg !5463

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5398 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !5398
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !5398 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !5464
  br i1 %i.y, label %bb.e, label %bb.f, !dbg !5464

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64, !dbg !5398
  br label %.loopexit, !dbg !5465

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null, !dbg !5466
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, !dbg !5466

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !5461
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5466

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ], !dbg !5402
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ], !dbg !5461 ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ], !dbg !5467
  br i1 %.lcssa, label %bb.h, label %bb.g, !dbg !5468

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5400 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !5400
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !5400 ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !5469
  br i1 %i.ae, label %bb.aa, label %bb.ab, !dbg !5469

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ], !dbg !5470 ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ], !dbg !5471 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !5472
  call void @llvm.assume(i1 %i.ag), !dbg !5473
  %i.ah = add nuw i64 %i.af, 32, !dbg !5474
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah, !dbg !5475
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !5476, !nonnull !306, !noundef !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af, !dbg !5477 ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread, !dbg !5475

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !5478
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !5478
  %.not = icmp eq i64 %i.am, -1, !dbg !5479
  br i1 %.not, label %bb.i, label %.loopexit, !dbg !5480

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !dbg !5481, !noundef !306 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !5482
  call void @llvm.assume(i1 %i.ao), !dbg !5483
  br label %bb.g, !dbg !5484

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !dbg !5485, !range !526, !noundef !306
  %i.aq = sub nsw i64 %i.ap, %i.af, !dbg !5486
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph), !dbg !5487
  br label %bb.k, !dbg !5488

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af, !dbg !5489 ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !dbg !5490, !range !526
  %.pre156 = sub nsw i64 %.pre153, %i.af, !dbg !5491 ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156, !dbg !5488
  br i1 %.not60, label %bb.l, label %bb.k, !dbg !5488, !prof !532

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af, !dbg !5492
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as, !dbg !5493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5494
  store ptr %i.ak, ptr %i.b, align 8, !dbg !5495
  store i64 %.sroa.034.0164, ptr %i.r, align 8, !dbg !5495
  store i64 0, ptr %i.s, align 8, !dbg !5495
  %spec.select = zext i1 %.not59 to i8, !dbg !5496
  store i8 %spec.select, ptr %i.t, align 8, !dbg !5497
  %i.at = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1Y_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !5498 ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null, !dbg !5499
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121, !dbg !5500

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !5501
  unreachable, !dbg !5501

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64, !dbg !5502   ; 4 uses
  %i.aw = and i64 %i.av, 3, !dbg !5503
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !dbg !5504, !prof !446

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r, !dbg !5505

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32, !dbg !5506
  %i.az = trunc nuw i64 %i.ay to i32, !dbg !5506
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !5507
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !5507, !nonnull !306, !noundef !306
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !dbg !5507, !inline_history !181

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32, !dbg !5508
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr), !dbg !5509 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !5509 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1, !dbg !5510
  call void @llvm.assume(i1 %i.bf), !dbg !5511
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35, !dbg !5512
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit, !dbg !5513

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !5514
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !5514, !range !539, !noundef !306
  %i.bj = icmp eq i8 %i.bi, 35, !dbg !5515
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !5513

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31, !dbg !5516
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !5516, !range !539, !noundef !306
  %i.bm = icmp eq i8 %i.bl, 35, !dbg !5517
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit, !dbg !5513

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64, !dbg !5518
  br label %.split81._crit_edge, !dbg !5519

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ], !dbg !5498
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ], !dbg !5499
  %i.bo = load i64, ptr %i.s, align 8, !dbg !5519, !noundef !306 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !dbg !5520, !range !470, !noundef !306
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !5520    ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8, !dbg !5521 ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3, !dbg !5522
  %i.bs = icmp sgt i64 %.pre154, -1, !dbg !5523
  call void @llvm.assume(i1 %i.bs), !dbg !5524
  %i.bt = add i64 %.pre154, %i.bo, !dbg !5525     ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !5526
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165, !dbg !5527

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !5513

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5528
  br label %bb.p, !dbg !5529

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5528
  %i.bu = and i64 %i.av, 1095216660480, !dbg !5530
  %i.bv = icmp ne i64 %i.bu, 1095216660480, !dbg !5530
  call void @llvm.assume(i1 %i.be), !dbg !5531
  call void @llvm.assume(i1 %i.bv), !dbg !5531
  br label %bb.p, !dbg !5532

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1, !dbg !5533 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5528
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ], !dbg !5534
  store ptr %i.bw, ptr %i.u, align 8, !dbg !5535, !alias.scope !5437
  store i8 3, ptr %i.a, align 8, !dbg !5536, !alias.scope !5437
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !dbg !5537
  br label %bb.p, !dbg !5537

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5538
  %i.bx = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1Y_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !5498 ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null, !dbg !5499
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121, !dbg !5500

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm, !dbg !5539

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.au) #22
          to label %bb.q unwind label %bb.s, !dbg !5540

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5539
  unreachable, !dbg !5539

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0, !dbg !5541
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !5541

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d, !dbg !5542
  br label %.loopexit165, !dbg !5543

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true, !dbg !5544
  %brmerge = or i1 %i.g, %.not64, !dbg !5544
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1, !dbg !5544
  br i1 %brmerge, label %bb.w, label %bb.x, !dbg !5544

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ], !dbg !5545
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ], !dbg !5545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5546
  br label %.loopexit, !dbg !5465

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ], !dbg !5547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5546
  br label %.outer, !dbg !5463

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ], !dbg !5461 ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !dbg !5548, !range !526, !noundef !306 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb, !dbg !5549
  %i.ce = icmp ult i64 %i.cd, 32, !dbg !5467      ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce, !dbg !5467
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge, !dbg !5467

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph, !dbg !5550
  br i1 %i.cg, label %bb.y, label %bb.w, !dbg !5550

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1, !dbg !5551
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0, !dbg !5551
  br i1 %i.ci, label %bb.z, label %bb.w, !dbg !5552, !prof !318

bb.z:                                             ; preds = %bb.y
  br label %bb.w, !dbg !5553

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ], !dbg !5554
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ], !dbg !5554
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr, !dbg !5555
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0, !dbg !5555
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1, !dbg !5555
  ret { i64, ptr } %i.cl, !dbg !5555

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64, !dbg !5400
  br label %.loopexit, !dbg !5465

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null, !dbg !5556
  %i.co = load i64, ptr %i.c, align 8, !dbg !5557, !noundef !306 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1, !dbg !5558
  call void @llvm.assume(i1 %i.cp), !dbg !5559
  br i1 %i.cn, label %bb.ac, label %bb.ad, !dbg !5556

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d, !dbg !5560
  br label %.loopexit, !dbg !5561

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !dbg !5548, !range !526, !noundef !306 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co, !dbg !5549
  %i.ct = icmp ult i64 %i.cs, 32, !dbg !5467      ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct, !dbg !5467
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge, !dbg !5467
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB6_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5562 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5708 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !5708, !noundef !306 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !5709
  tail call void @llvm.assume(i1 %i.e), !dbg !5710
  %i.f = load i64, ptr %1, align 8, !dbg !5711, !range !526, !noundef !306 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !5712       ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !5712

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !5713
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit, !dbg !5714, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !5713         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !5715           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !5716
  %i.l = sub i64 %3, %i.j, !dbg !5716
  %i.m = add i64 %i.l, 9216, !dbg !5716           ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i, !dbg !5716
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m, !dbg !5717
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !5716 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5718

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.a ], !dbg !5719 ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !5720
  %i.p = icmp ult i64 %i.o, 32, !dbg !5720
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5720

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ %i.d, %bb.b ], !dbg !5721
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.b ], !dbg !5722
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer, !dbg !5723

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5658 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !5658
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !5658 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !5724
  br i1 %i.y, label %bb.e, label %bb.f, !dbg !5724

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64, !dbg !5658
  br label %.loopexit, !dbg !5725

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null, !dbg !5726
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, !dbg !5726

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !5721
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5726

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ], !dbg !5662
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ], !dbg !5721 ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ], !dbg !5727
  br i1 %.lcssa, label %bb.h, label %bb.g, !dbg !5728

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5660 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !5660
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !5660 ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !5729
  br i1 %i.ae, label %bb.aa, label %bb.ab, !dbg !5729

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ], !dbg !5730 ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ], !dbg !5731 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !5732
  call void @llvm.assume(i1 %i.ag), !dbg !5733
  %i.ah = add nuw i64 %i.af, 32, !dbg !5734
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah, !dbg !5735
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !5736, !nonnull !306, !noundef !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af, !dbg !5737 ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread, !dbg !5735

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !5738
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !5738
  %.not = icmp eq i64 %i.am, -1, !dbg !5739
  br i1 %.not, label %bb.i, label %.loopexit, !dbg !5740

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !dbg !5741, !noundef !306 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !5742
  call void @llvm.assume(i1 %i.ao), !dbg !5743
  br label %bb.g, !dbg !5744

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !dbg !5745, !range !526, !noundef !306
  %i.aq = sub nsw i64 %i.ap, %i.af, !dbg !5746
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph), !dbg !5747
  br label %bb.k, !dbg !5748

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af, !dbg !5749 ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !dbg !5750, !range !526
  %.pre156 = sub nsw i64 %.pre153, %i.af, !dbg !5751 ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156, !dbg !5748
  br i1 %.not60, label %bb.l, label %bb.k, !dbg !5748, !prof !532

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af, !dbg !5752
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as, !dbg !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5754
  store ptr %i.ak, ptr %i.b, align 8, !dbg !5755
  store i64 %.sroa.034.0164, ptr %i.r, align 8, !dbg !5755
  store i64 0, ptr %i.s, align 8, !dbg !5755
  %spec.select = zext i1 %.not59 to i8, !dbg !5756
  store i8 %spec.select, ptr %i.t, align 8, !dbg !5757
  %i.at = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1O_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !5758 ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null, !dbg !5759
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121, !dbg !5760

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !5761
  unreachable, !dbg !5761

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64, !dbg !5762   ; 4 uses
  %i.aw = and i64 %i.av, 3, !dbg !5763
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !dbg !5764, !prof !446

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r, !dbg !5765

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32, !dbg !5766
  %i.az = trunc nuw i64 %i.ay to i32, !dbg !5766
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !5767
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !5767, !nonnull !306, !noundef !306
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !dbg !5767, !inline_history !181

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32, !dbg !5768
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr), !dbg !5769 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !5769 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1, !dbg !5770
  call void @llvm.assume(i1 %i.bf), !dbg !5771
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35, !dbg !5772
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit, !dbg !5773

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !5774
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !5774, !range !539, !noundef !306
  %i.bj = icmp eq i8 %i.bi, 35, !dbg !5775
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !5773

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31, !dbg !5776
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !5776, !range !539, !noundef !306
  %i.bm = icmp eq i8 %i.bl, 35, !dbg !5777
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit, !dbg !5773

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64, !dbg !5778
  br label %.split81._crit_edge, !dbg !5779

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ], !dbg !5758
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ], !dbg !5759
  %i.bo = load i64, ptr %i.s, align 8, !dbg !5779, !noundef !306 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !dbg !5780, !range !470, !noundef !306
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !5780    ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8, !dbg !5781 ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3, !dbg !5782
  %i.bs = icmp sgt i64 %.pre154, -1, !dbg !5783
  call void @llvm.assume(i1 %i.bs), !dbg !5784
  %i.bt = add i64 %.pre154, %i.bo, !dbg !5785     ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !5786
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165, !dbg !5787

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !5773

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5788
  br label %bb.p, !dbg !5789

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5788
  %i.bu = and i64 %i.av, 1095216660480, !dbg !5790
  %i.bv = icmp ne i64 %i.bu, 1095216660480, !dbg !5790
  call void @llvm.assume(i1 %i.be), !dbg !5791
  call void @llvm.assume(i1 %i.bv), !dbg !5791
  br label %bb.p, !dbg !5792

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1, !dbg !5793 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5788
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ], !dbg !5794
  store ptr %i.bw, ptr %i.u, align 8, !dbg !5795, !alias.scope !5697
  store i8 3, ptr %i.a, align 8, !dbg !5796, !alias.scope !5697
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !dbg !5797
  br label %bb.p, !dbg !5797

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5798
  %i.bx = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1O_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !5758 ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null, !dbg !5759
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121, !dbg !5760

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm, !dbg !5799

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.au) #22
          to label %bb.q unwind label %bb.s, !dbg !5800

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5799
  unreachable, !dbg !5799

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0, !dbg !5801
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !5801

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d, !dbg !5802
  br label %.loopexit165, !dbg !5803

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true, !dbg !5804
  %brmerge = or i1 %i.g, %.not64, !dbg !5804
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1, !dbg !5804
  br i1 %brmerge, label %bb.w, label %bb.x, !dbg !5804

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ], !dbg !5805
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ], !dbg !5805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5806
  br label %.loopexit, !dbg !5725

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ], !dbg !5807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5806
  br label %.outer, !dbg !5723

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ], !dbg !5721 ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !dbg !5808, !range !526, !noundef !306 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb, !dbg !5809
  %i.ce = icmp ult i64 %i.cd, 32, !dbg !5727      ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce, !dbg !5727
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge, !dbg !5727

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph, !dbg !5810
  br i1 %i.cg, label %bb.y, label %bb.w, !dbg !5810

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1, !dbg !5811
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0, !dbg !5811
  br i1 %i.ci, label %bb.z, label %bb.w, !dbg !5812, !prof !318

bb.z:                                             ; preds = %bb.y
  br label %bb.w, !dbg !5813

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ], !dbg !5814
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ], !dbg !5814
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr, !dbg !5815
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0, !dbg !5815
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1, !dbg !5815
  ret { i64, ptr } %i.cl, !dbg !5815

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64, !dbg !5660
  br label %.loopexit, !dbg !5725

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null, !dbg !5816
  %i.co = load i64, ptr %i.c, align 8, !dbg !5817, !noundef !306 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1, !dbg !5818
  call void @llvm.assume(i1 %i.cp), !dbg !5819
  br i1 %i.cn, label %bb.ac, label %bb.ad, !dbg !5816

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d, !dbg !5820
  br label %.loopexit, !dbg !5821

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !dbg !5808, !range !526, !noundef !306 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co, !dbg !5809
  %i.ct = icmp ult i64 %i.cs, 32, !dbg !5727      ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct, !dbg !5727
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge, !dbg !5727
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB6_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5822 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5968 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !5968, !noundef !306 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !5969
  tail call void @llvm.assume(i1 %i.e), !dbg !5970
  %i.f = load i64, ptr %1, align 8, !dbg !5971, !range !526, !noundef !306 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !5972       ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !5972

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !5973
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit, !dbg !5974, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !5973         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !5975           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !5976
  %i.l = sub i64 %3, %i.j, !dbg !5976
  %i.m = add i64 %i.l, 9216, !dbg !5976           ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i, !dbg !5976
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m, !dbg !5977
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !5976 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5978

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.a ], !dbg !5979 ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !5980
  %i.p = icmp ult i64 %i.o, 32, !dbg !5980
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5980

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ %i.d, %bb.b ], !dbg !5981
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.b ], !dbg !5982
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer, !dbg !5983

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5918 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !5918
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !5918 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !5984
  br i1 %i.y, label %bb.e, label %bb.f, !dbg !5984

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64, !dbg !5918
  br label %.loopexit, !dbg !5985

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null, !dbg !5986
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, !dbg !5986

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !5981
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !5986

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ], !dbg !5922
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ], !dbg !5981 ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ], !dbg !5987
  br i1 %.lcssa, label %bb.h, label %bb.g, !dbg !5988

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !5920 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !5920
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !5920 ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !5989
  br i1 %i.ae, label %bb.aa, label %bb.ab, !dbg !5989

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ], !dbg !5990 ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ], !dbg !5991 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !5992
  call void @llvm.assume(i1 %i.ag), !dbg !5993
  %i.ah = add nuw i64 %i.af, 32, !dbg !5994
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah, !dbg !5995
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !5996, !nonnull !306, !noundef !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af, !dbg !5997 ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread, !dbg !5995

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !5998
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !5998
  %.not = icmp eq i64 %i.am, -1, !dbg !5999
  br i1 %.not, label %bb.i, label %.loopexit, !dbg !6000

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !dbg !6001, !noundef !306 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !6002
  call void @llvm.assume(i1 %i.ao), !dbg !6003
  br label %bb.g, !dbg !6004

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !dbg !6005, !range !526, !noundef !306
  %i.aq = sub nsw i64 %i.ap, %i.af, !dbg !6006
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph), !dbg !6007
  br label %bb.k, !dbg !6008

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af, !dbg !6009 ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !dbg !6010, !range !526
  %.pre156 = sub nsw i64 %.pre153, %i.af, !dbg !6011 ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156, !dbg !6008
  br i1 %.not60, label %bb.l, label %bb.k, !dbg !6008, !prof !532

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af, !dbg !6012
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as, !dbg !6013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6014
  store ptr %i.ak, ptr %i.b, align 8, !dbg !6015
  store i64 %.sroa.034.0164, ptr %i.r, align 8, !dbg !6015
  store i64 0, ptr %i.s, align 8, !dbg !6015
  %spec.select = zext i1 %.not59 to i8, !dbg !6016
  store i8 %spec.select, ptr %i.t, align 8, !dbg !6017
  %i.at = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1G_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !6018 ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null, !dbg !6019
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121, !dbg !6020

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !6021
  unreachable, !dbg !6021

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64, !dbg !6022   ; 4 uses
  %i.aw = and i64 %i.av, 3, !dbg !6023
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !dbg !6024, !prof !446

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r, !dbg !6025

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32, !dbg !6026
  %i.az = trunc nuw i64 %i.ay to i32, !dbg !6026
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !6027
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !6027, !nonnull !306, !noundef !306
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !dbg !6027, !inline_history !181

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32, !dbg !6028
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr), !dbg !6029 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !6029 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1, !dbg !6030
  call void @llvm.assume(i1 %i.bf), !dbg !6031
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35, !dbg !6032
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit, !dbg !6033

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !6034
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !6034, !range !539, !noundef !306
  %i.bj = icmp eq i8 %i.bi, 35, !dbg !6035
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6033

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31, !dbg !6036
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !6036, !range !539, !noundef !306
  %i.bm = icmp eq i8 %i.bl, 35, !dbg !6037
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit, !dbg !6033

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64, !dbg !6038
  br label %.split81._crit_edge, !dbg !6039

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ], !dbg !6018
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ], !dbg !6019
  %i.bo = load i64, ptr %i.s, align 8, !dbg !6039, !noundef !306 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !dbg !6040, !range !470, !noundef !306
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !6040    ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8, !dbg !6041 ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3, !dbg !6042
  %i.bs = icmp sgt i64 %.pre154, -1, !dbg !6043
  call void @llvm.assume(i1 %i.bs), !dbg !6044
  %i.bt = add i64 %.pre154, %i.bo, !dbg !6045     ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !6046
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165, !dbg !6047

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6033

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6048
  br label %bb.p, !dbg !6049

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6048
  %i.bu = and i64 %i.av, 1095216660480, !dbg !6050
  %i.bv = icmp ne i64 %i.bu, 1095216660480, !dbg !6050
  call void @llvm.assume(i1 %i.be), !dbg !6051
  call void @llvm.assume(i1 %i.bv), !dbg !6051
  br label %bb.p, !dbg !6052

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1, !dbg !6053 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6048
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ], !dbg !6054
  store ptr %i.bw, ptr %i.u, align 8, !dbg !6055, !alias.scope !5957
  store i8 3, ptr %i.a, align 8, !dbg !6056, !alias.scope !5957
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !dbg !6057
  br label %bb.p, !dbg !6057

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6058
  %i.bx = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1G_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !6018 ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null, !dbg !6019
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121, !dbg !6020

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm, !dbg !6059

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.au) #22
          to label %bb.q unwind label %bb.s, !dbg !6060

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6059
  unreachable, !dbg !6059

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0, !dbg !6061
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !6061

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d, !dbg !6062
  br label %.loopexit165, !dbg !6063

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true, !dbg !6064
  %brmerge = or i1 %i.g, %.not64, !dbg !6064
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1, !dbg !6064
  br i1 %brmerge, label %bb.w, label %bb.x, !dbg !6064

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ], !dbg !6065
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ], !dbg !6065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6066
  br label %.loopexit, !dbg !5985

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ], !dbg !6067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6066
  br label %.outer, !dbg !5983

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ], !dbg !5981 ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !dbg !6068, !range !526, !noundef !306 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb, !dbg !6069
  %i.ce = icmp ult i64 %i.cd, 32, !dbg !5987      ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce, !dbg !5987
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge, !dbg !5987

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph, !dbg !6070
  br i1 %i.cg, label %bb.y, label %bb.w, !dbg !6070

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1, !dbg !6071
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0, !dbg !6071
  br i1 %i.ci, label %bb.z, label %bb.w, !dbg !6072, !prof !318

bb.z:                                             ; preds = %bb.y
  br label %bb.w, !dbg !6073

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ], !dbg !6074
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ], !dbg !6074
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr, !dbg !6075
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0, !dbg !6075
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1, !dbg !6075
  ret { i64, ptr } %i.cl, !dbg !6075

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64, !dbg !5920
  br label %.loopexit, !dbg !5985

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null, !dbg !6076
  %i.co = load i64, ptr %i.c, align 8, !dbg !6077, !noundef !306 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1, !dbg !6078
  call void @llvm.assume(i1 %i.cp), !dbg !6079
  br i1 %i.cn, label %bb.ac, label %bb.ad, !dbg !6076

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d, !dbg !6080
  br label %.loopexit, !dbg !6081

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !dbg !6068, !range !526, !noundef !306 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co, !dbg !6069
  %i.ct = icmp ult i64 %i.cs, 32, !dbg !5987      ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct, !dbg !5987
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge, !dbg !5987
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB6_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6082 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6228 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !6228, !noundef !306 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !6229
  tail call void @llvm.assume(i1 %i.e), !dbg !6230
  %i.f = load i64, ptr %1, align 8, !dbg !6231, !range !526, !noundef !306 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !6232       ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !6232

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !6233
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit, !dbg !6234, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !6233         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !6235           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !6236
  %i.l = sub i64 %3, %i.j, !dbg !6236
  %i.m = add i64 %i.l, 9216, !dbg !6236           ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i, !dbg !6236
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m, !dbg !6237
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !6236 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6238

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.a ], !dbg !6239 ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !6240
  %i.p = icmp ult i64 %i.o, 32, !dbg !6240
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6240

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ %i.d, %bb.b ], !dbg !6241
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.b ], !dbg !6242
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer, !dbg !6243

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !6178 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !6178
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !6178 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !6244
  br i1 %i.y, label %bb.e, label %bb.f, !dbg !6244

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64, !dbg !6178
  br label %.loopexit, !dbg !6245

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null, !dbg !6246
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, !dbg !6246

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !6241
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6246

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ], !dbg !6182
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ], !dbg !6241 ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ], !dbg !6247
  br i1 %.lcssa, label %bb.h, label %bb.g, !dbg !6248

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !6180 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !6180
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !6180 ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !6249
  br i1 %i.ae, label %bb.aa, label %bb.ab, !dbg !6249

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ], !dbg !6250 ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ], !dbg !6251 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !6252
  call void @llvm.assume(i1 %i.ag), !dbg !6253
  %i.ah = add nuw i64 %i.af, 32, !dbg !6254
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah, !dbg !6255
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !6256, !nonnull !306, !noundef !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af, !dbg !6257 ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread, !dbg !6255

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !6258
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !6258
  %.not = icmp eq i64 %i.am, -1, !dbg !6259
  br i1 %.not, label %bb.i, label %.loopexit, !dbg !6260

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !dbg !6261, !noundef !306 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !6262
  call void @llvm.assume(i1 %i.ao), !dbg !6263
  br label %bb.g, !dbg !6264

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !dbg !6265, !range !526, !noundef !306
  %i.aq = sub nsw i64 %i.ap, %i.af, !dbg !6266
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph), !dbg !6267
  br label %bb.k, !dbg !6268

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af, !dbg !6269 ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !dbg !6270, !range !526
  %.pre156 = sub nsw i64 %.pre153, %i.af, !dbg !6271 ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156, !dbg !6268
  br i1 %.not60, label %bb.l, label %bb.k, !dbg !6268, !prof !532

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af, !dbg !6272
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as, !dbg !6273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6274
  store ptr %i.ak, ptr %i.b, align 8, !dbg !6275
  store i64 %.sroa.034.0164, ptr %i.r, align 8, !dbg !6275
  store i64 0, ptr %i.s, align 8, !dbg !6275
  %spec.select = zext i1 %.not59 to i8, !dbg !6276
  store i8 %spec.select, ptr %i.t, align 8, !dbg !6277
  %i.at = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !6278 ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null, !dbg !6279
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121, !dbg !6280

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !6281
  unreachable, !dbg !6281

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64, !dbg !6282   ; 4 uses
  %i.aw = and i64 %i.av, 3, !dbg !6283
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !dbg !6284, !prof !446

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r, !dbg !6285

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32, !dbg !6286
  %i.az = trunc nuw i64 %i.ay to i32, !dbg !6286
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !6287
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !6287, !nonnull !306, !noundef !306
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !dbg !6287, !inline_history !181

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32, !dbg !6288
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr), !dbg !6289 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !6289 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1, !dbg !6290
  call void @llvm.assume(i1 %i.bf), !dbg !6291
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35, !dbg !6292
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit, !dbg !6293

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !6294
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !6294, !range !539, !noundef !306
  %i.bj = icmp eq i8 %i.bi, 35, !dbg !6295
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6293

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31, !dbg !6296
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !6296, !range !539, !noundef !306
  %i.bm = icmp eq i8 %i.bl, 35, !dbg !6297
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit, !dbg !6293

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64, !dbg !6298
  br label %.split81._crit_edge, !dbg !6299

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ], !dbg !6278
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ], !dbg !6279
  %i.bo = load i64, ptr %i.s, align 8, !dbg !6299, !noundef !306 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !dbg !6300, !range !470, !noundef !306
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !6300    ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8, !dbg !6301 ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3, !dbg !6302
  %i.bs = icmp sgt i64 %.pre154, -1, !dbg !6303
  call void @llvm.assume(i1 %i.bs), !dbg !6304
  %i.bt = add i64 %.pre154, %i.bo, !dbg !6305     ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !6306
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165, !dbg !6307

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6293

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6308
  br label %bb.p, !dbg !6309

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6308
  %i.bu = and i64 %i.av, 1095216660480, !dbg !6310
  %i.bv = icmp ne i64 %i.bu, 1095216660480, !dbg !6310
  call void @llvm.assume(i1 %i.be), !dbg !6311
  call void @llvm.assume(i1 %i.bv), !dbg !6311
  br label %bb.p, !dbg !6312

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1, !dbg !6313 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ], !dbg !6314
  store ptr %i.bw, ptr %i.u, align 8, !dbg !6315, !alias.scope !6217
  store i8 3, ptr %i.a, align 8, !dbg !6316, !alias.scope !6217
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !dbg !6317
  br label %bb.p, !dbg !6317

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6318
  %i.bx = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !6278 ; 2 uses
  %.not61 = icmp eq ptr %i.bx, null, !dbg !6279
  br i1 %.not61, label %.split81._crit_edge.loopexit, label %.lr.ph121, !dbg !6280

bb.q:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.thr_comm, !dbg !6319

bb.r:                                             ; preds = %.noexc, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.au) #22
          to label %bb.q unwind label %bb.s, !dbg !6320

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6319
  unreachable, !dbg !6319

bb.t:                                             ; preds = %.split81._crit_edge
  %i.bz = icmp eq i64 %i.bo, 0, !dbg !6321
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !6321

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i64 %i.bt, %i.d, !dbg !6322
  br label %.loopexit165, !dbg !6323

bb.v:                                             ; preds = %bb.t
  %.not64 = xor i1 %i.bq, true, !dbg !6324
  %brmerge = or i1 %i.g, %.not64, !dbg !6324
  %.sroa.053.3.mux = select i1 %i.g, i64 %.sroa.053.3.ph, i64 -1, !dbg !6324
  br i1 %brmerge, label %bb.w, label %bb.x, !dbg !6324

.loopexit165:                                     ; preds = %.split81._crit_edge, %bb.u
  %.sroa.8.0 = phi i64 [ %i.ca, %bb.u ], [ %.lcssa100, %.split81._crit_edge ], !dbg !6325
  %.sroa.07.0 = phi i64 [ 0, %bb.u ], [ 1, %.split81._crit_edge ], !dbg !6325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6326
  br label %.loopexit, !dbg !6245

bb.w:                                             ; preds = %bb.v, %bb.z, %bb.y, %bb.x
  %.sroa.053.4 = phi i64 [ -1, %bb.z ], [ %i.ch, %bb.y ], [ %.sroa.053.3.ph, %bb.x ], [ %.sroa.053.3.mux, %bb.v ], !dbg !6327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6326
  br label %.outer, !dbg !6243

.outer:                                           ; preds = %bb.w, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread
  %i.cb = phi i64 [ %i.bt, %bb.w ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ], !dbg !6241 ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.w ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select178, %bb.w ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread ]
  %i.cc = load i64, ptr %1, align 8, !dbg !6328, !range !526, !noundef !306 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb, !dbg !6329
  %i.ce = icmp ult i64 %i.cd, 32, !dbg !6247      ; 2 uses
  %i.cf = icmp eq i64 %i.cc, %i.f
  %or.cond63115 = and i1 %i.cf, %i.ce, !dbg !6247
  br i1 %or.cond63115, label %.lr.ph, label %._crit_edge, !dbg !6247

bb.x:                                             ; preds = %bb.v
  %i.cg = icmp eq i64 %i.bo, %.sroa.053.3.ph, !dbg !6330
  br i1 %i.cg, label %bb.y, label %bb.w, !dbg !6330

bb.y:                                             ; preds = %bb.x
  %i.ch = shl nuw i64 %.sroa.053.3.ph, 1, !dbg !6331
  %i.ci = icmp slt i64 %.sroa.053.3.ph, 0, !dbg !6331
  br i1 %i.ci, label %bb.z, label %bb.w, !dbg !6332, !prof !318

bb.z:                                             ; preds = %bb.y
  br label %bb.w, !dbg !6333

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.aa, %bb.ac, %bb.e, %.loopexit165
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %.loopexit165 ], [ %i.cm, %bb.aa ], [ %i.cq, %bb.ac ], [ 0, %bb.f ], [ 163208757251, %bb.h ], !dbg !6334
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit165 ], [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.h ], !dbg !6334
  %i.cj = inttoptr i64 %.sroa.8.1 to ptr, !dbg !6335
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0, !dbg !6335
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1, !dbg !6335
  ret { i64, ptr } %i.cl, !dbg !6335

bb.aa:                                            ; preds = %.lr.ph
  %i.cm = ptrtoint ptr %i.ad to i64, !dbg !6180
  br label %.loopexit, !dbg !6245

bb.ab:                                            ; preds = %.lr.ph
  %i.cn = icmp eq ptr %i.ad, null, !dbg !6336
  %i.co = load i64, ptr %i.c, align 8, !dbg !6337, !noundef !306 ; 5 uses
  %i.cp = icmp sgt i64 %i.co, -1, !dbg !6338
  call void @llvm.assume(i1 %i.cp), !dbg !6339
  br i1 %i.cn, label %bb.ac, label %bb.ad, !dbg !6336

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nsw i64 %i.co, %i.d, !dbg !6340
  br label %.loopexit, !dbg !6341

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %1, align 8, !dbg !6328, !range !526, !noundef !306 ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %i.co, !dbg !6329
  %i.ct = icmp ult i64 %i.cs, 32, !dbg !6247      ; 2 uses
  %i.cu = icmp eq i64 %i.cr, %i.f
  %or.cond63 = and i1 %i.cu, %i.ct, !dbg !6247
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge, !dbg !6247
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB6_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6342 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6488 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !6488, !noundef !306 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !6489
  tail call void @llvm.assume(i1 %i.e), !dbg !6490
  %i.f = load i64, ptr %1, align 8, !dbg !6491, !range !526, !noundef !306 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1, !dbg !6492       ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !6492

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025, !dbg !6493
  br i1 %i.h, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit, !dbg !6494, !prof !318

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024, !dbg !6493         ; 3 uses
  %i.j = and i64 %i.i, 8191, !dbg !6495           ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !6496
  %i.l = sub i64 %3, %i.j, !dbg !6496
  %i.m = add i64 %i.l, 9216, !dbg !6496           ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i, !dbg !6496
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m, !dbg !6497
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i, !dbg !6496 ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6498

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.a ], !dbg !6499 ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d, !dbg !6500
  %i.p = icmp ult i64 %i.o, 32, !dbg !6500
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6500

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ %i.d, %bb.b ], !dbg !6501
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit ], [ 8192, %bb.b ], !dbg !6502
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer, !dbg !6503

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !6438 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0, !dbg !6438
  %i.x = extractvalue { i64, ptr } %i.v, 1, !dbg !6438 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !6504
  br i1 %i.y, label %bb.e, label %bb.f, !dbg !6504

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64, !dbg !6438
  br label %.loopexit, !dbg !6505

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null, !dbg !6506
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge, !dbg !6506

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8, !dbg !6501
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEE0Cs2NzvFoTxuAy_2rg.exit.thread, !dbg !6506

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ], !dbg !6442
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ], !dbg !6501 ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ], !dbg !6507
  br i1 %.lcssa, label %bb.h, label %bb.g, !dbg !6508

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtB8_3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1), !dbg !6440 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !6440
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !6440 ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !6509
  br i1 %i.ae, label %bb.aa, label %bb.ab, !dbg !6509

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ], !dbg !6510 ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ], !dbg !6511 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !6512
  call void @llvm.assume(i1 %i.ag), !dbg !6513
  %i.ah = add nuw i64 %i.af, 32, !dbg !6514
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah, !dbg !6515
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !6516, !nonnull !306, !noundef !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af, !dbg !6517 ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread, !dbg !6515

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1), !dbg !6518
  %i.am = extractvalue { i64, i64 } %i.al, 0, !dbg !6518
  %.not = icmp eq i64 %i.am, -1, !dbg !6519
  br i1 %.not, label %bb.i, label %.loopexit, !dbg !6520

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !dbg !6521, !noundef !306 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !6522
  call void @llvm.assume(i1 %i.ao), !dbg !6523
  br label %bb.g, !dbg !6524

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !dbg !6525, !range !526, !noundef !306
  %i.aq = sub nsw i64 %i.ap, %i.af, !dbg !6526
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph), !dbg !6527
  br label %bb.k, !dbg !6528

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af, !dbg !6529 ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !dbg !6530, !range !526
  %.pre156 = sub nsw i64 %.pre153, %i.af, !dbg !6531 ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156, !dbg !6528
  br i1 %.not60, label %bb.l, label %bb.k, !dbg !6528, !prof !532

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af, !dbg !6532
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as, !dbg !6533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6534
  store ptr %i.ak, ptr %i.b, align 8, !dbg !6535
  store i64 %.sroa.034.0164, ptr %i.r, align 8, !dbg !6535
  store i64 0, ptr %i.s, align 8, !dbg !6535
  %spec.select = zext i1 %.not59 to i8, !dbg !6536
  store i8 %spec.select, ptr %i.t, align 8, !dbg !6537
  %i.at = call noundef ptr @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB11_2io4read4Read8read_bufCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b), !dbg !6538 ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null, !dbg !6539
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121, !dbg !6540

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !dbg !6541
  unreachable, !dbg !6541

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64, !dbg !6542   ; 4 uses
  %i.aw = and i64 %i.av, 3, !dbg !6543
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !dbg !6544, !prof !446

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r, !dbg !6545

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32, !dbg !6546
  %i.az = trunc nuw i64 %i.ay to i32, !dbg !6546
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !6547
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !6547, !nonnull !306, !noundef !306
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !dbg !6547, !inline_history !181

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32, !dbg !6548
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr), !dbg !6549 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !6549 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1, !dbg !6550
  call void @llvm.assume(i1 %i.bf), !dbg !6551
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35, !dbg !6552
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit, !dbg !6553

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !6554
  %i.bi = load i8, ptr %i.bh, align 8, !dbg !6554, !range !539, !noundef !306
  %i.bj = icmp eq i8 %i.bi, 35, !dbg !6555
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6553

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31, !dbg !6556
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !6556, !range !539, !noundef !306
  %i.bm = icmp eq i8 %i.bl, 35, !dbg !6557
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit, !dbg !6553

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64, !dbg !6558
  br label %.split81._crit_edge, !dbg !6559

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ], !dbg !6538
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ], !dbg !6539
  %i.bo = load i64, ptr %i.s, align 8, !dbg !6559, !noundef !306 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !dbg !6560, !range !470, !noundef !306
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !6560    ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8, !dbg !6561 ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3, !dbg !6562
  %i.bs = icmp sgt i64 %.pre154, -1, !dbg !6563
  call void @llvm.assume(i1 %i.bs), !dbg !6564
  %i.bt = add i64 %.pre154, %i.bo, !dbg !6565     ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8, !dbg !6566
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165, !dbg !6567

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit, !dbg !6553

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6568
  br label %bb.p, !dbg !6569

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6568
  %i.bu = and i64 %i.av, 1095216660480, !dbg !6570
  %i.bv = icmp ne i64 %i.bu, 1095216660480, !dbg !6570
  call void @llvm.assume(i1 %i.be), !dbg !6571
  call void @llvm.assume(i1 %i.bv), !dbg !6571
  br label %bb.p, !dbg !6572

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1, !dbg !6573 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6568
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ], !dbg !6574
  store ptr %i.bw, ptr %i.u, align 8, !dbg !6575, !alias.scope !6477
  store i8 3, ptr %i.a, align 8, !dbg !6576, !alias.scope !6477
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !dbg !6577
  br label %bb.p, !dbg !6577

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6578
end_hunk_1
