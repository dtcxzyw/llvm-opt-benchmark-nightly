Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.15?download=true
inline.NumInlined: 900
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_2pg10connection12PgConnectionE18commit_transactionCs2bNgeUs5Jlc_6diesel:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1476
  %i.az = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1476 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.al, label %bb.ao, !prof !8

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %.thread113.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store ptr %i.az, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1477
  %i.bd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1477 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ap, label %bb.as, !prof !8

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc108 unwind label %bb.aq

.noexc108:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.aq
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %.thread113 unwind label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775803, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %.sroa.548.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.at:                                            ; preds = %.thread113.thread, %.body, %.thread113, %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread113.thread:                                ; preds = %bb.am, %.thread
  %.pn.pn112 = phi { ptr, i32 } [ %i.at, %.thread ], [ %i.bb, %bb.am ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %.thread113 unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_2pg10connection12PgConnectionE20rollback_transactionCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 101 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !range !20, !noundef !4 ; 2 uses
  switch i8 %i.k, label %bb.c [
    i8 -1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1                      ; 2 uses
  br i1 %i.m, label %bb.f, label %.split

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, %bb.d, %bb.b
  ret void

.split:                                           ; preds = %bb.c
  %i.n = add i32 %i.l, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.n, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @48, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.014.0.copyload15 = load i64, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload17 = load ptr, ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.418.0.copyload20 = load i64, ptr %.sroa.418.0..sroa_idx19, align 8
  %.pre = load i8, ptr %i.j, align 1, !range !23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.split
  %i.o = phi i8 [ %.pre, %.split ], [ %i.k, %bb.c ]
  %.sroa.418.0 = phi i64 [ %.sroa.418.0.copyload20, %.split ], [ 8, %bb.c ]
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload17, %.split ], [ @47, %bb.c ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload15, %.split ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !24, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.014.0, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.418.0, ptr %.sroa.418.0..sroa_idx, align 8
  %.not83 = icmp eq i8 %i.o, 2
  br i1 %.not83, label %bb.g, label %bb.j, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #27
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.i, align 8, !range !21, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1484, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1484, !nonnull !4, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.3.0.i = select i1 %.not.i, ptr @37, ptr %i.x
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.y, ptr %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.t, ptr %i.z, align 4
  store i32 7, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ab(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4
  %i.ad = load i64, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg10connectionNtB4_12PgConnectionNtNtB8_10connection16SimpleConnection13batch_execute(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not85 = icmp eq i64 %i.ae, -1
  br i1 %.not85, label %bb.n, label %bb.ae

bb.m:                                             ; preds = %bb.p, %bb.t, %bb.aj
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_29ValidTransactionManagerStatus24change_transaction_depth(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %i.ai = load i64, ptr %i.b, align 8, !range !7, !noundef !4 ; 2 uses
  %.not86 = icmp eq i64 %i.ai, -1                 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775800
  %or.cond = and i1 %i.m, %i.aj
  %or.cond92 = or i1 %.not86, %or.cond
  br i1 %or.cond92, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not86, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.ah, %bb.u
  %i.ak = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1485, !noundef !4
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.m, %bb.ac, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.ac ], [ %i.am, %bb.x ], [ %i.af, %bb.m ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.z:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ak, %bb.z
  %i.ao = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1486, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95: ; preds = %bb.ab
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.as = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  switch i8 %i.as, label %bb.ag [
    i8 -1, label %bb.af
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ag
  store i8 -1, ptr %i.j, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.at = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.au = icmp ugt i32 %i.at, 1
  br i1 %i.au, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.ae, %bb.ai, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.ai:                                            ; preds = %bb.ag
  %i.av = add i32 %i.at, -1
  store i32 %i.av, ptr %i.i, align 8
  store i8 1, ptr %i.p, align 4
  br i1 %i.r, label %bb.aj, label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.al:                                            ; preds = %bb.m, %bb.h
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_5mysql10connection15MysqlConnectionE17begin_transactionCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 53 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !20, !noundef !4
  switch i8 %i.i, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.t

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @38, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 5, ptr %i.k, align 8
  store i64 -1, ptr %i.f, align 8
  %i.l = load ptr, ptr %1, align 8, !alias.scope !1493, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1493, !nonnull !4, !align !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.f) #28
          to label %common.resume unwind label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.g, align 8, !range !21, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_5mysql10connection15MysqlConnectionE18commit_transactionCs2bNgeUs5Jlc_6diesel:bb.a
  store i8 -1, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1509
  %i.ay = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1509 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.al, label %bb.ao, !prof !8

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %.thread113.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store ptr %i.ay, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1510
  %i.bc = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1510 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.ap, label %bb.as, !prof !8

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc108 unwind label %bb.aq

.noexc108:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.aq
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %.thread113 unwind label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775803, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bc, ptr %.sroa.548.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.at:                                            ; preds = %.thread113.thread, %.body, %.thread113, %bb.h
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread113.thread:                                ; preds = %bb.am, %.thread
  %.pn.pn112 = phi { ptr, i32 } [ %i.as, %.thread ], [ %i.ba, %bb.am ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %.thread113 unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_5mysql10connection15MysqlConnectionE20rollback_transactionCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 53 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !range !20, !noundef !4 ; 2 uses
  switch i8 %i.k, label %bb.c [
    i8 -1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1                      ; 2 uses
  br i1 %i.m, label %bb.f, label %.split

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, %bb.d, %bb.b
  ret void

.split:                                           ; preds = %bb.c
  %i.n = add i32 %i.l, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.n, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @48, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.014.0.copyload15 = load i64, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload17 = load ptr, ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.418.0.copyload20 = load i64, ptr %.sroa.418.0..sroa_idx19, align 8
  %.pre = load i8, ptr %i.j, align 1, !range !23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.split
  %i.o = phi i8 [ %.pre, %.split ], [ %i.k, %bb.c ]
  %.sroa.418.0 = phi i64 [ %.sroa.418.0.copyload20, %.split ], [ 8, %bb.c ]
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload17, %.split ], [ @47, %bb.c ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload15, %.split ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !24, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.014.0, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.418.0, ptr %.sroa.418.0..sroa_idx, align 8
  %.not83 = icmp eq i8 %i.o, 2
  br i1 %.not83, label %bb.g, label %bb.j, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #27
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.i, align 8, !range !21, !noundef !4
  %i.u = load ptr, ptr %1, align 8, !alias.scope !1517, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1517, !nonnull !4, !align !6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.i = select i1 %.not.i, ptr @37, ptr %i.w
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.x, ptr %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.t, ptr %i.y, align 4
  store i32 7, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.aa(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4
  %i.ac = load i64, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB4_15MysqlConnectionNtNtB8_10connection16SimpleConnection13batch_execute(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not85 = icmp eq i64 %i.ad, -1
  br i1 %.not85, label %bb.n, label %bb.ae

bb.m:                                             ; preds = %bb.p, %bb.t, %bb.aj
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_29ValidTransactionManagerStatus24change_transaction_depth(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.b, align 8, !range !7, !noundef !4 ; 2 uses
  %.not86 = icmp eq i64 %i.ah, -1                 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775800
  %or.cond = and i1 %i.m, %i.ai
  %or.cond92 = or i1 %.not86, %or.cond
  br i1 %or.cond92, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not86, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.ah, %bb.u
  %i.aj = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1518, !noundef !4
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.m, %bb.ac, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.al, %bb.x ], [ %i.ae, %bb.m ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.z:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ak, %bb.z
  %i.an = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1519, !noundef !4
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95: ; preds = %bb.ab
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ar = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  switch i8 %i.ar, label %bb.ag [
    i8 -1, label %bb.af
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ag
  store i8 -1, ptr %i.j, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.as = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.ae, %bb.ai, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.ai:                                            ; preds = %bb.ag
  %i.au = add i32 %i.as, -1
  store i32 %i.au, ptr %i.i, align 8
  store i8 1, ptr %i.p, align 4
  br i1 %i.r, label %bb.aj, label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.al:                                            ; preds = %bb.m, %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_6sqlite10connection16SqliteConnectionE17begin_transactionCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 29 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !20, !noundef !4
  switch i8 %i.i, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.t

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @38, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 5, ptr %i.k, align 8
  store i64 -1, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1526, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1526, !nonnull !4, !align !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.f) #28
          to label %common.resume unwind label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.g, align 8, !range !21, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_6sqlite10connection16SqliteConnectionE18commit_transactionCs2bNgeUs5Jlc_6diesel:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1542
  %i.az = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1542 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.al, label %bb.ao, !prof !8

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %.thread113.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store ptr %i.az, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1543
  %i.bd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2665) 32, i64 noundef range(i64 1, 9) 8) #26, !noalias !1543 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ap, label %bb.as, !prof !8

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc108 unwind label %bb.aq

.noexc108:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.aq
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %.thread113 unwind label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775803, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %.sroa.548.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.at:                                            ; preds = %.thread113.thread, %.body, %.thread113, %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread113.thread:                                ; preds = %bb.am, %.thread
  %.pn.pn112 = phi { ptr, i32 } [ %i.at, %.thread ], [ %i.bb, %bb.am ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %.thread113 unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_6sqlite10connection16SqliteConnectionE20rollback_transactionCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 29 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !range !20, !noundef !4 ; 2 uses
  switch i8 %i.k, label %bb.c [
    i8 -1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1                      ; 2 uses
  br i1 %i.m, label %bb.f, label %.split

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, %bb.d, %bb.b
  ret void

.split:                                           ; preds = %bb.c
  %i.n = add i32 %i.l, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.n, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @48, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.014.0.copyload15 = load i64, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload17 = load ptr, ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.418.0.copyload20 = load i64, ptr %.sroa.418.0..sroa_idx19, align 8
  %.pre = load i8, ptr %i.j, align 1, !range !23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.split
  %i.o = phi i8 [ %.pre, %.split ], [ %i.k, %bb.c ]
  %.sroa.418.0 = phi i64 [ %.sroa.418.0.copyload20, %.split ], [ 8, %bb.c ]
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload17, %.split ], [ @47, %bb.c ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload15, %.split ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !24, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.014.0, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.418.0, ptr %.sroa.418.0..sroa_idx, align 8
  %.not83 = icmp eq i8 %i.o, 2
  br i1 %.not83, label %bb.g, label %bb.j, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #27
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.i, align 8, !range !21, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1550, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1550, !nonnull !4, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.3.0.i = select i1 %.not.i, ptr @37, ptr %i.x
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.y, ptr %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.t, ptr %i.z, align 4
  store i32 7, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ab(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4
  %i.ad = load i64, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite10connectionNtB4_16SqliteConnectionNtNtB8_10connection16SimpleConnection13batch_execute(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not85 = icmp eq i64 %i.ae, -1
  br i1 %.not85, label %bb.n, label %bb.ae

bb.m:                                             ; preds = %bb.p, %bb.t, %bb.aj
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.al

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_29ValidTransactionManagerStatus24change_transaction_depth(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %i.ai = load i64, ptr %i.b, align 8, !range !7, !noundef !4 ; 2 uses
  %.not86 = icmp eq i64 %i.ai, -1                 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775800
  %or.cond = and i1 %i.m, %i.aj
  %or.cond92 = or i1 %.not86, %or.cond
  br i1 %or.cond92, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not86, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.ah, %bb.u
  %i.ak = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1551, !noundef !4
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.m, %bb.ac, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.ac ], [ %i.am, %bb.x ], [ %i.af, %bb.m ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.z:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ak, %bb.z
  %i.ao = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1552, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95: ; preds = %bb.ab
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.as = load i8, ptr %i.j, align 1, !range !20, !noundef !4
  switch i8 %i.as, label %bb.ag [
    i8 -1, label %bb.af
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ag
  store i8 -1, ptr %i.j, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.at = load i32, ptr %i.i, align 8, !range !21, !noundef !4 ; 2 uses
  %i.au = icmp ugt i32 %i.at, 1
  br i1 %i.au, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.ae, %bb.ai, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.ai:                                            ; preds = %bb.ag
  %i.av = add i32 %i.at, -1
  store i32 %i.av, ptr %i.i, align 8
  store i8 1, ptr %i.p, align 4
  br i1 %i.r, label %bb.aj, label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.al:                                            ; preds = %bb.m, %bb.h
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl3rowNtB5_11MultiCursorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %1, align 8, !range !1553, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp sgt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection6cursorNtB5_6CursorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.j = load i64, ptr %i.c, align 8, !range !1554, !noundef !4 ; 3 uses
  %.not95 = icmp eq i64 %i.j, -2
  br i1 %.not95, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection18statement_iteratorNtB5_17StatementIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
  %i.k = load i64, ptr %i.b, align 8, !range !1554, !noundef !4 ; 3 uses
  %.not93 = icmp eq i64 %i.k, -2
  br i1 %.not93, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB4_17StatementIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !range !1554, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.m, -2
  br i1 %.not, label %bb.r, label %bb.q

end_hunk_2
