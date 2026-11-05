Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.02?download=true
inline.NumInlined: 118
inline.NumDeleted: 36
begin_hunk_0_@_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before:bb.a
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.k, i64 %i.e, i1 false)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit: ; preds = %bb.d, %bb.e
  store i8 %1, ptr %i.k, align 1
  %i.m = add nuw i64 %i.e, 1
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !55
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef align 8 dereferenceable(664) %0, i8 noundef range(i8 0, -85) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !64 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.419.sroa.0 = alloca [48 x i8], align 8   ; 4 uses
  %.sroa.05 = alloca [16 x i8], align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.f = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = load i64, ptr %i.e, align 8, !range !10, !noundef !7
  %i.h = icmp ult i64 %i.f, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 4 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_9tokenizerNtB2h_9Tokenizer4exit0EBU_.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_9tokenizerNtB2h_9Tokenizer4exit0EBU_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.m = load i8, ptr %i.l, align 2, !range !12, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 651
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 10
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_9tokenizerNtB2h_9Tokenizer4exit0EBU_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.val = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %.not.i32 = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i32, label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load ptr, ptr %i.s, align 8, !noalias !65, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !noalias !65, !noundef !7 ; 2 uses
  %i.w = add nsw i64 %i.v, -1
  br label %.lr.ph

bb.f:                                             ; preds = %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.5.133 = phi i64 [ %i.x, %bb.f ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ] ; 4 uses
  %i.x = add i64 %.sroa.5.133, -1                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67
  store ptr @7, ptr %i.a, align 8, !noalias !67
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !67
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16, !noalias !67
  unreachable

bb.h:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !66, !noalias !65, !noundef !7
  %cond.i = icmp eq i8 %i.aa, 13
  %i.ab = icmp samesign ult i64 %i.x, %i.w
  %or.cond.i = select i1 %cond.i, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i, label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit

_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.5.133
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !66, !noalias !65, !noundef !7
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %bb.f, label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit

bb.i:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_9tokenizerNtB2h_9Tokenizer4exit0EBU_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.sroa.517.0.copyload = load i64, ptr %.sroa.517.0..sroa_idx, align 8
  br label %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit

_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit: ; preds = %bb.h, %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i, %bb.f, %bb.e, %bb.i
  %.sroa.8.0 = phi i64 [ %.sroa.517.0.copyload, %bb.i ], [ %.sroa.8.0.copyload, %bb.e ], [ %.sroa.8.0.copyload, %bb.f ], [ %.sroa.8.0.copyload, %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i ], [ %.sroa.8.0.copyload, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.4.0.copyload, %bb.i ], [ 0, %bb.e ], [ %.sroa.5.133, %bb.h ], [ %.sroa.5.133, %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer11byte_action.exit.i ], [ 0, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.sroa.0)
  %.sroa.419.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.sroa.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, i64 16, i1 false)
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !alias.scope !68, !noundef !7
  %i.ai = icmp eq i64 %i.j, %i.ah
  br i1 %i.ai, label %bb.j, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8push_mutBI_.exit

bb.j:                                             ; preds = %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !69
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8push_mutBI_.exit: ; preds = %_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer15move_point_back.exit, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !68, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.ak, i64 %i.j ; 6 uses
  store i64 2, ptr %i.al, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.sroa.0, i64 48, i1 false)
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %.sroa.5.0, ptr %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx, align 8
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %.sroa.8.0, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i8 1, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 73
  store i8 %1, ptr %.sroa.6.0..sroa_idx, align 1
  %i.am = add i64 %i.j, 1
  store i64 %i.am, ptr %i.i, align 8, !alias.scope !68
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %6) unnamed_addr #0 !guid !70 {
bb.a:
  tail call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer9push_impl(ptr noalias noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %6, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check(ptr noalias noundef align 8 dereferenceable(664) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !74 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.i, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %3 = load <2 x i16>, ptr %i.b, align 8
  %4 = shufflevector <2 x i16> %3, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %4, ptr %.sroa.64.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !75, !noundef !7 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !10, !alias.scope !75, !noundef !7
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8push_mutBI_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8push_mutBI_.exit unwind label %bb.c, !noalias !76

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8push_mutBI_.exit: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !75, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  %i.w = add i64 %i.o, 1
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef align 8 dereferenceable(664) %0, i8 noundef range(i8 0, -85) %1) unnamed_addr #0 !guid !77 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %0, i8 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5flush(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(664) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !91 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 14 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer9push_impl(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef align 8 dereferenceable(664) %1, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(48) %2, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCs2KzzoC5ewhj_8markdown5stateNtB2_5State9to_result(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.j, %bb.c
  %.pn13 = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn11, %.body ], [ %i.aq, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.j) #15
          to label %bb.ak unwind label %bb.ai

