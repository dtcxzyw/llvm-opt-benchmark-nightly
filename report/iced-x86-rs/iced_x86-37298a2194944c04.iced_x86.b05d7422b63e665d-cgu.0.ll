Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMsz_NtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers6legacyNtB5_16OpCodeHandler_Ew6decode:bb.a
  %i.l = load i32, ptr %i.k, align 4, !noundef !21 ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = icmp ult i32 %i.l, 24
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 24, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i8, ptr %i.s, align 4, !range !44, !noundef !21
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !32

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.c
  %i.w = load i32, ptr %i.v, align 4, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !noundef !21
  %i.z = add i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !21
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %i.ad, ptr %i.ae, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs6_NtCsf8MNnN4IDbl_8iced_x867decoderNtB5_7Decoder14read_op_mem_16(ptr noalias nofree noundef align 8 dereferenceable(464) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2, i8 noundef 0) #44
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.af = tail call noundef zeroext i1 %i.q(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %1) ; 0 uses
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 0, 249) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread, label %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit

_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #41 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #46
  unreachable

bb.c:                                             ; preds = %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal12with_maskmov(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef %5) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  switch i32 %2, label %bb.b [
    i32 64, label %bb.e
    i32 32, label %bb.c
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @584, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.511.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.3.0 = phi i8 [ 18, %bb.d ], [ 19, %bb.c ], [ 20, %bb.a ]
  %i.b = icmp eq i8 %5, 0
  %i.c = shl i8 %5, 5
  %i.d = add i8 %i.c, 64
  %narrow = select i1 %i.b, i8 0, i8 %i.d
  %.sroa.012.0 = zext i8 %narrow to i32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i24 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.012.0, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %3, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %4, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.142.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal21get_immediate_op_kind(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i16 noundef range(i16 0, 4936) %1, i64 noundef range(i64 0, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB6_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.c, align 8
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB6_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 8) acquire, align 8, !noalias !12289
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB2_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12289
  store ptr %i.c, ptr %i.b, align 8, !noalias !12289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12289
  store ptr %i.b, ptr %i.a, align 8, !noalias !12289
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB6_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12289
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB2_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit

_RNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB2_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = zext nneg i16 %1 to i64
  %i.m = load ptr, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB6_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, align 8, !nonnull !21, !noundef !21
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !21
  %i.s = load i64, ptr %i.i, align 8, !noundef !21 ; 6 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %bb.c, label %.split

.split:                                           ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB2_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.u = zext nneg i16 %1 to i32
  store i32 %i.u, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = add i64 %i.s, 1
  store i64 %i.v, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.w, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @585, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.c:                                             ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x867encoder14handlers_tableNtB2_14HANDLERS_TABLENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  %i.x = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.s ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !21, !nonnull !21
  %i.ae = call noundef i8 %i.ad(ptr noundef nonnull %i.z) #45 ; 3 uses
  %.not = icmp eq i8 %i.ae, -1
  br i1 %.not, label %.split28, label %bb.e

bb.d:                                             ; preds = %.split28, %9, %bb.f, %.split
  ret void

bb.e:                                             ; preds = %bb.c
  %i.af = icmp eq i8 %i.ae, 6
  %i.ag = icmp ne i64 %i.s, 0
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.g, label %bb.f

.split28:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = zext nneg i16 %1 to i32
  store i32 %i.ah, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ai, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @586, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ae, ptr %i.aj, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ak = add nuw i64 %i.s, 1                     ; 2 uses
  %3 = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.al = load i64, ptr %i.q, align 8, !noundef !21
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %4, label %bb.f

4:                                                ; preds = %bb.g
  %5 = add i64 %i.s, -1                           ; 2 uses
  %6 = icmp ult i64 %5, %i.ak
  br i1 %6, label %bb.h, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %8, align 8
  br label %9

bb.h:                                             ; preds = %4
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %5 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !21, !noundef !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !21, !nonnull !21
  %i.at = call noundef i8 %i.as(ptr noundef nonnull %i.ao) #45
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i8 %i.at, label %10 [
    i8 8, label %11
    i8 6, label %11
  ]

9:                                                ; preds = %10, %11, %7
  store i64 -2, ptr %0, align 8
  br label %bb.d

10:                                               ; preds = %bb.h
  store i8 6, ptr %i.au, align 8
  br label %9

11:                                               ; preds = %bb.h, %bb.h
  store i8 7, ptr %i.au, align 8
  br label %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal21with_string_esrdi_reg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i8 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #14 personality ptr @rust_eh_personality {
switch.lookup:
  %switch.idx.cast = zext nneg i8 %4 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 29
  switch i32 %2, label %bb.a [
    i32 64, label %bb.d
    i32 32, label %bb.b
    i32 16, label %bb.c
  ]

bb.a:                                             ; preds = %switch.lookup
  store i64 -1, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @584, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.512.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.a, align 8
  br label %bb.e

bb.b:                                             ; preds = %switch.lookup
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.sroa.3.0 = phi i8 [ 21, %bb.c ], [ 22, %bb.b ], [ 23, %switch.lookup ]
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i24 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %switch.idx.mult, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %3, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 0, ptr %.sroa.15.0..sroa_idx, align 2
  %.sroa.153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.153.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal21with_string_reg_esrdi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i8 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #14 personality ptr @rust_eh_personality {
switch.lookup:
  %switch.idx.cast = zext nneg i8 %4 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 29
  switch i32 %2, label %bb.a [
    i32 64, label %bb.d
    i32 32, label %bb.b
    i32 16, label %bb.c
  ]

bb.a:                                             ; preds = %switch.lookup
  store i64 -1, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @584, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.513.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.a, align 8
  br label %bb.e

bb.b:                                             ; preds = %switch.lookup
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.sroa.4.0 = phi i8 [ 21, %bb.c ], [ 22, %bb.b ], [ 23, %switch.lookup ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %switch.idx.mult, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %3, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i24 0, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.153.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal22with_string_reg_segrsi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #14 personality ptr @rust_eh_personality {
switch.lookup:
  %switch.idx.cast = zext nneg i8 %5 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 29
  switch i32 %2, label %bb.a [
    i32 64, label %bb.d
    i32 32, label %bb.b
    i32 16, label %bb.c
  ]

bb.a:                                             ; preds = %switch.lookup
  store i64 -1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @584, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.514.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.a, align 8
  br label %bb.e

bb.b:                                             ; preds = %switch.lookup
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.sroa.4.0 = phi i8 [ 15, %bb.c ], [ 16, %bb.b ], [ 17, %switch.lookup ]
  %i.b = icmp eq i8 %4, 0
  %i.c = shl i8 %4, 5
  %i.d = add i8 %i.c, 64
  %narrow = select i1 %i.b, i8 0, i8 %i.d
  %i.e = zext i8 %narrow to i32
  %.sroa.015.0 = or disjoint i32 %switch.idx.mult, %i.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.015.0, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %3, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i24 0, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.174.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal24with_string_esrdi_segrsi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i32 noundef %2, i8 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #14 personality ptr @rust_eh_personality {
switch.lookup:
  %switch.idx.cast = zext nneg i8 %4 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 29
  switch i32 %2, label %bb.a [
    i32 64, label %bb.d
    i32 32, label %bb.b
    i32 16, label %bb.c
  ]

bb.a:                                             ; preds = %switch.lookup
  store i64 -1, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @584, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.511.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.a, align 8
  br label %bb.e

bb.b:                                             ; preds = %switch.lookup
  br label %bb.d

bb.c:                                             ; preds = %switch.lookup
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.sroa.7.0 = phi i8 [ 15, %bb.c ], [ 16, %bb.b ], [ 17, %switch.lookup ]
  %.sroa.3.0 = phi i8 [ 21, %bb.c ], [ 22, %bb.b ], [ 23, %switch.lookup ]
  %i.b = icmp eq i8 %3, 0
  %i.c = shl i8 %3, 5
  %i.d = add i8 %i.c, 64
  %narrow = select i1 %i.b, i8 0, i8 %i.d
end_hunk_0