bb.c:                                             ; preds = %bb.g, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit26, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.i, align 8, !range !92, !noundef !7
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !94, !noundef !7 ; 5 uses
  %i.t = icmp ult i64 %i.s, 384307168202282326
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !95
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 -288230376151711743, -9223372036854775808) %i.s, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  %i.u = load i64, ptr %i.c, align 8, !range !13, !noalias !95, !noundef !7
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !14, !noalias !95, !noundef !7 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8, !noalias !95
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #16
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !95, !nonnull !7, !noundef !7 ; 2 uses
  %i.ab = icmp ule i64 %i.s, %i.x
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !95
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !alias.scope !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !94
  store i64 %i.s, ptr %i.ad, align 8, !alias.scope !93
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !94, !nonnull !7, !noundef !7
  %i.ag = mul nuw nsw i64 %i.s, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false), !noalias !95
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !96, !noundef !7 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 -288230376151711743, -9223372036854775808) %i.ai, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %bb.h
  %i.ak = load i64, ptr %i.b, align 8, !range !13, !noalias !97, !noundef !7
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !14, !noalias !97, !noundef !7 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.k, !prof !11

bb.i:                                             ; preds = %.noexc16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !97
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #16
          to label %.noexc17 unwind label %bb.j

.noexc17:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.g) #15
          to label %bb.b unwind label %bb.ai

bb.k:                                             ; preds = %.noexc16
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !97, !nonnull !7, !noundef !7 ; 2 uses
  %i.as = icmp ule i64 %i.ai, %i.an
  call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  store i64 0, ptr %i.ah, align 8, !alias.scope !96
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !96, !nonnull !7, !noundef !7
  %i.av = mul nuw nsw i64 %i.ai, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.au, i64 %i.av, i1 false), !noalias !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 0, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %i.an, ptr %i.ax, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.ar, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs2KzzoC5ewhj_8markdown4util11mdx_collect7collect:bb.a
  br i1 %i.o, label %bb.e, label %._crit_edge30

._crit_edge30:                                    ; preds = %bb.d
  %.pre = add nuw nsw i64 %.sroa.0.023, 1
  br label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = add nuw nsw i64 %.sroa.0.023, 1          ; 4 uses
  %i.q = icmp ult i64 %i.p, %2
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.r, ptr %i.a, align 8
  store ptr %i.t, ptr %i.g, align 8
  invoke void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !noundef !7 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.x = load i64, ptr %i.w, align 8, !noundef !7
  %i.y = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !166, !noundef !7 ; 3 uses
  %i.z = load i64, ptr %i.e, align 8, !range !10, !alias.scope !166, !noundef !7
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #15
          to label %.body unwind label %bb.r

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !166, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  store i64 %i.u, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.x, ptr %i.ae, align 8
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !166
  %i.ag = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.ah = load i64, ptr %i.i, align 8, !noundef !7 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ah)
          to label %.noexc19 unwind label %bb.k

.noexc19:                                         ; preds = %bb.l
  %i.ai = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !167, !noundef !7 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc19
  %i.ak = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !167, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ag, i64 %i.ah, i1 false)
  %.pre.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !167
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc19
  %i.am = phi i64 [ %.pre.i, %bb.m ], [ %i.ai, %.noexc19 ]
  %i.an = add i64 %i.am, %i.ah
  store i64 %i.an, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !167
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge30, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit
  %.old.pre-phi = phi i64 [ %.pre, %._crit_edge30 ], [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit ] ; 2 uses
  %.old25 = icmp ult i64 %.old.pre-phi, %2
  br i1 %.old25, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.q, %bb.t
  %.sroa.0.023.be = phi i64 [ %.old.pre-phi, %bb.q ], [ %i.as, %bb.t ]
  br label %.backedge

bb.r:                                             ; preds = %bb.k, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.s:                                             ; preds = %.backedge
  %i.ar = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.as = add nuw nsw i64 %.sroa.0.023, 1         ; 2 uses
  %i.at = icmp uge i64 %i.as, %2
  %or.cond.not = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond.not, label %._crit_edge, label %.backedge.backedge

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter10open_after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !179 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 13 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 10
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %i.i, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  store i64 2, ptr %i.b, align 8, !noalias !180
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 105, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.j = load i8, ptr %i.c, align 8, !range !12, !alias.scope !181, !noundef !7
  %i.k = load i8, ptr %i.f, align 1, !alias.scope !181
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.j, ptr %i.l, align 2, !alias.scope !181
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.k, ptr %i.m, align 1, !alias.scope !181
  store i8 0, ptr %i.c, align 8, !alias.scope !181
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.n, align 4, !alias.scope !181
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !184
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !182, !noundef !7 ; 2 uses
  %i.s = icmp ult i64 %i.r, 115292150460684698
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !182, !noundef !7 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !185
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 88, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !185
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !186
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 89, ptr %.sroa.55.0..sroa_idx, align 8, !noalias !186
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.x, align 8, !noalias !183
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.r, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !183
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.u, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !183
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %2 = load <2 x i16>, ptr %i.c, align 8, !alias.scope !182
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !183
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !187, !noundef !7 ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !range !10, !alias.scope !187, !noundef !7
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.e, !noalias !188

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.g unwind label %bb.f, !noalias !184

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !184
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !187, !nonnull !7, !noundef !7
  %i.ah = getelementptr inbounds nuw [160 x i8], ptr %i.ag, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !184
  %i.ai = add i64 %i.aa, 1
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !183
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 92, ptr %i.aj, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit, %bb.b
  %storemerge = phi i64 [ -9223372036854775805, %bb.b ], [ -9223372036854775808, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter11close_after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !189 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ne i8 %i.e, 10
  %or.cond.not = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 49)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -9223372036854775806, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter11close_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !194 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i8, ptr %i.c, align 8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !12, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, %i.d
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !195
  store i64 2, ptr %i.b, align 8, !noalias !195
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 49, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !196
  store i64 2, ptr %i.a, align 8, !noalias !196
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 50, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !196
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 93, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -9223372036854775807, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter11content_end(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !208 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 13 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !7
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.e, label %bb.j, !prof !9

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit, %bb.c
  %storemerge = phi i64 [ -9223372036854775805, %bb.c ], [ -9223372036854775808, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  store i64 2, ptr %i.b, align 8, !noalias !209
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 105, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.k = load i8, ptr %i.d, align 8, !range !12, !alias.scope !210, !noundef !7
  %i.l = load i8, ptr %i.g, align 1, !alias.scope !210
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.k, ptr %i.m, align 2, !alias.scope !210
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.l, ptr %i.n, align 1, !alias.scope !210
  store i8 0, ptr %i.d, align 8, !alias.scope !210
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.o, align 4, !alias.scope !210
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !213
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !211, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %i.s, 115292150460684698
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !211, !noundef !7 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !214
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 88, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !214
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.x, align 8, !noalias !215
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 89, ptr %.sroa.54.0..sroa_idx, align 8, !noalias !215
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.y, align 8, !noalias !212
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.s, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !212
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.v, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !212
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %2 = load <2 x i16>, ptr %i.d, align 8, !alias.scope !211
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !212
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !216, !noundef !7 ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8, !range !10, !alias.scope !216, !noundef !7
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.g, !noalias !217

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.i unwind label %bb.h, !noalias !213

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !213
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ae

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !216, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !213
  %i.aj = add i64 %i.ab, 1
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 92, ptr %i.ak, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @13, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter13content_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !220 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ne i8 %i.f, 10
  %or.cond.not = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  store i64 2, ptr %i.a, align 8, !noalias !221
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 48, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ 90, %bb.b ], [ 91, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.h, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter13open_sequence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !231 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %i.c
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !7 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %i.k, 1
  store i64 %i.m, ptr %i.j, align 8
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.n = load i8, ptr %i.d, align 8, !range !12, !alias.scope !232, !noundef !7
  %i.o = load i8, ptr %i.g, align 1, !alias.scope !232
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.n, ptr %i.p, align 2, !alias.scope !232
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.o, ptr %i.q, align 1, !alias.scope !232
  store i8 0, ptr %i.d, align 8, !alias.scope !232
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.r, align 4, !alias.scope !232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 86, ptr %i.s, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.j, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 50)
  %i.t = load i8, ptr %i.d, align 8, !range !12, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8
  store i64 0, ptr %i.j, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.g, align 1, !noundef !7
  switch i8 %i.v, label %bb.g [
    i8 9, label %bb.h
    i8 32, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 87, ptr %i.w, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !235
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 87, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775805, ptr %i.x, align 8, !noalias !236
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.y, align 8, !noalias !234
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 2, ptr %.sroa.2.0..sroa_idx1.i, align 2, !noalias !234
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !237, !noundef !7 ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8, !range !10, !alias.scope !237, !noundef !7
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.i, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.j, !noalias !238

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.l unwind label %bb.k, !noalias !239

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !239
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ae

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !237, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !239
  %i.aj = add i64 %i.ab, 1
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 345, ptr %i.ap, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit, %bb.g, %bb.c
  %.sink = phi i64 [ -9223372036854775805, %bb.e ], [ -9223372036854775807, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ], [ -9223372036854775807, %bb.g ], [ -9223372036854775808, %bb.c ]
  store i64 %.sink, ptr %0, align 8
end_hunk_1
begin_hunk_2_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter5start:bb.a
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !270
  store i64 2, ptr %i.c, align 8, !noalias !270
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 47, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !271
  store i64 2, ptr %i.b, align 8, !noalias !271
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 49, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  store i64 2, ptr %i.a, align 8, !noalias !272
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 50, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 86, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775805, %bb.a ], [ -9223372036854775805, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct20partial_space_or_tab5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !275 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %.not = icmp ne i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !12
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1, !noundef !7
  switch i8 %i.i, label %bb.i [
    i8 9, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.k = load i8, ptr %i.j, align 8, !range !276, !noundef !7 ; 2 uses
  %.not1 = icmp eq i8 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.m = load i8, ptr %i.l, align 1, !range !15, !noundef !7 ; 2 uses
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.k, ptr %i.o, align 8
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef range(i8 0, -85) %i.m, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !277
  store i64 2, ptr %i.a, align 8, !noalias !277
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef range(i8 0, -85) %i.m, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !277
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 404 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !12, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.p, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 3 uses
  %i.u = icmp ult i64 %i.t, 115292150460684698
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nsw i64 %i.t, -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize4link(ptr noalias noundef nonnull align 8 %i.x, i64 noundef %i.t, i64 noundef %i.v)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.b
  %.sink = phi i16 [ 347, %bb.a ], [ 347, %bb.b ], [ 346, %bb.h ], [ 346, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.y, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct20partial_space_or_tab6inside(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !280 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noundef !7
  switch i8 %i.e, label %bb.c [
    i8 9, label %bb.d
    i8 32, label %bb.e
  ]

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.g = load i8, ptr %i.f, align 1, !range !15, !noundef !7
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.g)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.p = load i64, ptr %i.o, align 8, !noundef !7
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.r = load i8, ptr %i.a, align 8, !range !12, !alias.scope !281, !noundef !7
  %i.s = load i8, ptr %i.d, align 1, !alias.scope !281
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.r, ptr %i.t, align 2, !alias.scope !281
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.s, ptr %i.u, align 1, !alias.scope !281
  store i8 0, ptr %i.a, align 8, !alias.scope !281
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.v, align 4, !alias.scope !281
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !7
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sink = phi i16 [ 346, %bb.f ], [ 347, %bb.c ]
  %storemerge = phi i64 [ -9223372036854775808, %bb.f ], [ -9223372036854775807, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.z, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item10cont_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !289 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !292
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !290, !noundef !7 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !290, !noundef !7 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !293
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 262, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !294
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 263, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !294
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %i.l, align 8, !noalias !291
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !291
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !291
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %2 = load <2 x i16>, ptr %i.b, align 8, !alias.scope !290
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !291
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !295, !noundef !7 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !10, !alias.scope !295, !noundef !7
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit unwind label %bb.c, !noalias !296

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.e unwind label %bb.d, !noalias !292

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !292
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !295, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !292
  %i.w = add i64 %i.o, 1
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 11, ptr %i.x, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item10whitespace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !304 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !307
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 260, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !307
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !308
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.c, align 8, !noalias !306
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 2, ptr %.sroa.2.0..sroa_idx1.i, align 2, !noalias !306
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !309, !noundef !7 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !10, !alias.scope !309, !noundef !7
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.c, !noalias !310

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.e unwind label %bb.d, !noalias !311

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !311
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !309, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw [160 x i8], ptr %i.l, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !311
  %i.n = add i64 %i.f, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 4, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 345, ptr %i.t, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item12marker_after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) initializes((360, 368)) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !319 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 1, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !322
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !320, !noundef !7 ; 2 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !320, !noundef !7 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !323
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 256, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !323
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.l, align 8, !noalias !324
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 257, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !324
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %i.m, align 8, !noalias !321
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.g, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !321
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.j, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !321
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %2 = load <2 x i16>, ptr %i.c, align 8, !alias.scope !320
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !321
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !325, !noundef !7 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !range !10, !alias.scope !325, !noundef !7
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit unwind label %bb.c, !noalias !326

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.e unwind label %bb.d, !noalias !322

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !322
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !325, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.v, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !322
  %i.x = add i64 %i.p, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 11, ptr %i.y, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item12prefix_other(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !331 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !7
  switch i8 %i.f, label %bb.d [
    i8 9, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  store i64 2, ptr %i.a, align 8, !noalias !332
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef -92, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.g = load i8, ptr %i.b, align 8, !range !12, !alias.scope !333, !noundef !7
  %i.h = load i8, ptr %i.e, align 1, !alias.scope !333
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.g, ptr %i.i, align 2, !alias.scope !333
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.h, ptr %i.j, align 1, !alias.scope !333
  store i8 0, ptr %i.b, align 8, !alias.scope !333
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.k, align 4, !alias.scope !333
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -92)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 256, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775808, %bb.c ], [ -9223372036854775805, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item14before_ordered(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !338 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !339
  store i64 2, ptr %i.b, align 8, !noalias !339
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 109, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  store i64 2, ptr %i.a, align 8, !noalias !340
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 110, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 253, ptr %i.c, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item16before_unordered(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 !guid !343 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  store i64 2, ptr %i.a, align 8, !noalias !344
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 109, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 254, ptr %i.b, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item19marker_after_filled(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) initializes((360, 368)) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !352 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 0, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !355
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !353, !noundef !7 ; 2 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !353, !noundef !7 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !356
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 256, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !356
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.l, align 8, !noalias !357
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 259, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !357
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.m, align 8, !noalias !354
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.g, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !354
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.j, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !354
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %2 = load <2 x i16>, ptr %i.c, align 8, !alias.scope !353
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !354
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !358, !noundef !7 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !range !10, !alias.scope !358, !noundef !7
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.c, !noalias !359

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.e unwind label %bb.d, !noalias !355

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !355
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !358, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.v, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !355
  %i.x = add i64 %i.p, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 258, ptr %i.y, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item5after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !364 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.e, 1                      ; 3 uses
  store i64 0, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 653
  %i.h = load i8, ptr %i.g, align 1, !range !12
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.m = load i64, ptr %i.l, align 8, !noundef !7 ; 5 uses
  %i.n = icmp ult i64 %i.m, 115292150460684698
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.m, -1
  %i.p = tail call noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.v = load i64, ptr %i.u, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = icmp ult i64 %i.p, %i.m
  br i1 %i.w, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit
  %storemerge = phi i64 [ -9223372036854775806, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %i.y, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !7 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !7 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %bb.k

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.am = zext i1 %i.f to i64
  %i.an = add i64 %i.ac, %i.am
  %i.ao = add i64 %i.an, %i.ae
  %spec.select = add i64 %i.ao, %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !7, !noundef !7
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.at = zext i1 %i.f to i8
  store i8 %i.at, ptr %i.as, align 1
  store i64 %spec.select, ptr %i.ar, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 109)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 5, ptr %i.a, align 1, !noalias !365
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !365, !nonnull !7, !noundef !7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !365, !noundef !7 ; 6 uses
  %i.ay = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown7resolve4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax), !noalias !365
  br i1 %i.ay, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.ba = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.az, align 8, !range !10, !alias.scope !366, !noundef !7
  %i.bc = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
  %.pre.i = load ptr, ptr %i.au, align 8, !alias.scope !366
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi ptr [ %.pre.i, %bb.h ], [ %i.av, %bb.g ] ; 3 uses
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %i.bd, i64 %i.ax, i1 false)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i: ; preds = %bb.j, %bb.i
  store i8 5, ptr %i.bd, align 1
  %i.bf = add nuw i64 %i.ax, 1
  store i64 %i.bf, ptr %i.aw, align 8, !alias.scope !366
  br label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit: ; preds = %bb.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !376 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !align !8, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.h = load i8, ptr %i.g, align 1, !range !12, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !377
  store i64 2, ptr %i.b, align 8, !noalias !377
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 107, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !377
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit
  %.sink3 = phi i16 [ 345, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ], [ 250, %bb.d ], [ 250, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink3, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
end_hunk_2
